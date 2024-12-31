
#include "observer_unit/observer.h"
//#include "helper/helper.h"
#include <fieldro_lib/helper/helper.h>
#include "log/log.h"
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
  void Observer::subscribe_unit_action(const trash_bot::UnitControl& unit_control_msg)
  {
    // target의 signal이 아닌 메세지는 무시한다. 
    frb::UnitName unit = to_enum<frb::UnitName>(unit_control_msg.target_object);
    log_msg(LogInfo, 0, "Action Sub : "+ frb::to_string(unit));

    if(unit != frb::UnitName::Observer && 
       unit != frb::UnitName::All)      return;

    // 요청된 action에 따른 처리

    frb::UnitAction action = to_enum<frb::UnitAction>(unit_control_msg.action);

    log_msg(LogInfo, 0, "Action Sub : " + to_string(unit) + " - " + to_string(action));

    switch(action)
    {       
    case frb::UnitAction::None:
      break;

    case frb::UnitAction::Init:
      _state =  frb::UnitState::Active;
      _unit_alive_info[static_cast<int>(frb::UnitName::Observer)]->update(static_cast<int>(_state));
      publish_unit_action_complete(to_int(action), frb::to_int(frb::Error::None));
      break;

    case frb::UnitAction::Finish:  
      destroy();
      break;

    case frb::UnitAction::End:        
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
  void Observer::subscribe_unit_alive(const trash_bot::UnitAliveMsg &msg)
  {
    int32_t index = msg.index;
    int32_t state = msg.state;

    if (index < 0 || index >= _unit_alive_info.size())
    {
      log_msg(LogLevel::Error, 0, "Invalid unit index : " + std::to_string(index));
      return;
    }

    // unit의 상태가 이전과는 뭔가 달라짐
    if(_unit_alive_info[index]->update(state))
    {
      if(state == to_int(UnitState::Error))
      {
        log_msg(LogLevel::Error, 0, "Unit Error : " + to_string(to_enum<UnitName>(index)));
      }

      // unit 상태 변경에 따른 즉각적인 publishing
      publish_unit_state(false);
    }
    return;
  }



}