
#include "wago.h"
#include "define/unit_define.h"
#include "define/unit_action_define.h"
#include "helper/helper.h"
#include <trash_bot/IOSignal.h>

namespace fieldro_bot
{
  Wago::Wago()
  {
    _node_handle = new ros::NodeHandle();     // node handler 생성

    // subscriber 생성 및 link
    _subscribe_unit_control = _node_handle->subscribe("trash_bot/unit_control", 100, &Wago::subscribe_unit_control, this);

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
    _spinner = new ros::AsyncSpinner(5);
    _spinner->start();

    _last_update_time = ros::Time::now();

    // io signal map 생성
    create_io_map();

    // modbus wrapper 생성
    _modbus = new ModbusWrapper(ModbusType::TCP, "config/config.yaml", "io_signal", nullptr);

    // main thread
    _thread_info = new ThreadActionInfo("config/config.yaml", "io_signal");
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

    // ros 해제
    ros::shutdown();
    ros::waitForShutdown();
    safe_delete(_node_handle);
  }

  void Wago::system_finish()
  {
    // ros 해제
    ros::shutdown();
    ros::waitForShutdown();
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

      // digital input signal read
      read_di_signal();

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_thread_info->_sleep));
    }  
  }



  /**
  * @brief      unit control message를 수신하는 callback 함수
  * @param[in]  unit_control_msg : main control node에서 전달되는 unit control message
  * @return     void
  * @attention  target이 signal이 아닌 메세지는 무시한다.
  * @note       
  */
  void Wago::subscribe_unit_control(const trash_bot::UnitControl& unit_control_msg)
  {
    // target이 signal이 아닌 메세지는 무시한다. 
    fieldro_bot::Unit unit = int_to_unit(unit_control_msg.target_object);

    if(unit != fieldro_bot::Unit::Signal && 
       unit != fieldro_bot::Unit::All)      return;

    // 요청된 action에 따른 처리
    fieldro_bot::UnitAction action = int_to_unit_action(unit_control_msg.action);

    switch(action)
    {       
    case fieldro_bot::UnitAction::None:
      LOG->add_log(fieldro_bot::Unit::Signal, fieldro_bot::LogLevel::Error, 0, "Unit Action None");
      break;
    case fieldro_bot::UnitAction::Finish:  
      system_finish();
      break;

    case fieldro_bot::UnitAction::End:        
      break;

    default:                                  
      break;
    }
  }

  /**
  * @brief      io signal을 발송하는 함수
  * @param[in]  signal : 비트연산 된 전체 IO 신호
  * @note       update가 있거나 마지막 전송 이후 1초가 경과 했다면 발송한다.
  */
  void Wago::publish_io_signal(const int64_t signal_bit, bool update_flag)
  {
    if(!update_flag && ros::Time::now() - _last_update_time < ros::Duration(1.0))
    {
      return;
    }

    // 상시 발송까지 로그를 남기면 너무 커져서 update_flag가 true일 때만 남기도록 한다.
    if(update_flag)
    {
      LOG->add_log(fieldro_bot::Unit::Signal, 
                    fieldro_bot::LogLevel::Info, 
                    0, std::string("Update IO Signal : ")+std::to_string(signal_bit));
    }
 
    trash_bot::IOSignal io_signal_msg;
    io_signal_msg.time_stamp  = ros::Time::now();
    io_signal_msg.signal_bit  = signal_bit;

    _publish_io_signal.publish(io_signal_msg);

    _last_update_time = ros::Time::now();
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

