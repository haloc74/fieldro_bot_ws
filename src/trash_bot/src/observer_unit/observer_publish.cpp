
#include "observer_unit/observer.h"
//#include "helper/helper.h"
#include <fieldro_lib/helper/helper.h>
//#include "log/log.h"
#include <fieldro_lib/log/log.h>

#include <trash_bot/UnitStateMsg.h>
#include <fieldro_msgs/UnitActionComplete.h>

namespace frb
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

    //log_msg(frb::LogLevel::Info, 0, "state_pub : " + std::to_string(_unit_alive));
    
    return;
  }
}  