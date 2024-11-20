
#include "observer_unit/unit_observer.h"
#include "helper/helper.h"
#include "log/log.h"

namespace fieldro_bot
{
  /**
  * @brief      unit control message를 수신하는 callback 함수
  * @param[in]  unit_control_msg : main control node에서 전달되는 unit control message
  * @return     void
  * @attention  target이 signal이 아닌 메세지는 무시한다.
  * @note       
  */
  void UnitObserver::subscribe_unit_control(const trash_bot::UnitControl& unit_control_msg)
  {
    // target의 signal이 아닌 메세지는 무시한다. 
    fieldro_bot::Unit unit = int_to_unit(unit_control_msg.target_object);

    if(unit != fieldro_bot::Unit::Observer && 
       unit != fieldro_bot::Unit::All)      return;

    // 요청된 action에 따른 처리
    fieldro_bot::UnitAction action = int_to_unit_action(unit_control_msg.action);

    switch(action)
    {       
    case fieldro_bot::UnitAction::None:
      //LOG->add_log(fieldro_bot::Unit::Signal, fieldro_bot::LogLevel::Error, 0, "Unit Action None");
      break;

    case fieldro_bot::UnitAction::Init:
//      _state =  static_cast<int>(fieldro_bot::UnitState::Ready);
//      publish_unit_action_complete(unit_action_to_int(action), error_to_int(fieldro_bot::Error::None));
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
  * @brief      unit 상태를 수신하는 callback 함수
  * @param[in]  const trash_bot::UnitStateMsg &msg : unit 상태 메시지
  * @note       unit의 상태가 이전과 달라졌다면 즉시 update 한다.
  */
  void UnitObserver::subscribe_unit_alive(const trash_bot::UnitAliveMsg &msg)
  {
    int32_t index = msg.index;
    int32_t state = msg.state;

    if (index < 0 || index >= _unit_alive_info.size())
    {
      ROS_ERROR("Invalid unit index : %d", index);
      return;
    }

    // unit의 상태가 이전과는 뭔가 달라짐
    if(_unit_alive_info[index]->update(state))
    {
      // unit 상태 변경에 따른 즉각적인 publishing
      publish_unit_state(false);
    }
    return;
  }

  /**
  * @brief      unit의 상태를 publishing 하는 함수
  * @param[in]  bool time_check_flag : update interval을 체크할지 여부
  * @note       
  */
  void UnitObserver::publish_unit_state(bool time_check_flag)
  {
    if(time_check_flag && !is_publish_interval())
    {
      return;
    }

    trash_bot::UnitStateMsg msg;

    msg.alive = _unit_alive;
    msg.states.clear();
    
    for(auto &unit_state_info : _unit_alive_info)
    {
      msg.states.push_back(unit_state_info->get_state());
    }
    _publish_units_state.publish(msg);
    _last_publish_time = ros::Time::now();

    return;
  }  
}