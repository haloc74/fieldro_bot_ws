
#include <future>

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
      std::async(std::launch::async, [this] { execute_fall_action(); });
      break;

    case fieldro_bot::UnitAction::Raise:
      std::async(std::launch::async, [this] { execute_raise_action(); });
      break;

    case fieldro_bot::UnitAction::Stop:
      _motor->stop_motor();
      break;

    case fieldro_bot::UnitAction::Finish:
      log_msg(LogInfo, 0, "REQ : Finish");
      destroy();
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
    // int64_t changed_bits = current_bits ^ _prev_sensor_data;

    // 하한 limit 센서 신호 변경 + On
    //if(is_sensor_update_and_on((int)DISignal::LoaderFall, changed_bits, current_bits))
    if(is_sensor_update_and_on((int)DISignal::LoaderFall, current_bits))
    {
      fall_limit_sensor_on();
    }

    // 상한 limit 센서 신호 변경 + On
    //if(is_sensor_update_and_on((int)DISignal::LoaderRaise, changed_bits, current_bits))
    if(is_sensor_update_and_on((int)DISignal::LoaderRaise, current_bits))
    {
      raise_limit_sensor_on();
    }


    // limit sensor error check
    if(is_sensor_error())
    {
      log_msg(LogError, 0, "Error : loader sensor error : " + 
                          std::to_string(_prev_sensor_data) + 
                          "  " + 
                          std::to_string(__LINE__));

      _state = fieldro_bot::UnitState::Error;
    }


    // prev sensor data update
    _prev_sensor_data = current_bits;

    return;
  }

  /**
  * @brief      fall limit sensor가 on 되었을 경우 처리
  * @note       초기화 상태와 일반 상태를 구분해서 처리.
  * @attention  초기화 상태에서는 각 limit sensor를 가지고 위치를 인식하게 되므로 
  *             sensor가 on 되어도 에러 처리를 하지 않는다.
  */
  void Loader::fall_limit_sensor_on()
  {
    _motor->stop_motor();                                 // motor stop                       

    log_msg(LogInfo, 0, "fall limit sensor on");
    log_msg(LogInfo, 0, "state : " + to_string(_state) + " action : " + to_string(_action));

    if(_state == UnitState::Created && _action == UnitAction::Fall)
    {
      publish_unit_action_complete(to_int(_action), 0);   // 동작 완료 보고
      confirm_active_position();                          // 위치 설정 보고 
      _action = UnitAction::None;                         // action release
    }
    else
    {
      if(_state != UnitState::Created)
      {
        log_msg(LogError, 0, "Error : fall limit sensor on" + std::to_string(__LINE__));
        _state = fieldro_bot::UnitState::Error;
      }      
    }
    return;
  }

  /**
  * @brief      raise limit sensor가 on 되었을 경우 처리
  * @note       초기화 상태와 일반 상태를 구분해서 처리.
  * @attention  초기화 상태에서는 각 limit sensor를 가지고 위치를 인식하게 되므로
  *             sensor가 on 되어도 에러 처리를 하지 않는다.
  */
  void Loader::raise_limit_sensor_on()
  {
    _motor->stop_motor();

    log_msg(LogInfo, 0, "raise limit sensor on");
    log_msg(LogInfo, 0, "state : " + to_string(_state) + " action : " + to_string(_action));

    if(_state == UnitState::Created && _action == UnitAction::Raise)
    {
      Unit::publish_unit_action_complete(to_int(_action), 0); // 동작 완료 보고
      confirm_active_position();                              // 위치 설정 보고 
      _action = fieldro_bot::UnitAction::None;                // action release         
    }
    else
    {
      if(_state != UnitState::Created)
      {
        log_msg(LogError, 0, "Error : raise limit sensor on" + std::to_string(__LINE__));
        _state = fieldro_bot::UnitState::Error;
      }
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
  bool Loader::is_sensor_update_and_on(int32_t index, int64_t sensor_bit)
  {
    // 이전 sensor data와 비교하여 변동된 비트만 추출
    int64_t changed_bits = sensor_bit ^ _prev_sensor_data;

    return (changed_bits & (1 << index)) && (sensor_bit & (1 << index));
  }
}