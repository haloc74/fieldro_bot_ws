
#include "droid.h"
//#include <fieldro_lib/helper/helper.h>
#include <fieldro_lib/log/log.h>
#include <fieldro_msgs/UnitAliveMsg.h>

#include "package/package_helper.h"
#include "package/unit_define.h"

namespace frb
{
  /**
  * @brief      message 발송 여건을 확인하고 message 발송
  * @note       
  */
  void Droid::message_publish()
  {
    std::lock_guard<std::mutex> lock(_lock);
    
    if(!_pending_sequence.empty())    return;  // 응답 대기중인 요청이 없을 경우에만 신규 요청 발송
    if(_control_sequence.empty())    return;   // control_sequence에 요소가 있을 경우 발송


    // 실제 메세지 발송      
    publish_unit_control(std::move(_control_sequence.front()));

    log_msg(LogInfo, 0, "message_publish !!!");
  }

  /**
  * @brief      unit control message를 발송하는 함수
  * @param[in]  unit : 명령어가 전달 되어야 하는 unit index 
  * @param[in]  action : 명령어 index
  * @return     
  * @note       
  * @see        global/define/unit_define.h UnitName 참조
  * @see        global/define/unit_action_define.h UnitAction 참조
  */
  void Droid::publish_all_destroy()
  {
    fieldro_msgs::UnitControl unit_control_msg;
    unit_control_msg.time_stamp     = ros::Time::now();
    unit_control_msg.target_object  = to_int(frb::UnitName::All);
    unit_control_msg.action         = to_int(frb::UnitAction::Finish);
    unit_control_msg.command        = "";
    _publish_unit_control.publish(unit_control_msg);

    // log_msg(LogInfo, 
    //         0, 
    //         "unit control Pub (Command Req) : " + 
    //         to_string(to_enum<frb::UnitName>(unit)) + 
    //         " - " + 
    //         to_string<frb::UnitAction>(action));
    return;
  }  

  /**
  * @brief      unit control message를 발송하는 함수
  * @param[in]  unit_control_msg : AGV를 구성하는 UnitName node에 전달되는 control message
  * @return     void
  * @note       unit_control_msg의 time_stamp는 발송 시간으로 변경한다.
  * @attention  발행된 message는 pending_sequence에 저장.
  *             pending_sequence에 저장된 message는 action_complete message를 받아서 삭제된다.
  *             pending_sequence에 요소가 있을 경우 더이상 publish하지 않는다.
  */
  void Droid::publish_unit_control(std::unique_ptr<fieldro_msgs::UnitControl> unit_control_msg)
  {
    log_msg(LogInfo, 
            0, 
            "unit control Pub : " + 
            to_string(to_enum<frb::UnitName>(unit_control_msg->target_object)) + 
            " - " + 
            to_string<frb::UnitAction>(unit_control_msg->action));


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

  void Droid::publish_driving_control(const geometry_msgs::Twist &twist_msg)
  {
    _publish_driving_control.publish(twist_msg);
    
    return;
  }

  void Droid::publish_manual_control(double propulsion, double steering, double lifting)
  {
    fieldro_msgs::ManualControl msg;

    msg.time_stamp = ros::Time::now();
    msg.propulsion_value = propulsion;
    msg.steering_value   = steering;
    msg.lifting_value    = lifting;
    
    _publish_manual_control.publish(msg);
    
    return;
  }
}