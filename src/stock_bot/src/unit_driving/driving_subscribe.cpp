#include "driving.h"
//#include <fieldro_lib/helper/helper.h>
#include "package/package_helper.h"
#include "package/unit_define.h"

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
  // void Driving::subscribe_driving_control(const geometry_msgs::Twist &twist_msg)
  // {
  //   std::lock_guard<std::mutex> lock(_lock_twist);
    
  //   if(!has_movement(twist_msg))  
  //   {
  //     // 움직임을 멈춰야 하는경우는 최우선적용이다.
  //     // _wait_actual_velocity 플래그와 상관없이 동작되어야 한다.
  //     for(int i=0; i<Wheel::End; i++)
  //     {
  //       _drive[Wheel::FrontLeft]->stop(false);
  //       _actual_velocity[i].release();
  //     }
  //     _wait_actual_velocity     = false;
  //     _prev_velocity_check_time = DBL_MAX;
  //   }
  //   else
  //   {
  //     // 움직여야 할 경우 이전 요청에 대한 응답이 완료되지 않은 상태에서는 보내지 않는다.
  //     if(_wait_actual_velocity)   return;

  //     WheelControlValue* value = _driving_mode->calculate_wheel_control(twist_msg);
  //     for(int i=0; i<Wheel::End; i++)
  //     {
  //       _drive[i]->move(value[i]._velocity, value[i]._angular);
  //       _actual_velocity[i].release();
  //     }

  //     // 이전 속도 측정시간이 설정 되어있지 않은 경우 설정해준다.
  //     // stedy clock을 사용하여 시간을 측정한다.
  //     // 시간의 단위는 ns 이다.
  //     if(_prev_velocity_check_time == DBL_MAX)
  //     {
  //       _prev_velocity_check_time = get_current_micro_time();
  //     }
  //   }
  //   // actual velocity 대기 플래그 설정해준다.
  //   _wait_actual_velocity = true;
  //   return;
  // }

  void Driving::subscribe_manual_control(const fieldro_msgs::ManualControl& msg)
  {
    double value = 0.0;

    //move(msg.propulsion_value);
    if(is_update_filter(_last_propulsion_value, msg.propulsion_value, 0.05))
    {
      _last_propulsion_value = msg.propulsion_value * 3.0;
      if(abs(_last_propulsion_value) <= 0.05) _last_propulsion_value = 0.0;
      move(msg.propulsion_value);
    }

    //steer(msg.steering_value);
    if(is_update_filter(_last_steer_value, msg.steering_value, 0.1))
    {
      //_last_steer_value = msg.steering_value;
      double steer_value = msg.steering_value*100.0;
      if(steer_value > 100.0) steer_value = 100.0;
      if(steer_value < -100.0) steer_value = -100.0;

      if(abs(_last_steer_value) <= 10.0) _last_steer_value = 0.0;

      _last_steer_value = steer_value;

      steer(_last_steer_value);
    }

    log_msg(LogInfo, 0, "control data : " + 
            std::to_string(msg.propulsion_value) +
            "  " +
            std::to_string(msg.steering_value));

    // int32_t remain_packets = _drive[2]->get_remain_packet_count();
    // log_msg(LogInfo, 0, "Remain Packets : " + std::to_string(remain_packets));    
  }

  bool Driving::is_update_filter(double prev_value, double cur_value, double gap)
  {
    if(std::abs(prev_value - cur_value) > gap)  
      return true;
    return false;
  }

  void Driving::subscribe_driving_control(const geometry_msgs::Twist &twist_msg)
  {
    move(twist_msg.linear.x);
    steer(twist_msg.angular.z);

    return;
  }  

  void Driving::subscribe_unit_action(const fieldro_msgs::UnitControl& msg)
  {
    frb::UnitName unit = to_enum<frb::UnitName>(msg.target_object);

    if(unit != frb::UnitName::Driving && unit != frb::UnitName::All)      return;

    frb::UnitAction action = to_enum<frb::UnitAction>(msg.action);

    double value = std::numeric_limits<double>::max();
    if(msg.command != "" && is_number(msg.command))
    {
      value = std::stod(msg.command);
    }

    log_msg(LogInfo, 0, "UnitName Action Sub : " + to_string(unit) + " - " + to_string(action));

    switch(action)
    {
    case frb::UnitAction::None:
      LOG->add_log(_name, frb::LogLevel::Error, 0, "UnitName Action None");
      break;

    case frb::UnitAction::Init:
      _state = frb::UnitState::Normal;
      _action = frb::UnitAction::Init;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      _action = frb::UnitAction::None;
      break;

    // case frb::UnitAction::Release:
    //   _action = frb::UnitAction::Release;
    //   Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
    //   _drive[_test_wheel]->release_break();
    //   break;

    case frb::UnitAction::Break:
      _action = frb::UnitAction::Break;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      breaking(msg.command);
      break;

    case frb::UnitAction::Move:
      _action = frb::UnitAction::Move;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      move(value);
      break;

    case frb::UnitAction::Stop:
      _action = frb::UnitAction::Stop;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      //_drive[_test_wheel]->stop(true);
      stop();
      break;

    case frb::UnitAction::Steer:
      _action = frb::UnitAction::Steer;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      steer(value);
      break;

    case frb::UnitAction::GetStatus:
      _action = frb::UnitAction::GetStatus;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      // _drive[_test_wheel]->get_motor_status(to_int(frb::SlaveId::Traction));
      // _drive[_test_wheel]->get_motor_status(to_int(frb::SlaveId::Steering));
      action_complete_notify(-1, frb::Error::None);
      get_motor_status();
      break;
    
    case frb::UnitAction::Reset:
      _action = frb::UnitAction::Reset;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      reset();
      //_drive[_test_wheel]->reset();
      break;

    case frb::UnitAction::Finish:
      destroy();
      ros::shutdown(); // ROS 노드 종료 추가
      break;
    }    
  }

  void Driving::move(double velocity)
  {
    if(velocity == std::numeric_limits<double>::max())  return;

    for(int i=0; i<Wheel::End; i++)
    {
      if(_drive[i] != nullptr)  _drive[i]->propulsion(velocity);
    }
  }

  void Driving::steer(double degree)
  {
    if(degree == std::numeric_limits<double>::max())  return;

    log_msg(LogInfo, 0, "Steer : " + std::to_string(degree));

    for(int i=0; i<Wheel::End; i++)
    {
      //if(_drive[i] != nullptr)  _drive[i]->steering(degree);
      if(_drive[i] != nullptr)  _drive[i]->steering_vel(degree);
    }
  }

  void Driving::stop()
  {
    for(int i=0; i<Wheel::End; i++)
    {
      if(_drive[i] != nullptr)  _drive[i]->stop(true);
    }
  }

  void Driving::reset()
  {
    for(int i=0; i<Wheel::End; i++)
    {
      if(_drive[i] != nullptr)  _drive[i]->reset();
    }
  }

  void Driving::breaking(std::string state)
  {
    bool flag = true;
    if(state != "" && state == "off")
    {
      flag = false;
    }

    for(int i=0; i<Wheel::End; i++)
    {
      if(_drive[i] != nullptr)  _drive[i]->breaking(flag);
    }
  }

  void Driving::get_motor_status()
  {
    for(int i=0; i<Wheel::End; i++)
    {
      if(_drive[i] != nullptr)  _drive[i]->get_motor_status(to_int(frb::SlaveId::Traction));
      if(_drive[i] != nullptr)  _drive[i]->get_motor_status(to_int(frb::SlaveId::Steering));
    }
  }
}