
#include "loader.h"
#include "unit/unit.h"

namespace fieldro_bot
{
  /**
  * @brief      loader fall action 수행
  * @attention  _fall_position의 설정 여부에 따라 수행 방법을 달리 해야 한다.
  *             _fall_position == INT32_MAX : 저속으로 fall_limit sensor까지 이동
  *             _fall_position != INT32_MAX : 일반속도로 _fall_position까지 이동         
  */
  void Loader::execute_fall_action()
  {
    if(!is_controlable())
    {
      Unit::log_msg(LogInfo, static_cast<int32_t>(fieldro_bot::Error::Busy), "Loader is busy");
      return;
    }
  
    _action = UnitAction::Fall;

    Unit::log_msg(LogInfo, 0, "Loader fall action start -- ");

    if(_fall_position == INT32_MAX ||_state == UnitState::Created)
    {
      // _state  = UnitState::Busy;  created 상태를 유지해야 한다.
      // 저속으로 fall_limit sensor까지 이동
      _motor->control_move(0, _action_rpm/2, CHECK_NONE, TIMEOUT_NONE);
    }
    else
    {
      _state  = UnitState::Busy;  //created 상태를 유지해야 한다.
      // 일반속도로 _fall_position까지 이동
      _motor->control_move(_fall_position, _action_rpm, _action_check, _action_timeout);
    }

    return;
  }

  /**
  * @brief      loader raise action 수행
  * @attention  _raise_position의 설정 여부에 따라 수행 방법을 달리 해야 한다.
  *             _raise_position == INT32_MAX : 저속으로 raise_limit sensor까지 이동
  *             _raise_position != INT32_MAX : 일반속도로 _raise_position까지 이동                
  */
  void Loader::execute_raise_action()
  {
    if(!is_controlable())
    {
      log_msg(LogInfo, static_cast<int32_t>(fieldro_bot::Error::Busy), "Loader is busy");
      return;
    }

    _action = UnitAction::Raise;

    Unit::log_msg(LogInfo, 0, "Loader raise action start -- ");

    if(_raise_position == INT32_MAX || _state == UnitState::Created)
    {
      // 저속으로 raise_limit sensor까지 이동
      // _state  = UnitState::Busy;  created 상태를 유지해야 한다.
      _motor->control_move(INT32_MAX, _action_rpm/2, CHECK_NONE, TIMEOUT_NONE);
    }
    else
    {
      // 일반속도로 _raise_position까지 이동
      _state  = UnitState::Busy;  //created 상태를 유지해야 한다.
      _motor->control_move(_raise_position, _action_rpm, _action_check, _action_timeout);
    }
    return;
  }  
}