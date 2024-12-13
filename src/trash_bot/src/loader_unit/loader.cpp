
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

    // position data 초기화
    _fall_position   = INT32_MAX;
    _raise_position  = INT32_MAX;
    _middle_position = INT32_MAX;

    // sensor data중 loader와 관련된 곳만 마스킹
    // digital_in_define.h 참조
    _sensor_data_update_mask = 0x00;
    _sensor_data_update_mask |= (1 << (int)DISignal::LoaderFall);
    _sensor_data_update_mask |= (1 << (int)DISignal::LoaderRaise);


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

  /**
  * @brief      
  * @param[in]  
  * @return     
  * @note       
  */
  bool Loader::confirm_active_position()
  {
    if(_fall_position == INT32_MAX)   return false;
    if(_raise_position == INT32_MAX)  return false;    

    // 중간 위치 설정
    _middle_position  = (_fall_position + _raise_position) / 2;

    // loader 상태 변경
    _state = UnitState::Idle;

    return true;
  }

  /**
  * @brief      loader fall action 수행
  * @attention  _fall_position의 설정 여부에 따라 수행 방법을 달리 해야 한다.
  *             _fall_position == INT32_MAX : 저속으로 fall_limit sensor까지 이동
  *             _fall_position != INT32_MAX : 일반속도로 _fall_position까지 이동         
  */
  void Loader::execute_fall_action()
  {
    if(!is_controlable())
    {
      Unit::log_msg(LogInfo, static_cast<int32_t>(fieldro_bot::Error::Busy), "Loader is busy");
      return;
    }

    if(_fall_position == INT32_MAX)
    {
      // 저속으로 fall_limit sensor까지 이동
      _motor->control_move(0, _action_rpm/2, CHECK_NONE, TIMEOUT_NONE);
    }
    else
    {
      // 일반속도로 _fall_position까지 이동
      _motor->control_move(_fall_position, _action_rpm, _action_check, _action_timeout);
    }

    return;
  }

  /**
  * @brief      loader raise action 수행
  * @attention  _raise_position의 설정 여부에 따라 수행 방법을 달리 해야 한다.
  *             _raise_position == INT32_MAX : 저속으로 raise_limit sensor까지 이동
  *             _raise_position != INT32_MAX : 일반속도로 _raise_position까지 이동                
  */
  void Loader::execute_raise_action()
  {
    if(!is_controlable())
    {
      log_msg(LogInfo, static_cast<int32_t>(fieldro_bot::Error::Busy), "Loader is busy");
      return;
    }

    if(_raise_position == INT32_MAX)
    {
      // 저속으로 raise_limit sensor까지 이동
      _motor->control_move(INT32_MAX, _action_rpm/2, CHECK_NONE, TIMEOUT_NONE);
    }
    else
    {
      // 일반속도로 _raise_position까지 이동
      _motor->control_move(_raise_position, _action_rpm, _action_check, _action_timeout);
    }
    return;
  }


  /**
  * @brief      loader option load
  * @param[in]  std::string config_file : loader option 설정 파일
  * @note       
  */
  void Loader::load_option(std::string config_file)
  {
    try
    {
      std::ifstream yaml_file(config_file);
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      _safety_distance  = yaml["safety_distance"].as<int32_t>();
      _action_rpm       = yaml["action_rpm"].as<int32_t>();
      _action_timeout   = yaml["action_timeout"].as<int32_t>();
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

  /**
  * @brief      sensor data 초기화 
  * @note       현재 sensor 상태 정보 초기화.
  */
  void Loader::initialize_signal_data()
  {
    for(int i=0; i<(int)DISignal::END; ++i)
    {
      _sensor[i] = __INT8_MAX__;
    }
  }

  /**
  * @brief      loader의 동작 가능 여부 확인
  * @return     bool : 동작 가능 여부
  */
  bool Loader::is_controlable()
  {
    if(_action != UnitAction::None)
    {
      return false;
    }
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