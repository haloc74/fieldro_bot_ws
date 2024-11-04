

#include "droid.h"
#include "helper/helper.h"
#include "log/log.h"
#include <trash_bot/UnitControl.h>

#include "define/unit_define.h"
#include "define/unit_action_define.h"
#include "define/error_code.h"
 
namespace fieldro_bot
{
  Droid::Droid() : _lock()
  {
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

    _publish_unit_control = 
    _node_handle->advertise<trash_bot::UnitControl>("trash_bot/unit_control", 100);

    _control_sequence.clear();
    _pending_sequence.clear();
    _command_map.clear();

    _spinner = new ros::AsyncSpinner(5);        // spinner 생성
    _spinner->start();

    // thread
    _thread_info  = new ThreadActionInfo("config/droid.yaml", "main");
    _thread_info->_active = true;
    _thread_info->_thread = std::thread(std::bind(&Droid::update, this));  
  }

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
      //std::lock_guard<std::mutex> lock(_lock);

      // topic message 발송
      message_publish();

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

  void Droid::log_msg(LogLevel level, int32_t error_code, std::string log)
  {
    LOG->add_log(fieldro_bot::Unit::System, level, error_code, log);
    return;
  }

  /**
  /* @brief  		각 Unit의 동작 완료 상태를 받기 위한 callback 함수
  /* @param  		const omnibot_carry::UnitActionComplete : 동작 완료 message	
  /* @note      pending_sequence에 저장된 message는 action_complete message를 받아서 삭제된다. 
  /*            1. action_complete_msg의 action_object와 pending_sequence의 target_object가 일치할 경우
  /*            2. action_complete_msg의 action과 pending_sequence의 action이 일치할 경우
  /*            두 조건이 모두 만족할 경우 pending_sequence에서 삭제한다.
  */
  void Droid::subscribe_action_complete(const trash_bot::UnitActionComplete &action_complete_msg)
  {
    std::lock_guard<std::mutex> lock(_lock);
    
    if(_pending_sequence.empty())    
    {
        log_msg(LogInfo, 0, "action_complete (extend) :" 
                + unit_to_string(int_to_unit(action_complete_msg.action_object)) 
                + " - "
                + unit_action_to_string(int_to_unit_action(action_complete_msg.complete_action)));      
      return;
    }

    for(auto it=_pending_sequence.begin(); it!=_pending_sequence.end(); it++)
    {
      if((*it)->target_object != action_complete_msg.action_object)   continue;
      if((*it)->action != action_complete_msg.complete_action)        continue;

      // todo : result에 따른 처리
      if(action_complete_msg.error_code != error_to_int(Error::None))
      {
        log_msg(LogError, action_complete_msg.error_code, "action_fail : "+ unit_action_to_string(int_to_unit_action((*it)->action)));
      }
      else
      {
        log_msg(LogInfo, 0, "action_complete : "+unit_action_to_string(int_to_unit_action((*it)->action)));
      }

      _pending_sequence.erase(it);

      break;
    }


    return;
  }

  /**
  * @brief      unit control message를 발송하는 함수
  * @param[in]  unit : 명령어가 전달 되어야 하는 unit index 
  * @param[in]  action : 명령어 index
  * @return     
  * @note       
  * @see        global/define/unit_define.h Unit 참조
  * @see        global/define/unit_action_define.h UnitAction 참조
  */
  void Droid::publish_unit_control(uint32_t unit, uint32_t action, std::string command)
  {
    trash_bot::UnitControl unit_control_msg;
    unit_control_msg.time_stamp     = ros::Time::now();
    unit_control_msg.target_object  = unit;
    unit_control_msg.action         = action;
    unit_control_msg.command        = command;
    _publish_unit_control.publish(unit_control_msg);

    return;
  }

  /**
  * @brief      message 발송 여건을 확인하고 message 발송
  * @note       
  */
  void Droid::message_publish()
  {
    if(!_pending_sequence.empty())    return;   // 응답 대기중인 요청이 없을 경우에만 신규 요청 발송
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