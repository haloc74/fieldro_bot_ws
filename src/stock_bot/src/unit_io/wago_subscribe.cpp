
#include "wago.h"

#include <fieldro_lib/define/unit_action_define.h>
#include <fieldro_lib/define/unit_state.h>
#include <fieldro_msgs/IOSignal.h>
#include <fieldro_msgs/UnitAliveMsg.h>
#include <fieldro_msgs/UnitActionComplete.h>
#include "package/unit_define.h"  
#include "package/package_helper.h"

namespace frb
{
  /**
  * @brief      unit control message를 수신하는 callback 함수
  * @param[in]  unit_control_msg : main control node에서 전달되는 unit control message
  * @return     void
  * @attention  target이 signal이 아닌 메세지는 무시한다.
  * @note       
  */
  void Wago::subscribe_unit_action(const fieldro_msgs::UnitControl& unit_control_msg)
  {
    // target이 signal이 아닌 메세지는 무시한다. 
    frb::UnitName unit = to_enum<frb::UnitName>(unit_control_msg.target_object);
    if(unit != frb::UnitName::Signal && unit != frb::UnitName::All)      return;

    // 요청된 action에 따른 처리
    frb::UnitAction action = to_enum<frb::UnitAction>(unit_control_msg.action);
    log_msg(LogInfo, 0, "Action Sub : " + to_string(unit) + " - " + to_string(action));

    switch(action)
    {       
    case frb::UnitAction::None:
      LOG->add_log(_name, frb::LogLevel::Error, 0, "UnitName Action None");
      break;

    case frb::UnitAction::Init:
      //_state =  static_cast<int>(frb::UnitState::Idle);
      _state = frb::UnitState::Normal;
      
      break;

    case frb::UnitAction::Break:
      if(unit_control_msg.command != "")
      {
        if(unit_control_msg.command == "on")
        {
          write_do_signal(to_int(DOSignal::DO_BREAK), 0);
        }
        else if(unit_control_msg.command == "off")
        {
          write_do_signal(to_int(DOSignal::DO_BREAK), 1);
        }
      }
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

    publish_unit_action_complete(to_int<frb::UnitAction>(action), frb::to_int(frb::Error::None));
  }
}