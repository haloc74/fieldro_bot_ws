
#include "wago.h"
#include "define/unit_define.h"
#include "define/unit_action_define.h"
#include "helper/helper.h"
#include <trash_bot/IOSignal.h>
#include <trash_bot/UnitAliveMsg.h>
#include <trash_bot/UnitActionComplete.h>


namespace fieldro_bot
{
  Wago::Wago()
  {
    _node_handle  = new ros::NodeHandle();     // node handler 생성
    _shut_down    = false;

    // alive message 발송을 위한 publisher 생성 및 link
    _publish_alive = _node_handle->advertise<trash_bot::UnitAliveMsg>("trash_bot/UnitAliveMsg", 100);

    // unit control message 수신을 위한 subscriber 생성 및 link
    _subscribe_unit_control = _node_handle->subscribe("trash_bot/unit_control", 100, &Wago::subscribe_unit_control, this);

    // unit control message 처리 결과 발송을 위한 publisher 생성 및 link
    _publish_unit_action_complete = _node_handle->advertise<trash_bot::UnitActionComplete>("trash_bot/action_complete", 100);

    // publisher 생성 및 link
    ros::AdvertiseOptions option = 
      ros::AdvertiseOptions::create<trash_bot::IOSignal>("trash_bot/io_signal", 100,
                                                              ros::SubscriberStatusCallback(),
                                                              ros::SubscriberStatusCallback(),
                                                              ros::VoidPtr(),
                                                              nullptr);
    option.latch = true;
    _publish_io_signal = _node_handle->advertise(option);

    

    // spinner 생성 및 구동
    _spinner = new ros::AsyncSpinner(1);
    _spinner->start();

    _last_update_time = ros::Time::now();
    _last_alive_time  = ros::Time::now();

    _state = static_cast<int>(fieldro_bot::UnitState::InitReady);

    // io signal map 생성
    create_io_map();

    // modbus wrapper 생성
    _modbus = new ModbusWrapper(ModbusType::TCP, "config/io.yaml", "comm", nullptr);

    // main thread
    _thread_info = new ThreadActionInfo("config/io.yaml", "main");
    _thread_info->_active = true;
    _thread_info->_thread = std::thread(std::bind(&Wago::update, this));
  }

  Wago::~Wago()
  {
    // modbus 해제
    safe_delete(_modbus);

    // thread 해제
    _thread_info->_active = false;
    safe_delete(_thread_info);

    // io signal map 해제
    delete_io_map();

    // spinner 해제
    _spinner->stop();
    safe_delete(_spinner);

    // node 해제
    _node_handle->shutdown();
    safe_delete(_node_handle);
  }

  void Wago::system_finish()
  {
    _shut_down = true;
  } 

  /**
  * @brief      main thread update 함수
  * @param[in]  void
  * @return     void
  * @note       
  */
  void Wago::update()
  {
    while(_thread_info->_active)
    {
      if(_modbus->connect_check() != CommStatus::Connect)
      {
        continue;
      }

      read_di_signal();     // digital input signal read
      publish_alive();      // 상태보고 (heartbeat)

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_thread_info->_sleep));
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

    int32_t read_len = di_to_int(fieldro_bot::DISignal::END) - 1;
    uint8_t signal[IO_MAX_COUNT];  // 읽은 data를 저장할 변수
    memset(signal, 0x00, IO_MAX_COUNT);

    // 실제 index 0 data의 값을 signal[1]에 저장
    //size_t read_bits = _modbus->read_data(0, read_len, signal+1);
    fieldro_bot::Error error = _modbus->read_data_bits(0, read_len, signal+1);

    if(error != fieldro_bot::Error::None)
    {
      LOG->add_log(fieldro_bot::Unit::Signal, fieldro_bot::LogLevel::Error, error_to_int(error), "Read DI Signal Error");
      return;
    }
    update_di_signal(signal);
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


    for(int i=0; i<di_to_int(fieldro_bot::DISignal::COUNT); ++i)
    {
      if(_signal[i] == nullptr)   continue;

      if(_signal[i]->update_value(signal[i], log_string, on))
      {
        // 변경 로그 남기기
        LOG->add_log(fieldro_bot::Unit::Signal, fieldro_bot::LogLevel::Info, 0, log_string+std::string(" : ")+std::to_string(on)); 
        
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
}

