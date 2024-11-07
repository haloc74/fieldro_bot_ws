

#include "droid.h"
#include "helper/helper.h"
#include "log/log.h"
#include <trash_bot/UnitControl.h>

#include "define/unit_define.h"
#include "define/unit_action_define.h"
#include "define/error_code.h"
 
namespace fieldro_bot
{
  Droid::Droid() : _lock(), _action(_state[static_cast<int>(Unit::System)])
  {
    _action = fieldro_bot::UnitState::InitReady;
    _node_handle = new ros::NodeHandle();       // node handler 생성

    for(int i=0; i<(int)DISignal::END; i++)  
    {
      _sensor[i] = __INT8_MAX__;
    }
    _signal_bit = __INT64_MAX__;

    _subscribe_switch_report =
    _node_handle->subscribe("twinny_robot/SwitchReport", 100, &Droid::subscribe_switch_report, this);

    _subscribe_velocity_control =
    _node_handle->subscribe("twinny_robot/VelControl", 100, &Droid::subscribe_velocity_control, this);

    _subscribe_io_signal = _node_handle->subscribe("trash_bot/io_signal", 100, &Droid::subscribe_io_signal, this);

    _subscribe_action_complete = 
    _node_handle->subscribe("trash_bot/action_complete", 100, &Droid::subscribe_action_complete, this);

    _subscribe_unit_state = _node_handle->subscribe("trash_bot/UnitState", 100, &Droid::subscribe_unit_state, this);

    _publish_unit_control = 
    _node_handle->advertise<trash_bot::UnitControl>("trash_bot/unit_control", 100);

    _control_sequence.clear();
    _pending_sequence.clear();
    _command_map.clear();

    _link_checker = new LinkChecker();  // link checker 객체 생성

    _spinner = new ros::AsyncSpinner(5);        // spinner 생성
    _spinner->start();

    // thread
    _thread_info  = new ThreadActionInfo("config/droid.yaml", "main");
    _thread_info->_active = true;
    _thread_info->_thread = std::thread(std::bind(&Droid::update, this));  

    // 변수 초기화
    _last_io_update_time = ros::TIME_MAX;
    
    // 각 unit 상태 초기화
    for(int i=0; i<(int)Unit::End; i++)
    {
      _state[i] = UnitState::UnConnect;
    }
    _action = fieldro_bot::UnitState::InitReady;

    // // Test : 현재 IO만 연결이 되어 있으므로 나머지는 Ready 상태로 설정하자...
    // update_unit_state(fieldro_bot::Unit::None,    fieldro_bot::UnitState::Ready);
    // update_unit_state(fieldro_bot::Unit::System,  fieldro_bot::UnitState::InitReady);
  }

  // void Droid::update_unit_state(fieldro_bot::Unit unit, fieldro_bot::UnitState state)
  // {
  //   _state[unit_to_int(unit)] = state;
  //   return;
  // }

  Droid::~Droid()
  {
    // todo : unit을 구성하는 전체 node에 객체 소멸에 대한 topic 전송

    // 객체 소멸 topic 메세지 전송을 위한 약간의 시간 대기
    usleep(1000000);

    // thread 해제
    _thread_info->_active = false;
    safe_delete(_thread_info);

    //
    _command_map.clear();
    while(!_control_sequence.empty())
    {
      _control_sequence.pop_front();
    }
    while(!_pending_sequence.empty())
    {
      _pending_sequence.pop_front();
    }

    // ros 해제
    ros::shutdown();
    ros::waitForShutdown();
    safe_delete(_node_handle);
    safe_delete(_link_checker);
  }

  void Droid::system_finish()
  {
    ros::shutdown();
    ros::waitForShutdown();
  }

