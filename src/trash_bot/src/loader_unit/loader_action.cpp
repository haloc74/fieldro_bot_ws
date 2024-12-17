
#include "loader.h"
#include "unit/unit.h"

namespace fieldro_bot
{
  /**
  * @brief      limit sensor가 on 상태인지 확인
  * @param[in]  DISignal index : sensor index
  * @return     해당 sensor가 on 상태인지 및 fall, raise sensor 두개 모두가 on 상태인지
  * @note       
  */
  bool Loader::is_sensor_on(DISignal signal)
  {
    std::lock_guard<std::mutex> lock(_lock);
    int64_t compare = (0x01 << to_int(signal));
    if(_prev_sensor_data & compare)
    {
      return true;
    }
    return false;
  }
  bool Loader::is_sensor_error()
  {
    int64_t compare = (0x01 << to_int(DISignal::LoaderFall)) | (0x01 << to_int(DISignal::LoaderRaise));
    if(_prev_sensor_data == compare)
    {
      return true;
    }
    return false;
  }


  /**
  * @brief      loader fall action 수행
  * @attention  _fall_position의 설정 여부에 따라 수행 방법을 달리 해야 한다.
  *             _fall_position == INT32_MAX : 저속으로 fall_limit sensor까지 이동
  *             _fall_position != INT32_MAX : 일반속도로 _fall_position까지 이동         
  */
  void Loader::execute_fall_action()
  {
    if(!is_controlable())      return;

    if(is_sensor_on(DISignal::LoaderFall))
    {
      log_msg(LogInfo, 0, "fall limit sensor already on === ");
      fall_limit_sensor_on();
      return;
    }

    _action = UnitAction::Fall;
    
    if(_fall_position == INT32_MAX ||_state == fieldro_bot::UnitState::Created)
    {
      log_msg(LogInfo, 0, "Loader initialize fall action start -- ");
      _motor->control_move(0, _action_rpm/3*2, CHECK_NONE, TIMEOUT_NONE);
    }
    else
    {
      log_msg(LogInfo, 0, "Loader fall action start -- ");
      _state  = fieldro_bot::UnitState::Busy;  
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
      Unit::log_msg(LogInfo, 0, std::string("Loader is not controlable : ") + 
                                std::string("state : ") + to_string(_state) + 
                                std::string("action :") + to_string(_action) +
                                std::string("code line : ") + std::to_string(__LINE__));
      return;
    }

    if(is_sensor_on(DISignal::LoaderRaise))
    {
      log_msg(LogInfo, 0, "raise limit sensor already on === ");
      raise_limit_sensor_on();
      return;
    }


    _action = UnitAction::Raise;

    Unit::log_msg(LogInfo, 0, "Loader raise action start -- ");

    if(_raise_position == INT32_MAX || _state == fieldro_bot::UnitState::Created)
    {
      // 저속으로 raise_limit sensor까지 이동
      // _state  = UnitState::Busy;  created 상태를 유지해야 한다.
      _motor->control_move(INT32_MAX, _action_rpm/3*2, CHECK_NONE, TIMEOUT_NONE);
    }
    else
    {
      // 일반속도로 _raise_position까지 이동
      _state  = fieldro_bot::UnitState::Busy;  //created 상태를 유지해야 한다.
      _motor->control_move(_raise_position, _action_rpm, _action_check, _action_timeout);
    }
    return;
  }  
}