#include "wago.h"
#include "define/unit_define.h"
#include "define/unit_action_define.h"
#include "helper/helper.h"
#include <trash_bot/IOSignal.h>
#include <trash_bot/UnitAliveMsg.h>
#include <trash_bot/UnitActionComplete.h>

namespace fieldro_bot
{
/**
  * @brief      unit control message를 수신하는 callback 함수
  * @param[in]  unit_control_msg : main control node에서 전달되는 unit control message
  * @return     void
  * @attention  target이 signal이 아닌 메세지는 무시한다.
  * @note       
  */
  void Wago::subscribe_unit_control(const trash_bot::UnitControl& unit_control_msg)
  {
    // target이 signal이 아닌 메세지는 무시한다. 
    fieldro_bot::Unit unit = int_to_unit(unit_control_msg.target_object);

    if(unit != fieldro_bot::Unit::Signal && 
       unit != fieldro_bot::Unit::All)      return;

    // 요청된 action에 따른 처리
    fieldro_bot::UnitAction action = int_to_unit_action(unit_control_msg.action);

    switch(action)
    {       
    case fieldro_bot::UnitAction::None:
      LOG->add_log(fieldro_bot::Unit::Signal, fieldro_bot::LogLevel::Error, 0, "Unit Action None");
      break;

    case fieldro_bot::UnitAction::Init:
      _state =  static_cast<int>(fieldro_bot::UnitState::Ready);
      publish_unit_action_complete(unit_action_to_int(action), error_to_int(fieldro_bot::Error::None));
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
  * @brief      unit action 처리 결과를 발송하는 함수
  * @param[in]  int32_t action : 처리된 action
  * @param[in]  int32_t result : 처리 결과
  * @return     void
  * @note       
  */
  void Wago::publish_unit_action_complete(const int32_t action, const int32_t result)
  {
    trash_bot::UnitActionComplete action_msg;
    action_msg.time_stamp     = ros::Time::now();
    action_msg.receive_object = unit_to_int(fieldro_bot::Unit::System);
    action_msg.action_object  = unit_to_int(fieldro_bot::Unit::Signal);
    action_msg.complete_action= action;
    action_msg.error_code     = result;
    _publish_unit_action_complete.publish(action_msg);
    return;
  }

  /**
  * @brief      alive message를 발송하는 함수
  * @return     void
  * @note       현재 상태를 0.5초 간격으로 발송한다.
  */
  void Wago::publish_alive()
  {
    if(ros::Time::now() - _last_state_time < ros::Duration(0.5))
    {
      return;
    }

    // unit alive message 발송
    trash_bot::UnitAliveMsg alive_msg;
    alive_msg.index = unit_to_int(fieldro_bot::Unit::Signal);
    alive_msg.state = _state;
    _publish_alive.publish(alive_msg);

    // 마지막 발송 시간 업데이트
    _last_state_time = ros::Time::now();

    return;
  }

  /**
  * @brief      io signal을 발송하는 함수
  * @param[in]  signal : 비트연산 된 전체 IO 신호
  * @note       update가 있거나 마지막 전송 이후 0.5초가 경과 했다면 발송한다.
  */
  void Wago::publish_io_signal(const int64_t signal_bit, bool update_flag)
  {
    // update가 없고 마지막 전송 이후 0.5초가 경과하지 않았다면 발송하지 않는다.
    if(!update_flag && ros::Time::now() - _last_update_time < ros::Duration(0.5))
    {
      return;
    }

    // 변경사항이 있을 때만 로그를 남긴다.
    if(update_flag)
    {
      LOG->add_log(fieldro_bot::Unit::Signal, 
                    fieldro_bot::LogLevel::Info, 
                    0, std::string("Update IO Signal : ")+std::to_string(signal_bit));
    }

    // io signal 발송
    trash_bot::IOSignal io_signal_msg;
    io_signal_msg.time_stamp  = ros::Time::now();
    io_signal_msg.signal_bit  = signal_bit;
    _publish_io_signal.publish(io_signal_msg);

    // 마지막 발송 시간 업데이트
    _last_update_time = ros::Time::now();

    return;
  }
}