  void Droid::update()
  {
    while(_thread_info->_active)
    {
      // topic message 발송
      message_publish();

      // link check


      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_thread_info->_sleep));
    }  
  }

  /**
  * @brief      switch report message를 수신하는 callback 함수
  * @param      const twinny_msgs::SwitchReport : switch report message
  * @return     void
  */
  void Droid::subscribe_switch_report(const twinny_msgs::SwitchReport Switch_Check)
  {
    if(Switch_Check.E_STOP_button == true)
    {
      // todo : E_STOP_button 이 눌렸을 때의 처리
    }
    else
    {
      // todo : E_STOP_button 이 눌리지 않았을 때의 처리
    }
  }

  /**
  * @brief      속도 제어 message를 수신하는 callback 함수
  * @param      const geometry_msgs::Twist& twist_msg : 속도 제어 message
  * @return     void
  * @attention  Motor의 회전은 RPM으로 제어가 되므로 
  *             속도를 rmp으로 변환 해야 하는 작업이 필요하다.       
  */
  void Droid::subscribe_velocity_control(const geometry_msgs::Twist &twist_msg)
  {
    return;
  }

  void Droid::subscribe_io_signal(const trash_bot::IOSignal &io_signal_msg)
  {
    _last_io_update_time = ros::Time::now();

    // io unit 초기화 완료로 설정 
    // update_unit_state(fieldro_bot::Unit::Signal, fieldro_bot::UnitState::Ready);
    //update_io_pulse();

    if(_signal_bit == io_signal_msg.signal_bit)    return;

    _signal_bit = io_signal_msg.signal_bit;

    log_msg(LogInfo, 0, "Sensor Update : " + std::to_string(io_signal_msg.signal_bit));                  

    // for(int i=0; i<(int)DISignal::End; ++i)
    // {
    //   if(update_sensor_data((DISignal)i, io_signal_msg.signal_bit))
    //   {
    //      // todo : 해당 센서에 대한 처리를 하자
    //   }
    // }
    return;
  }

  void Droid::subscribe_unit_state(const trash_bot::UnitStateMsg &msg)
  {
    _link_checker->update_data(msg.unit_id);

    // 현재 상태가 WaitForLink 상태이고 모든 link가 연결이 되어 있을 경우
    if(_action == fieldro_bot::UnitState::InitReady && _link_checker->is_all_unit_linked())
    {
      log_msg(LogInfo, 0, "All Unit Linked - Next Step Process");

      _action = fieldro_bot::UnitState::Init;

      // todo 
      // io_node에 초기화 요청 sequence 추가
      add_sequence(unit_to_int(fieldro_bot::Unit::Signal), unit_action_to_int(fieldro_bot::UnitAction::Init));
    }

    return;
  }

  // void Droid::update_io_pulse()
  // {
  //   if(_state[unit_to_int(fieldro_bot::Unit::Signal)] == fieldro_bot::UnitState::UnConnect)
  //   {
  //     update_unit_state(fieldro_bot::Unit::Signal, fieldro_bot::UnitState::InitReady);
  //   }
  //   return;
  // }

  // /**
  // * @brief      io link check
  // * @return     io unit의 link 상태여부 
  // * @note       io_unit node로 부터 3초 이상 메세지 전송이 없을 경우 link error로 판단
  // * @attention  update시간이 ros::TIME_MAX일 경우는 link error가 아닌 것으로 판단
  // */
  // bool Droid::io_link_check()
  // {
  //   if(_last_io_update_time == ros::TIME_MAX)    return true;

  //   if(ros::Time::now() - _last_io_update_time > ros::Duration(2.0))
  //   {
  //     log_msg(LogError, 0, "IO Link Error");

  //     // io unit error 설정
  //     update_unit_state(fieldro_bot::Unit::Signal, fieldro_bot::UnitState::Error);

  //     // todo : link error에 대한 처리
  //     // 1. 모든 unit에게 비상 정지 신호 보내기 
  //     // 2. 

  //     return false;
  //   }

  //   return true;
  // } 

  void Droid::log_msg(LogLevel level, int32_t error_code, std::string log)
  {
    LOG->add_log(fieldro_bot::Unit::System, level, error_code, log);
    return;
  }



  /**
  * @brief      message 발송 여건을 확인하고 message 발송
  * @note       
  */
  void Droid::message_publish()
  {
    if(!_pending_sequence.empty())    return;  // 응답 대기중인 요청이 없을 경우에만 신규 요청 발송
    if(_control_sequence.empty())    return;   // control_sequence에 요소가 있을 경우 발송

    // 실제 메세지 발송      
    publish_unit_control(std::move(_control_sequence.front()));
  }

  /**
  * @brief      unit control message를 발송하는 함수
  * @param[in]  unit_control_msg : AGV를 구성하는 Unit node에 전달되는 control message
  * @return     void
  * @note       unit_control_msg의 time_stamp는 발송 시간으로 변경한다.
  * @attention  발행된 message는 pending_sequence에 저장.
  *             pending_sequence에 저장된 message는 action_complete message를 받아서 삭제된다.
  *             pending_sequence에 요소가 있을 경우 더이상 publish하지 않는다.
  */
  void Droid::publish_unit_control(std::unique_ptr<trash_bot::UnitControl> unit_control_msg)
  {
    std::lock_guard<std::mutex> lock(_lock);

    // time_stamp를 발송 시간으로 변경
    unit_control_msg->time_stamp = ros::Time::now();

    // unit_control_msg 발송 (실제 publish)
    _publish_unit_control.publish(*unit_control_msg);

    // unit_control_msg를 pending_sequence로 이관  
    _pending_sequence.push_back(std::move(unit_control_msg));

    // 요청 대기 리스트에서 삭제
    _control_sequence.pop_front();

    return;
  }

  /**
  * @brief      control sequence에 unit control message를 추가하는 함수
  * @param[in]  unit : 명령어가 전달 되어야 하는 unit index
  * @param[in]  command_type : 명령어 타입
  * @param[in]  action : 명령어 index
  * @param[in]  command : 명령어
  * @return     void
  * @note       
  */
  void Droid::add_sequence(uint32_t unit, uint32_t action, std::string command)
  {
    std::lock_guard<std::mutex> lock(_lock);

    std::unique_ptr<trash_bot::UnitControl> unit_control_msg = std::make_unique<trash_bot::UnitControl>();
    unit_control_msg->time_stamp     = ros::Time(0);
    unit_control_msg->target_object  = unit;
    unit_control_msg->action         = action;
    unit_control_msg->command        = command; 
    _control_sequence.push_back(std::move(unit_control_msg));

    if(unit == unit_to_int(fieldro_bot::Unit::All) && 
      action == unit_action_to_int(fieldro_bot::UnitAction::Finish))
    {
      delay_call(3000, std::bind(&Droid::system_finish, this));
    }
    
    return;
  }

  /**
  * @brief      user cmd 입력을 통한 unit 제어 함수
  * @param[in]  command : user cmd
  * @return     void  
  * @note       
  * @see        interpret_command
  */

  bool Droid::control(std::vector<std::string> command_list)
  {
    if(command_list.size() < 2 || command_list.size() > 3)                        return false;

    // command 분석
    std::tuple<int32_t, int32_t, int32_t, std::string> cmd_data = interpret_command(command_list);

    if(std::get<1>(cmd_data) == unit_to_int(fieldro_bot::Unit::None))               return false;
    if(std::get<2>(cmd_data) == unit_action_to_int(fieldro_bot::UnitAction::None))  return false;

    // 요청 list에 등록
    add_sequence(std::get<1>(cmd_data), std::get<2>(cmd_data), std::get<3>(cmd_data));

    return true;
  }

  /**
  * @brief      sensor data가 update 되었는지 확인 (기존과 달라졌는지)
  * @param[in]  sensor      : sensor index
  * @param[in]  signal_bit  : topic으로 전달 된 sensor data
  * @return     
  * @note       
  */
  bool Droid::update_sensor_data(DISignal sensor, int64_t signal_bit)
  {
    if(check_io_sensor((int)sensor, signal_bit) != _sensor[(int)sensor])
      {
        _sensor[(int)sensor] = check_io_sensor((int)sensor, signal_bit);       
        return true;
      }
      return false;
  }  
}