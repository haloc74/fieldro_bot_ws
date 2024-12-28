#include "driving.h"

namespace frb
{
  /**
  * @brief      속도 제어 subscriber callback
  * @param[in]  const geometry_msgs::Twist &twist_msg : 속도 제어 메세지
  * @return     void
  * @note       Motor의 속도는 RPM으로 제어가 되므로 속도 -> RMP으로 변환하는
  *             과정이 필요하다.
  */
  void Driving::subscribe_velocity_control(const geometry_msgs::Twist &twist_msg)
  {
    // Motor 객체에 전달
    // todo : motor 객체 쪽에 속도값 전달
  }

  void Driving::subscribe_unit_action(const trash_bot::UnitControl& msg)
  {
    frb::UnitName unit = to_enum<frb::UnitName>(msg.target_object);

    if(unit != frb::UnitName::Driving && unit != frb::UnitName::All)      return;

    frb::UnitAction action = to_enum<frb::UnitAction>(msg.action);

    log_msg(LogInfo, 0, "UnitName Action Sub : " + to_string(unit) + " - " + to_string(action));

    switch(action)
    {
    case frb::UnitAction::None:
      LOG->add_log(frb::UnitName::Driving, frb::LogLevel::Error, 0, "UnitName Action None");
      break;

    case frb::UnitAction::Init:
      _state = frb::UnitState::Normal;
      _action = frb::UnitAction::Init;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      _action = frb::UnitAction::None;
      break;

    case frb::UnitAction::Move:
      _action = frb::UnitAction::Move;
      _drive->test_run();
      break;

    case frb::UnitAction::Stop:
      _action = frb::UnitAction::Stop;
      _drive->test_stop();
      break;

    case frb::UnitAction::GetStatus:
      _action = frb::UnitAction::GetStatus;
      _drive->get_motor_status();
      action_complete_notify(frb::Error::None);
      break;

    case frb::UnitAction::Finish:
      destroy();
      ros::shutdown(); // ROS 노드 종료 추가
      break;
    }    
  }
}