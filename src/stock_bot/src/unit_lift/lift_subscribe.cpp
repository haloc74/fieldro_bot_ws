
#include <future>

#include "lift.h"
#include <fieldro_lib/define/unit_state.h>
#include <fieldro_lib/helper/helper.h>


namespace frb
{
  /**
  * @brief      unit action message를 수신하는 callback 함수
  * @param[in]  unit_control_msg : main control node에서 전달되는 unit control message
  * @return     void
  * @attention  target이 loader가 아닌 메세지는 무시한다.
  * @note       
  */
  void Lift::subscribe_unit_action(const fieldro_msgs::UnitControl& msg)
  {
    frb::UnitName unit = to_enum<frb::UnitName>(msg.target_object);
    
    if(unit != frb::UnitName::Lift && 
       unit != frb::UnitName::All)      return;

    frb::UnitAction action = to_enum<frb::UnitAction>(msg.action);
    log_msg(LogInfo, 0, "UnitName Action Sub : " + to_string(unit) + " - " + to_string(action));

    double value = std::numeric_limits<double>::max();
    if(msg.command != "" && is_number(msg.command))
    {
      value = std::stod(msg.command);
    }

    switch(action)
    {
    case frb::UnitAction::None:
      LOG->add_log(_name, frb::LogLevel::Error, 0, "UnitName Action None");
      break;

    case frb::UnitAction::Init:
      //publish_unit_action_complete(to_int<frb::UnitAction>(action), frb::to_int(frb::Error::None));
      _action = frb::UnitAction::Init;
      _motor->initialize();
      break;

    // case frb::UnitAction::Fall:
    //   std::async(std::launch::async, [this] { execute_fall_action(); });
    //   break;
    // case frb::UnitAction::Middle:
    //   std::async(std::launch::async, [this] { execute_middle_action(); });
    //   break;
    // case frb::UnitAction::Raise:
    //   std::async(std::launch::async, [this] { execute_raise_action(); });
    //   break;

    case frb::UnitAction::Lift:
      //_motor->control_speed_move(value);
      value *= 300.0;
      if(value < -300.0)  value = -300.0;
      if(value > 300.0)   value = 300.0;
      _motor->control_pr0(value);
      publish_unit_action_complete(to_int<frb::UnitAction>(action), frb::to_int(frb::Error::None));
      break;

    case frb::UnitAction::Stop:
      _motor->stop_motor();
      publish_unit_action_complete(to_int<frb::UnitAction>(action), frb::to_int(frb::Error::None));
      break;

    case frb::UnitAction::Finish:
      log_msg(LogInfo, 0, "REQ : Finish");
      destroy();
      break;
    }
    
    return;
  }

  /**
  * @brief      io signal topic을 수신하는 callback 함수
  * @param[in]  const fieldro_msgs::IOSignal& iosignal_msg : io signal message
  * @return     void
  * @attention  Loader와 관련된 sensor data만 처리하고 update.
  * @note       
  */
  void Lift::subscribe_iosignal(const fieldro_msgs::IOSignal& msg)
  {
    // loader와 관련된 비트만 masking
    int64_t current_bits = msg.signal_bit & _sensor_data_update_mask;

    // loader와 관련된 bit중 변경된 bit가 없다.
    if(current_bits == _prev_sensor_data)   return;

    // 하한 limit 센서 신호 변경 + On 체크
    if(is_sensor_update_and_on((int)DISignal::LiftBottomSafe, current_bits))
    {
      fall_limit_sensor_on();
    }

    // 상한 limit 센서 신호 변경 + On 체크
    if(is_sensor_update_and_on((int)DISignal::LiftTopSafe, current_bits))
    {
      raise_limit_sensor_on();
    }

    if(is_sensor_error())
    {
      log_msg(LogError, 0, "Error : loader sensor error : " + 
                          std::to_string(_prev_sensor_data) + 
                          "  " + 
                          std::to_string(__LINE__));

      _state = frb::UnitState::Error;
    }

    _prev_sensor_data = current_bits;     // prev sensor data update

    return;
  }
}