#include "wago.h"
//#include "define/unit_define.h"
#include <fieldro_lib/define/unit_define.h>
//#include "define/unit_action_define.h"
#include <fieldro_lib/define/unit_action_define.h>
//#include "define/unit_state.h"
#include <fieldro_lib/define/unit_state.h>
//#include "helper/helper.h"
#include <fieldro_lib/helper/helper.h>

#include <trash_bot/IOSignal.h>
#include <trash_bot/UnitAliveMsg.h>
#include <trash_bot/UnitActionComplete.h>

namespace frb
{
  /**
  * @brief      unit control message를 수신하는 callback 함수
  * @param[in]  unit_control_msg : main control node에서 전달되는 unit control message
  * @return     void
  * @attention  target이 signal이 아닌 메세지는 무시한다.
  * @note       
  */
  void Wago::subscribe_unit_action(const trash_bot::UnitControl& unit_control_msg)
  {
    // target이 signal이 아닌 메세지는 무시한다. 
    frb::UnitName unit = to_enum<frb::UnitName>(unit_control_msg.target_object);

    if(unit != frb::UnitName::Signal && 
       unit != frb::UnitName::All)      return;

    // 요청된 action에 따른 처리
    frb::UnitAction action = to_enum<frb::UnitAction>(unit_control_msg.action);

    log_msg(LogInfo, 0, "Action Sub : " + to_string(unit) + " - " + to_string(action));

    switch(action)
    {       
    case frb::UnitAction::None:
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "UnitName Action None");
      break;

    case frb::UnitAction::Init:
      //_state =  static_cast<int>(frb::UnitState::Idle);
      _state = frb::UnitState::Normal;
      publish_unit_action_complete(to_int<frb::UnitAction>(action), frb::to_int(frb::Error::None));
      break;

    case frb::UnitAction::Finish:  
      log_msg(LogInfo, 0, "REQ : Finish");
      destroy();
      break;

    case frb::UnitAction::End:        
      break;

    default:                                  
      break;
    }
  }


  /**
  * @brief      io signal을 발송하는 함수
  * @param[in]  signal : 비트연산 된 전체 IO 신호
  * @note       update가 있거나 마지막 전송 이후 0.5초가 경과 했다면 발송한다.
  */
  void Wago::publish_io_signal(const int64_t signal_bit, bool update_flag)
  {
    // update가 없고 마지막 전송 이후 _publish_io_signal_period 초가 경과하지 않았다면 발송하지 않는다.
    if(!update_flag && ros::Time::now() - _last_publish_time < ros::Duration(_publish_io_signal_period))
    {
      return;
    }

    // 변경사항이 있을 때만 로그를 남긴다.
    if(update_flag)
    {
      LOG->add_log(frb::UnitName::Signal, 
                    frb::LogLevel::Info, 
                    0, std::string("Update IO Signal : ")+std::to_string(signal_bit));
    }

    // io signal 발송
    trash_bot::IOSignal io_signal_msg;
    io_signal_msg.time_stamp  = ros::Time::now();
    io_signal_msg.signal_bit  = signal_bit;
    _publish_io_signal.publish(io_signal_msg);

    // 마지막 발송 시간 업데이트
    _last_publish_time = ros::Time::now();

    return;
  }
}