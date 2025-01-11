

#include "droid.h"
#include <fieldro_lib/helper/helper.h>
#include <fieldro_lib/log/log.h>

namespace frb
{
  /**
  * @brief      unit의 상태를 subscribe하는 함수
  * @param[in]  const fieldro_msgs::UnitStateMsg &msg : unit의 상태 정보
  * @return     void
  * @note       
  */
  void Droid::subscribe_unit_state(const fieldro_msgs::UnitStateMsg &msg)
  {
    switch(_state)
    {
    case frb::UnitState::Created:
      if(msg.alive == 0x00)
      {
        log_msg(LogInfo, 0, "All Init - Next Step Process");
        _state = frb::UnitState::Normal;
        delay_call(3000, std::bind(&Droid::create_unit_initialize_sequence, this));
      }
      break;
    case frb::UnitState::Active:    break;
    //case frb::UnitState::Idle:      break;
    //case frb::UnitState::Busy:      break;
    case frb::UnitState::Normal:    break;
    case frb::UnitState::Error:     break;
    case frb::UnitState::End:       break;
    default:                                break;
    }

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
  void Droid::subscribe_action_complete(const fieldro_msgs::UnitActionComplete &action_complete_msg)
  {
    std::lock_guard<std::mutex> lock(_lock);
    
    if(_pending_sequence.empty())    
    {
        log_msg(LogInfo, 0, "action_complete (extend) :" 
                + to_string(to_enum<frb::UnitName>(action_complete_msg.action_object)) 
                + " - "
                + to_string<frb::UnitAction>(action_complete_msg.complete_action));
      return;
    }

    for(auto it=_pending_sequence.begin(); it!=_pending_sequence.end(); it++)
    {
      if((*it)->target_object != action_complete_msg.action_object)   continue;
      if((*it)->action != action_complete_msg.complete_action)        continue;

      // todo : action fail 처리
      if(action_complete_msg.error_code != frb::to_int(Error::None))
      {
        log_msg(LogError, action_complete_msg.error_code, "action_fail : "+ 
        to_string(to_enum<frb::UnitName>((*it)->target_object)) + " - " +
        to_string<frb::UnitAction>((*it)->action));
        //unit_action_to_string(to_enum<frb::UnitAction>((*it)->action)));
      }
      else
      {
        log_msg(LogInfo, 0, "action_complete : "+
        to_string<frb::UnitName>((*it)->target_object) + " - " +
        to_string<frb::UnitAction>((*it)->action));
        //unit_action_to_string(int_to_unit_action((*it)->action)));
      }
      _pending_sequence.erase(it);

      break;
    }

    // 모든 unit의 초기화가 완료되었을 경우
    if(_state == frb::UnitState::Active && is_all_sequence_empty())
    {
      _state = frb::UnitState::Normal;
      log_msg(LogInfo, 0, "All Unit Initialize Complete !!!");
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
    publish_driving_control(twist_msg);
    
    return;
  }  
}