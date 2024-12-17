
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

    case fieldro_bot::UnitAction::Middle:
      std::async(std::launch::async, [this] { execute_middle_action(); });
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

    // 하한 limit 센서 신호 변경 + On 체크
    if(is_sensor_update_and_on((int)DISignal::LoaderFall, current_bits))
    {
      fall_limit_sensor_on();
    }

    // 상한 limit 센서 신호 변경 + On 체크
    if(is_sensor_update_and_on((int)DISignal::LoaderRaise, current_bits))
    {
      raise_limit_sensor_on();
    }

    if(is_sensor_error())
    {
      log_msg(LogError, 0, "Error : loader sensor error : " + 
                          std::to_string(_prev_sensor_data) + 
                          "  " + 
                          std::to_string(__LINE__));

      _state = fieldro_bot::UnitState::Error;
    }

    _prev_sensor_data = current_bits;     // prev sensor data update

    return;
  }
}