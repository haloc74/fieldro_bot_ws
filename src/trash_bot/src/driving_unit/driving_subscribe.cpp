#include "driving.h"

namespace frb
{
  /**
  * @brief      속도 제어 subscriber callback
  * @param[in]  const geometry_msgs::Twist &twist_msg : 속도 제어 메세지
  * @return     void
  * @note       Motor의 속도는 RPM으로 제어가 되므로 속도 -> RMP으로 변환하는 과정이 필요하다.
  */
  void Driving::subscribe_driving_control(const geometry_msgs::Twist &twist_msg)
  {
    std::lock_guard<std::mutex> lock(_lock_twist);
    
    if(!has_movement(twist_msg))  
    {
      // Bug Fix !!!!!
      // angle이 아니라 각속도로 전달이 되어야 한다.
      for(int i=0; i<Wheel::End; i++)
      {
        _drive[i]->move(0.0, 0.0);
      }
    }
    else
    {
      // Bug Fix !!!!!
      // angle이 아니라 각속도로 전달이 되어야 한다.
      WheelControlValue* value = _driving_mode->calculate_wheel_control(twist_msg);
      for(int i=0; i<Wheel::End; i++)
      {
        //_drive[i]->move(value[i]._velocity, value[i]._angle);
      }
    }

    // todo : 각각의 모터에 해당 데이터를 전달 해야 한다.

    // Front Left
    // (value+0)->_angle;
    // (value+0)->_velocity;

    // Front Right
    // (value+1)->_angle;
    // (value+1)->_velocity;

    // Rear Left
    // (value+2)->_angle;
    // (value+2)->_velocity;

    // Rear Right
    // (value+3)->_angle;
    // (value+3)->_velocity;

    return;
  }

  void Driving::subscribe_unit_action(const fieldro_msgs::UnitControl& msg)
  {
    frb::UnitName unit = to_enum<frb::UnitName>(msg.target_object);

    if(unit != frb::UnitName::Driving && unit != frb::UnitName::All)      return;

    frb::UnitAction action = to_enum<frb::UnitAction>(msg.action);
    double value = 0.0;

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

    case frb::UnitAction::Release:
      _action = frb::UnitAction::Release;
      _drive[Wheel::FrontLeft]->release_break();
      break;

    case frb::UnitAction::Move:
      _action = frb::UnitAction::Move;
      _drive[Wheel::FrontLeft]->test_run();
      break;

    case frb::UnitAction::Stop:
      _action = frb::UnitAction::Stop;
      _drive[Wheel::FrontLeft]->engage_break();
      break;

    case frb::UnitAction::Turn:
      _action = frb::UnitAction::Turn;
      value = std::stod(msg.command);
      _drive[Wheel::FrontLeft]->test_turn(value);
      break;

    case frb::UnitAction::GetStatus:
      _action = frb::UnitAction::GetStatus;
      //_drive->get_motor_status();
      action_complete_notify(-1, frb::Error::None);
      break;

    case frb::UnitAction::Finish:
      destroy();
      ros::shutdown(); // ROS 노드 종료 추가
      break;
    }    
  }
}