
#include "observer_unit/observer.h"
#include "helper/helper.h"
#include "log/log.h"
#include <trash_bot/UnitActionComplete.h>

namespace fieldro_bot
{
  /**
  * @brief      unit의 상태를 publishing 하는 함수
  * @param[in]  bool time_check_flag : update interval을 체크할지 여부
  * @note       
  */
  void Observer::publish_unit_state(bool time_check_flag)
  {
    // mutex lock
    std::lock_guard<std::mutex> lock(_lock);

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

    //log_msg(LogInfo, 0, "Publish Alive Message");
    LOG->add_log(fieldro_bot::UnitName::Observer, fieldro_bot::LogLevel::Info, 0, "state_pub - "+std::to_string(_unit_alive));


    return;
  }

  /**
  * @brief      unit action 처리 결과를 발송하는 함수
  * @param[in]  int32_t action : 처리된 action
  * @param[in]  int32_t result : 처리 결과
  * @return     void
  * @note       
  */
  void Observer::publish_unit_action_complete(const int32_t action, const int32_t result)
  {
    trash_bot::UnitActionComplete action_msg;
    action_msg.time_stamp     = ros::Time::now();
    action_msg.receive_object = to_int(fieldro_bot::UnitName::System);
    action_msg.action_object  = to_int(fieldro_bot::UnitName::Observer);
    action_msg.complete_action= action;
    action_msg.error_code     = result;
    _publish_unit_action_complete.publish(action_msg);
    return;
  }
}  