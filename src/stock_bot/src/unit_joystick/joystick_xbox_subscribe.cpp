


#include <fieldro_lib/define/unit_action_define.h>
#include <fieldro_lib/define/unit_state.h>

#include "unit_joystick/joystick_xbox.h"
#include "package/unit_define.h"  
#include "package/package_helper.h"
 
namespace frb
{
  void JoyStickXbox::subscribe_unit_action(const fieldro_msgs::UnitControl& msg)
  {
    // target이 signal이 아닌 메세지는 무시한다. 
    frb::UnitName unit = to_enum<frb::UnitName>(msg.target_object);

    if(unit != frb::UnitName::JoyStick && 
       unit != frb::UnitName::All)      return;

    // 요청된 action에 따른 처리
    frb::UnitAction action = to_enum<frb::UnitAction>(msg.action);

    log_msg(LogInfo, 0, "Action Sub : " + to_string(unit) + " - " + to_string(action));

    switch(action)
    {
    case frb::UnitAction::None:
      LOG->add_log(_name, frb::LogLevel::Error, 0, "UnitName Action None");
      break;

    case frb::UnitAction::Init:
      publish_unit_action_complete(to_int<frb::UnitAction>(action), frb::to_int(frb::Error::None));
      break;

    case frb::UnitAction::Finish:  
      log_msg(LogInfo, 0, "REQ : Finish");
      destroy();
      break;

    case frb::UnitAction::End:        
      break;
    }

    return;
  }
}