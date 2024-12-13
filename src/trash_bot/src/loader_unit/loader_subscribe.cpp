#include "loader.h"
#include "define/unit_state.h"

namespace fieldro_bot
{
  /**
  * @brief      unit action message를 수신하는 callback 함수
  * @param[in]  unit_control_msg : main control node에서 전달되는 unit control message
  * @return     void
  * @attention  target이 loader가 아닌 메세지는 무시한다.
  * @note       
  */
  void Loader::subscribe_unit_action(const trash_bot::UnitControl& msg)
  {
    fieldro_bot::UnitName unit = to_enum<fieldro_bot::UnitName>(msg.target_object);
    
    if(unit != fieldro_bot::UnitName::Loader && 
       unit != fieldro_bot::UnitName::All)      return;

    fieldro_bot::UnitAction action = to_enum<fieldro_bot::UnitAction>(msg.action);

    log_msg(LogInfo, 0, "UnitName Action Sub : " + to_string(unit) + " - " + to_string(action));

    switch(action)
    {
    case fieldro_bot::UnitAction::None:
      LOG->add_log(fieldro_bot::UnitName::Loader, fieldro_bot::LogLevel::Error, 0, "UnitName Action None");
      break;

    case fieldro_bot::UnitAction::Init:
      break;

    case fieldro_bot::UnitAction::Fall:
      execute_fall_action();
      break;

    case fieldro_bot::UnitAction::Raise:
      execute_raise_action();
      break;
    }
    
    return;
  }

  /**
  * @brief      io signal topic을 수신하는 callback 함수
  * @param[in]  const trash_bot::IOSignal& iosignal_msg : io signal message
  * @return     void
  * @attention  Loader와 관련된 sensor data만 처리하고 update.
  * @note       
  */
  void Loader::subscribe_iosignal(const trash_bot::IOSignal& msg)
  {
    // loader와 관련된 비트만 masking
    int64_t current_bits = msg.signal_bit & _sensor_data_update_mask;

    // loader와 관련된 bit중 변경된 bit가 없다.
    if(current_bits == _prev_sensor_data)   return;

    // 이전 sensor data와 비교하여 변동된 비트만 추출
    int64_t changed_bits = current_bits ^ _prev_sensor_data;

    // 하한 limit 센서 신호 변경 + On
    if(is_sensor_update_and_on((int)DISignal::LoaderFall, changed_bits, current_bits))
    {
      fall_limit_sensor_on();
    }

    // 상한 limit 센서 신호 변경 + On
    if(is_sensor_update_and_on((int)DISignal::LoaderRaise, changed_bits, current_bits))
    {
      raise_limit_sensor_on();
    }

    // prev sensor data update
    _prev_sensor_data = current_bits;

    return;
  }

  void Loader::fall_limit_sensor_on()
  {
    // motor stop
    _motor->stop_motor();

    if(_state == UnitState::Active && _action == UnitAction::Fall)
    {
      // 초기화 동작이면 motor 객체에 fall limit position 설정
      _fall_position = _motor->get_motor_position() + _safety_distance;

      // 동작 완료 보고
      publish_unit_action_complete(to_int(_action), 0);

      // action 
      _action = UnitAction::None;

      // 중간 위치 설정
      confirm_active_position();
    }
    else
    {
      _state = UnitState::Error;
    }
    return;
  }

  void Loader::raise_limit_sensor_on()
  {
    // motor stop
    _motor->stop_motor();

    if(_state == UnitState::Active && _action == UnitAction::Fall)
    {
      // 초기화 동작이면 motor 객체에 raise limit position 설정
      _raise_position = _motor->get_motor_position() - _safety_distance;

      // 동작 완료 보고
      publish_unit_action_complete(to_int(_action), 0);

      // 중간 위치 설정
      confirm_active_position();
    }
    else
    {
      _state = UnitState::Error;
    }
    return;
  }



  /**
  * @brief      sensor data가 update 되었고 On 되었는지 확인
  * @param[in]  int32_t index : sensor index
  * @param[in]  int64_t update_bit : 사전 체크된 update flag bit
  * @param[in]  int64_t sensor_bit : topic으로 전달 된 sensor data
  * @return     해당 bit가 update 되었고 On 되었는지 여부
  * @attention  update되었으나 Off 되는건 의미가 없음       
  */
  bool Loader::is_sensor_update_and_on(int32_t index, int64_t change_bit, int64_t sensor_bit)
  {
    return (change_bit & (1 << index)) && (sensor_bit & (1 << index));
  }
  // bool Loader::is_sensor_on(int32_t index, int64_t sensor_bit)
  // {
  //   return (_prev_sensor_data & (1 << index));
  // }
}