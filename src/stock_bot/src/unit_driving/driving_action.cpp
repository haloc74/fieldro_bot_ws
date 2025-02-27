#include "driving.h"
#include "package/package_helper.h"
#include "package/unit_define.h"

namespace frb
{
  /**
  * @brief      Joystick 수동 조작시 추진속도 업데이트
  * @param[in]  double velocity : 추진 속도
  * @return     void
  * @note       last 속도와 비교하여 속도 변화가 작을 경우 반영하지 않는다.
  * @attention  실제 motor에 값을 전달 할 때는 꼭 propulsion_scale을 곱하여 전달해야 한다.
  * 
  */
  void Driving::update_thrust_velocity(double velocity)
  {
    // 속도 변화가 작을 경우 반영하지 않는다.
    if(!is_update_filter(_last_thrust_value, velocity, 0.1)) 
    {
      return;
    }

    // 추진속도 업데이트
    _last_thrust_value = velocity;

    // 잔진동을 방지하기 위한 Filter
    if(abs(_last_thrust_value) < 0.05)
    {
      _last_thrust_value = 0.0;
    }

    // 추진값을 motor 객체로 전달
    transmit_thrust(_last_thrust_value*_thrust_scale);
    log_msg(LogInfo, 0, "thrust data : " + std::to_string(_last_thrust_value*_thrust_scale));

    return;
  }

  /**
  * @brief      Joystick 수동 조작시 조향값 업데이트
  * @param[in]  double velocity : 조향값
  * @return     void
  * @note       last 조향값과 비교하여 조향값 변화가 작을 경우 반영하지 않는다.
  * @attention  실제 motor에 값을 전달 할 때는 꼭 steering_scale을 곱하여 전달해야 한다.
  */
  void Driving::update_steer_velocity(double velocity)
  {
    // 조향값 변화가 작을 경우 반영하지 않는다.
    if(!is_update_filter(_last_steer_value, velocity, 0.1))
    {
      return;
    }

    // 조향속도 업데이트
    _last_steer_value = velocity;

    // 잔진동을 방지하기 위한 Filter
    if(abs(_last_steer_value) < 0.1)
    {
      _last_steer_value = 0.0;
    }

    // 조향값을 motor 객체로 전달
    transmit_steer(_last_steer_value*_steer_scale);
    log_msg(LogInfo, 0, "steer data : " + std::to_string(_last_steer_value*_steer_scale));

    return;
  } 

  /**
  * @brief      모터 객체의 동작을 멈춤
  * @note       
  */
  void Driving::stop()
  {
    for(int i=0; i<Wheel::End; i++)
    {
      if(_drive[i] != nullptr)  _drive[i]->stop(true);
    }
  }

  /**
  * @brief      모터 Drive Reset
  * @param[in]  
  * @note       Motor Drive Error 발생시 리셋
  */
  void Driving::reset()
  {
    for(int i=0; i<Wheel::End; i++)
    {
      if(_drive[i] != nullptr)  _drive[i]->reset();
    }
  }

  /**
  * @brief      모터 객체의 Break 동작
  * @param[in]  std::strring state : off - break off, on - break on
  * @return     void
  * @note       
  */
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
}