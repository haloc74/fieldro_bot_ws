#include "driving.h"
#include <fieldro_lib/helper/helper.h>

namespace frb
{
  /**
  * @brief      속도 제어 subscriber callback
  * @param[in]  const geometry_msgs::Twist &twist_msg : 속도 제어 메세지
  * @return     void
  * @note       Motor의 속도는 RPM으로 제어가 되므로 속도 -> RMP으로 변환하는 과정이 필요하다.
  * @attention  매우중요 : 멈추고 자동으로 속도계산을 위한 timer를 초기화 시킨다.
  * 
  */
  void Driving::subscribe_driving_control(const geometry_msgs::Twist &twist_msg)
  {
    std::lock_guard<std::mutex> lock(_lock_twist);
    
    if(!has_movement(twist_msg))  
    {
      // 움직임을 멈춰야 하는경우는 최우선적용이다.
      // _wait_actual_velocity 플래그와 상관없이 동작되어야 한다.
      for(int i=0; i<Wheel::End; i++)
      {
        _drive[Wheel::FrontLeft]->stop(false);
        _actual_velocity[i].release();
      }
      _wait_actual_velocity     = false;
      _prev_velocity_check_time = DBL_MAX;
    }
    else
    {
      // 움직여야 할 경우 이전 요청에 대한 응답이 완료되지 않은 상태에서는 보내지 않는다.
      if(_wait_actual_velocity)   return;

      WheelControlValue* value = _driving_mode->calculate_wheel_control(twist_msg);
      for(int i=0; i<Wheel::End; i++)
      {
        _drive[i]->move(value[i]._velocity, value[i]._angular);
        _actual_velocity[i].release();
      }

      // 이전 속도 측정시간이 설정 되어있지 않은 경우 설정해준다.
      // stedy clock을 사용하여 시간을 측정한다.
      // 시간의 단위는 ns 이다.
      if(_prev_velocity_check_time == DBL_MAX)
      {
        _prev_velocity_check_time = get_current_micro_time();
      }
    }

    // actual velocity 대기 플래그 설정해준다.
    _wait_actual_velocity = true;

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
      _drive[Wheel::FrontLeft]->stop(true);
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