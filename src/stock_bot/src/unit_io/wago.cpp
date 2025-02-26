
#include "wago.h"

//#include <fieldro_lib/define/unit_define.h>
#include <fieldro_lib/define/unit_action_define.h>
#include <fieldro_lib/define/unit_state.h>
#include <fieldro_lib/helper/helper.h>

#include <fieldro_msgs/IOSignal.h>
#include <fieldro_msgs/UnitAliveMsg.h>
#include <fieldro_msgs/UnitActionComplete.h>
#include "package/unit_define.h"

namespace frb
{
  Wago::Wago(std::string msg_space, std::string config_file, std::string session)
       : Unit(msg_space, config_file, session) 
  {
    load_option(config_file);

    //_name   = UnitName::Signal;
    _name   = frb::to_string(frb::UnitName::Signal);
    _unit_index = frb::to_int(frb::UnitName::Signal);

    _name       = frb::to_string(frb::UnitName::Signal);
    _unit_index = frb::to_int(frb::UnitName::Signal);


    _action = UnitAction::None;
    _state  = frb::UnitState::Created;
    
    // unit action message 수신을 위한 subscriber 생성 및 link
    _subscribe_unit_action = 
    _node_handle->subscribe(msg_space+"/unit_control", 50, &Wago::subscribe_unit_action, this);

    // unit action message 처리 결과 발송을 위한 publisher 생성 및 link
    _publish_unit_action_complete = 
    _node_handle->advertise<fieldro_msgs::UnitActionComplete>(msg_space+"/action_complete", 10);

    // publisher 생성 및 link
    // io message는 아주 중요한 정보이므로 latch를 true로 설정하여 
    // 나중에 subscriber가 생성되는 node도 마지막(최신) 정보를 받을 수 있도록 한다.
    ros::AdvertiseOptions option = 
      ros::AdvertiseOptions::create<fieldro_msgs::IOSignal>(msg_space+"/io_signal", 20,
                                                              ros::SubscriberStatusCallback(),
                                                              ros::SubscriberStatusCallback(),
                                                              ros::VoidPtr(),
                                                              nullptr);
    option.latch = true;
    _publish_io_signal = _node_handle->advertise(option);

    // spinn 구동 (생성은 Unit Class 담당)
    _spinner->start();

    _last_publish_time = ros::Time::now();

    _state = frb::UnitState::Created;

    // io signal map 생성
    create_io_map();

    // modbus wrapper 생성
    _modbus = new ModbusWrapper(ModbusType::TCP, "config/io.yaml", "comm", nullptr);

    // main update thread
    _update_thread = new ThreadActionInfo("config/io.yaml", "main");
    _update_thread->_thread = std::thread(std::bind(&Wago::update, this));
  }

  Wago::~Wago()
  {
    // IO 출력을 모두 해제한다.
    for(int i=0; i<to_int(frb::DOSignal::END); ++i)
    {
      write_do_signal(i, 0);
      usleep(100000);
    }

    // modbus 해제
    safe_delete(_modbus);

    // thread 해제
    _update_thread->_active = false;
    safe_delete(_update_thread);

    // io signal map 해제
    delete_io_map();
  }


  /**
  * @brief      main thread update 함수
  * @param[in]  void
  * @return     void
  * @note       
  */
  void Wago::update()
  {
    while(_update_thread->_active)
    {
      if(_modbus->connect_check() != CommStatus::Connect)
      {
        continue;
      }

      read_di_signal();     // digital input signal read

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_update_thread->_sleep));
    }  
  }

  /**
  * @brief      digital input signal을 읽는 함수
  * @param[in]  void
  * @return     void 
  * @note       함수를 호출하는 쪽에서 연결 체크는 끝났으므로 다시 할 필요는 없다.
  */
  void Wago::read_di_signal()
  {
    std::lock_guard<std::mutex> lock(_lock);

    int32_t read_len = to_int(frb::DISignal::END) - 1;
    uint8_t signal[IO_MAX_COUNT];  // 읽은 data를 저장할 변수
    memset(signal, 0x00, IO_MAX_COUNT);

    // 실제 index 0 data의 값을 signal[1]에 저장
    //size_t read_bits = _modbus->read_data(0, read_len, signal+1);
    frb::Error error = _modbus->read_data_bits(0, read_len, signal+1);

    if(error != frb::Error::None)
    {
      LOG->add_log(_name, 
                    frb::LogLevel::Error, 
                    frb::to_int(error), 
                    "Read DI Signal Error");
      return;
    }

    update_di_signal(signal);
  }
  void Wago::write_do_signal(int32_t address, int value)
  {
    std::lock_guard<std::mutex> lock(_lock);

    frb::Error error = _modbus->write_data_bits(address, value);

    if(error != frb::Error::None)
    {
      LOG->add_log(_name, 
                    frb::LogLevel::Error, 
                    frb::to_int(error), 
                    "Write DO Signal Error");
    }
  }

  /**
  * @brief      digital input signal을 업데이트 하는 함수
  * @param[in]  signal : 현재 signal의 상태
  * @return     void
  * @note       이전 signal과 비교하여 변경이 있을 경우에만 msg publish 한다.
  * @todo       변경 사항이 있을 경우에는 즉시 발송을 하고 변경 사항이 없을 경우에도 
  *             일정 시간마다 발송을 하도록 개선을 하자. 
  *             - interval option 추가.
  *             - broadcast function 추가.
  */
  void Wago::update_di_signal(const uint8_t* const signal)
  {
    std::string log_string  = "";
    bool        on          = false;
    bool        update      = false;
    int64_t     signal_bit  = 0;


    for(int i=0; i<to_int(frb::DISignal::COUNT); ++i)
    {
      if(_signal[i] == nullptr)   continue;

      if(_signal[i]->update_value(signal[i], log_string, on))
      {
        // 변경 로그 남기기
        LOG->add_log(_name, frb::LogLevel::Info, 0, log_string+std::string(" : ")+std::to_string(on)); 
        
        update = true;
      }

      // signal bit 생성
      if(_signal[i]->is_on())
      {
        signal_bit |= (1 << i);
      }
    }

    // sensor signal data 발송
    publish_io_signal(signal_bit, update);
  }

  void Wago::load_option(std::string config_file)
  {
    try
    {
      std::ifstream yaml_file(config_file);
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      // io signal publish 주기 옵션 설정
      int32_t hz = yaml["main"]["io_signal_publish_hz"].as<int32_t>();
      _publish_io_signal_period = (1.0/static_cast<double>(hz));
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
}

