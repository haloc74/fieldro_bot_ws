
#include "observer_unit/observer.h"
#include "helper/helper.h"
#include "log/log.h"
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
  void Observer::subscribe_unit_action(const trash_bot::UnitControl& unit_control_msg)
  {
    // target의 signal이 아닌 메세지는 무시한다. 
    fieldro_bot::UnitName unit = to_enum<fieldro_bot::UnitName>(unit_control_msg.target_object);
    log_msg(LogInfo, 0, "Action Sub : "+ fieldro_bot::to_string(unit));

    if(unit != fieldro_bot::UnitName::Observer && 
       unit != fieldro_bot::UnitName::All)      return;

    // 요청된 action에 따른 처리

    fieldro_bot::UnitAction action = to_enum<fieldro_bot::UnitAction>(unit_control_msg.action);

    log_msg(LogInfo, 0, "Action Sub : " + to_string(unit) + " - " + to_string(action));

    switch(action)
    {       
    case fieldro_bot::UnitAction::None:
      break;

    case fieldro_bot::UnitAction::Init:
      _state =  fieldro_bot::UnitState::Active;
      _unit_alive_info[static_cast<int>(fieldro_bot::UnitName::Observer)]->update(static_cast<int>(_state));
      publish_unit_action_complete(to_int(action), fieldro_bot::to_int(fieldro_bot::Error::None));
      break;

    case fieldro_bot::UnitAction::Finish:  
      destroy();
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