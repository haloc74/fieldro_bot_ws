
#include "loader.h"
#include <fieldro_lib/unit/unit.h>

namespace frb
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

  /**
  * @brief      loader의 sensor data가 error 상태인지 확인
  * @return     bool : loader의 fall, raise sensor 두개 모두가 on 상태인지
  * @note       추후 다른 sensor 추가시 수정 필요
  */
  bool Loader::is_sensor_error()
  {
    //int64_t compare = (0x01 << to_int(DISignal::LoaderFall)) | (0x01 << to_int(DISignal::LoaderRaise));
    if(_prev_sensor_data == _sensor_data_update_mask)
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
    
    if(_fall_position == INT32_MAX ||_state == frb::UnitState::Created)
    {
      log_msg(LogInfo, 0, "Loader initialize fall action start -- ");
      _motor->control_move(0, _action_rpm/3*2, CHECK_NONE, TIMEOUT_NONE);
    }
    else
    {
      log_msg(LogInfo, 0, "Loader fall action start -- ");
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
      log_msg(LogInfo, 0, std::string("Loader is not controlable : ") + 
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
    
    if(_raise_position == INT32_MAX || _state == frb::UnitState::Created)
    {
      log_msg(LogInfo, 0, "Loader initialize raise action start -- ");
      _motor->control_move(INT32_MAX, _action_rpm/3*2, CHECK_NONE, TIMEOUT_NONE);
    }
    else
    {
      log_msg(LogInfo, 0, "Loader fall action start -- ");
      _motor->control_move(_raise_position, _action_rpm, _action_check, _action_timeout);
    }
    return;
  }

  /**
  * @brief      loader middle action 수행
  * @note       middle position으로의 이동은 초기화 이후에 만 할 수있다.
  *             초기화가 완료 되지 않은 상태에서는 middle position 값이 유효하지 않음
  *            _middle_position == INT32_MAX : middle position이 설정되지 않았다.
  *   
  */
  void Loader::execute_middle_action()
  {
    if(_state != frb::UnitState::Normal)  
    {
      log_msg(LogError, 0, "Error : loader is not initialized");
      return;
    }

    if(!is_controlable())                         
    {
      log_msg(LogInfo, 0, "Loader is not controlable");
      return;
    }

    if(_middle_position == INT32_MAX)             
    {
      log_msg(LogError, 0, "Error : middle position is not set");
      return;
    }

    log_msg(LogInfo, 0, "Loader middle action start -- ");
    _action = UnitAction::Middle;
    _motor->control_move(_middle_position, _action_rpm, _action_check, _action_timeout);

    return;
  }  
}