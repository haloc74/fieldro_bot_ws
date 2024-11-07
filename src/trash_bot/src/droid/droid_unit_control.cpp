#include "droid.h"
#include "helper/helper.h"
#include "log/log.h"
#include <trash_bot/UnitControl.h>

#include "define/unit_define.h"
#include "define/unit_action_define.h"
#include "define/error_code.h"
 
namespace fieldro_bot
{
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

    if(_action == fieldro_bot::UnitState::Init && _pending_sequence.empty())
    {
      _action = fieldro_bot::UnitState::Ready;
      log_msg(LogInfo, 0, "All Unit Initialize Complete - Next Step Process");
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
}