
#include "loader.h"

#include "helper/helper.h"
#include "define/digital_in_define.h"
#include <trash_bot/UnitActionComplete.h>


namespace fieldro_bot
{
  Loader::Loader(std::string config_file, std::string session) 
          : Unit(config_file, session)
  {
    load_option(config_file);           // option load     
    initialize_signal_data();           // signal data 초기화

    _name   = UnitName::Loader;
    _action = UnitAction::None;
    _state  = fieldro_bot::UnitState::Created;

    // unit action message 수신을 위한 subscriber 생성 및 link
    _subscribe_unit_action =
    _node_handle->subscribe("trash_bot/unit_control", 10, &Loader::subscribe_unit_action, this);

    // unit action message 처리 결과 발송을 위한 publisher 생성 및 link
    _publish_unit_action_complete =
    _node_handle->advertise<trash_bot::UnitActionComplete>("trash_bot/action_complete", 10);

    // io signal message 수신을 위한 subscriber 생성 및 link
    // trash_bot::IOSignal
    _subscribe_iosignal =
    _node_handle->subscribe("trash_bot/io_signal", 10, &Loader::subscribe_iosignal, this);

    // spinn 구동 (생성은 Unit Class 담당)
    _spinner->start();

    // motor 객체 생성
    _motor = new ELD2_RS7020B(std::bind(&Loader::action_complete_notify, 
                                        this, 
                                        std::placeholders::_1),
                              std::bind(&Unit::log_msg, 
                                        this, 
                                        std::placeholders::_1, 
                                        std::placeholders::_2,
                                        std::placeholders::_3),
                              "config/loader.yaml");    

    // main update thread
    _update_thread = new ThreadActionInfo("config/loader.yaml", "main");
    _update_thread->_active = true;
    _update_thread->_thread = std::thread(std::bind(&Loader::update, this));   
  }

  Loader::~Loader()
  {
    // motor 해제
    safe_delete(_motor);

    // main update thread 종료
    _update_thread->_active = false;
    safe_delete(_update_thread);
  }

  // virtual 
  void Loader::update()
  {
    while(_update_thread->_active)
    {
      // todo : motor update
      
      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_update_thread->_sleep));
    }
  }



  // virtual 
  void Loader::load_option(std::string config_file)
  {
    try
    {
      std::ifstream yaml_file(config_file);
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

    }
    catch(YAML::Exception& e)
    {
      std::cout << "YAML Exception : " << e.what() << std::endl;
    }
    catch(std::exception& e)
    {
      std::cout << "Exception : " << e.what() << std::endl;
    }
    catch(...)
    {
      std::cout << "Unknown Exception" << std::endl;
    }    
  }

  void Loader::initialize_signal_data()
  {
    for(int i=0; i<(int)DISignal::END; ++i)
    {
      _sensor[i] = __INT8_MAX__;
    }
  }

  bool Loader::is_controllable()
  {
    return false;
  }

  /**
  * @brief      sensor data가 update 되었는지 확인 (기존과 달라졌는지)
  * @param[in]  sensor      : sensor index
  * @param[in]  signal_bit  : topic으로 전달 된 sensor data
  * @return     true        : sensor data가 변경 되었는지 여부
  */
  bool Loader::update_sensor_data(DISignal sensor, int64_t signal_bit)
  {
    if(check_io_sensor((int)sensor, signal_bit) != _sensor[(int)sensor])
    {
      _sensor[(int)sensor] = check_io_sensor((int)sensor, signal_bit);       
      return true;
    }

    return false;
  }
}