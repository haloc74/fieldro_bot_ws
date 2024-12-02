

#include "droid.h"
#include "helper/helper.h"
#include "log/log.h"

namespace fieldro_bot
{
  /**
  * @brief      unit의 상태를 subscribe하는 함수
  * @param[in]  const trash_bot::UnitStateMsg &msg : unit의 상태 정보
  * @return     void
  * @note       
  */
  void Droid::subscribe_unit_state(const trash_bot::UnitStateMsg &msg)
  {
    // switch(_action)
    // {
    // case fieldro_bot::UnitState::Created:
    //   if(msg.alive == 0x00)
    //   {
    //     log_msg(LogInfo, 0, "All UnitName Init - Next Step Process");
    //     *_action = fieldro_bot::UnitState::Active;
    //     // 각 unit에 초기화 sequence 추가
    //     // None   - skip
    //     // System - this
    //     add_sequence(to_int(fieldro_bot::UnitName::Observer), to_int(fieldro_bot::UnitAction::Init));
    //     add_sequence(to_int(fieldro_bot::UnitName::Signal), to_int(fieldro_bot::UnitAction::Init));
    //   }
    //   break;
    // case fieldro_bot::UnitState::Active:    break;
    // case fieldro_bot::UnitState::Idle:      break;
    // case fieldro_bot::UnitState::Busy:      break;
    // case fieldro_bot::UnitState::Error:     break;
    // case fieldro_bot::UnitState::End:       break;
    // default:                                break;
    // }

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
                + to_string(to_enum<fieldro_bot::UnitName>(action_complete_msg.action_object)) 
                + " - "
                + to_string<fieldro_bot::UnitAction>(action_complete_msg.complete_action));
                //+ unit_action_to_string(int_to_unit_action(action_complete_msg.complete_action)));      
      return;
    }

    for(auto it=_pending_sequence.begin(); it!=_pending_sequence.end(); it++)
    {
      if((*it)->target_object != action_complete_msg.action_object)   continue;
      if((*it)->action != action_complete_msg.complete_action)        continue;

      // todo : action fail 처리
      if(action_complete_msg.error_code != error_to_int(Error::None))
      {
        log_msg(LogError, action_complete_msg.error_code, "action_fail : "+ 
        to_string(to_enum<fieldro_bot::UnitName>((*it)->target_object)) + " - " +
        to_string<fieldro_bot::UnitAction>((*it)->action));
        //unit_action_to_string(to_enum<fieldro_bot::UnitAction>((*it)->action)));
      }
      else
      {
        log_msg(LogInfo, 0, "action_complete : "+
        to_string<fieldro_bot::UnitName>((*it)->target_object) + " - " +
        to_string<fieldro_bot::UnitAction>((*it)->action));
        //unit_action_to_string(int_to_unit_action((*it)->action)));
      }
      _pending_sequence.erase(it);

      break;
    }

    // 모든 unit의 초기화가 완료되었을 경우
    if(_state == fieldro_bot::UnitState::Active && is_all_sequence_empty())
    {
      _state = fieldro_bot::UnitState::Idle;
      log_msg(LogInfo, 0, "All UnitName Initialize Complete - Next Step Process");
    }

    return;
  }  

  /**
  * @brief      constro_sequence 및 pending_sequence가 모두 비어 있는지 확인하는 함수
  * @note       
  */
  bool Droid::is_all_sequence_empty()
  {
    return _control_sequence.empty() && _pending_sequence.empty();
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

  // void Droid::subscribe_io_signal(const trash_bot::IOSignal &io_signal_msg)
  // {
  //   //_last_io_update_time = ros::Time::now();

  //   // io unit 초기화 완료로 설정 
  //   // update_unit_state(fieldro_bot::UnitName::Signal, fieldro_bot::UnitState::Ready);
  //   //update_io_pulse();

  //   if(_signal_bit == io_signal_msg.signal_bit)    return;

  //   _signal_bit = io_signal_msg.signal_bit;

  //   log_msg(LogInfo, 0, "Sensor Update : " + std::to_string(io_signal_msg.signal_bit));                  

  //   // for(int i=0; i<(int)DISignal::End; ++i)
  //   // {
  //   //   if(update_sensor_data((DISignal)i, io_signal_msg.signal_bit))
  //   //   {
  //   //      // todo : 해당 센서에 대한 처리를 하자
  //   //   }
  //   // }
  //   return;
  // }  
}