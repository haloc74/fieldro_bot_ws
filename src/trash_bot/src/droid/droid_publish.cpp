
#include "droid.h"
#include "helper/helper.h"
#include "log/log.h"
#include <trash_bot/UnitAliveMsg.h>

namespace fieldro_bot
{
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
  * @param[in]  unit : 명령어가 전달 되어야 하는 unit index 
  * @param[in]  action : 명령어 index
  * @return     
  * @note       
  * @see        global/define/unit_define.h UnitName 참조
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
  * @brief      unit control message를 발송하는 함수
  * @param[in]  unit_control_msg : AGV를 구성하는 UnitName node에 전달되는 control message
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
}