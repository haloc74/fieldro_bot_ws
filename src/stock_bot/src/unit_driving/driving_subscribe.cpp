#include "driving.h"
//#include <fieldro_lib/helper/helper.h>
#include "package/package_helper.h"
#include "package/unit_define.h"

namespace frb
{
  /**
  * @brief      TCT를 이용한 자동 주행 시 속도 제어 subscriber callback 
  * @param[in]  const geometry_msgs::Twist &twist_msg : 속도 제어 메세지
  * @return     void
  * @note       Motor의 속도는 RPM으로 제어가 되므로 속도 -> RMP으로 변환하는 과정이 필요하다.
  * @todo       주행방식에 따라서 각 모터의 속도를 계산하여 전달해야 한다.
  * @attention  매우중요 : 멈추고 자동으로 속도계산을 위한 timer를 초기화 시킨다. 
  */
 void Driving::subscribe_driving_control(const geometry_msgs::Twist &twist_msg)
 {
   transmit_thrust(twist_msg.linear.x);

   transmit_steer(twist_msg.angular.z);

   return;
 }  
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


  /**
  * @brief      수동조작(Joystick) 시 수신되는 메세지 처리
  * @param[in]  const fieldro_msgs::ManualControl& msg : 수동조작 메세지
  * @return     void
  * @note       
  */
  void Driving::subscribe_manual_control(const fieldro_msgs::ManualControl& msg)
  {
    // 추진 속도 업데이트
    update_thrust_velocity(msg.propulsion_value);

    // 조향값 업데이트
    update_steer_velocity(msg.steering_value);

    // log data
    log_msg(LogInfo, 0, "control data : " + 
            std::to_string(msg.propulsion_value) +
            "  " +
            std::to_string(msg.steering_value));
  }

  /**
  * @brief      main unitd으로 부터 publish 되는 지령 수신
  * @param[in]  const fieldro_msgs::UnitControl& msg : unit action 메세지
  * @return     void
  * @note       
  */
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
      for(int i=0; i<Wheel::End; i++)
      {
        if(_drive[i] != nullptr)  _drive[i]->wheel_alignment();
      }
      break;

    case frb::UnitAction::Break:
      _action = frb::UnitAction::Break;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      breaking(msg.command);
      break;

    case frb::UnitAction::Move:
      _action = frb::UnitAction::Move;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      transmit_thrust(value);
      break;

    case frb::UnitAction::Stop:
      _action = frb::UnitAction::Stop;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      stop();
      break;

    case frb::UnitAction::Steer:
      _action = frb::UnitAction::Steer;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      transmit_steer(value);
      break;

    case frb::UnitAction::GetStatus:
      _action = frb::UnitAction::GetStatus;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      action_complete_notify(-1, frb::Error::None);
      get_motor_status();
      break;
    
    case frb::UnitAction::Reset:
      _action = frb::UnitAction::Reset;
      Unit::publish_unit_action_complete(to_int(_action), to_int(frb::Error::None));
      reset();
      break;

    case frb::UnitAction::Finish:
      destroy();
      ros::shutdown(); // ROS 노드 종료 추가
      break;
    }    
  }




}