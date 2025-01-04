
#pragma once

#include <stdint.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Point.h>

namespace frb
{
  namespace Wheel
  {
    constexpr int32_t FrontLeft  = 0;
    constexpr int32_t FrontRight = 1;
    constexpr int32_t RearLeft   = 2;
    constexpr int32_t RearRight  = 3;
    constexpr int32_t End        = 4;
  }

  /**
  * @author		Fieldro : haloc@fieldro.tech
  * @date			25-01-03
  * @brief		주행을 위해 각 바퀴의 조향 및 속도를 저장하는 구조체
  * @note			
  * @details	
  * @see			
  */
  class WheelControlValue
  {
  public:
    WheelControlValue()
    {
      _angle    = 0.0;
      _velocity = 0.0;
    }

    WheelControlValue(double angle, double velocity)
    {
      _angle    = angle;
      _velocity = velocity;
    }

    ~WheelControlValue()
    {
    }

    // 복사생성자
    WheelControlValue(const WheelControlValue& value)
    {
      _angle    = value._angle;
      _velocity = value._velocity;
    }
    WheelControlValue(const WheelControlValue* value)
    {
      _angle    = value->_angle;
      _velocity = value->_velocity;
    }

    // 대입연산자
    WheelControlValue& operator=(const WheelControlValue& value)
    {
      _angle    = value._angle;
      _velocity = value._velocity;
      return *this;
    }
    WheelControlValue& operator=(const WheelControlValue* value)
    {
      _angle    = value->_angle;
      _velocity = value->_velocity;
      return *this;
    }

    // - 연산자
    WheelControlValue operator-(const WheelControlValue& value)
    {
      WheelControlValue result;
      result._angle    = _angle   - value._angle;
      result._velocity = _velocity- value._velocity;
      return result;
    }
    WheelControlValue operator-(const WheelControlValue* value)
    {
      WheelControlValue result;
      result._angle    = _angle   - value->_angle;
      result._velocity = _velocity- value->_velocity;
      return result;
    }    

    double _angle;    // 조향 (radian)
    double _velocity; // 속도 (m/s)
  };

  
  /**
  * @author		Fieldro : haloc@fieldro.tech
  * @date			25-01-02
  * @brief		Ackerman 조향 중 4 steering wheel을 사용하는 차량의 구조체
  *           - 전륜(앞바퀴)과 후륜(뒷바퀴)이 서로 반대 방향으로 조향
  *           - 좌우 바퀴는 같은 각도로 조향
  * @note			
  * @details	
  * @see			Ackermann Mode.drawio 참조
  */
  class AckermannDouble
  {
  public:
    AckermannDouble(double wheel_base, double track_width);
    ~AckermannDouble();

    // Twist 메시지를 받아서 각 바퀴의 조향 및 속도를 계산
    WheelControlValue* calculate_wheel_control(const geometry_msgs::Twist& twist);

    // 각 바퀴의 조향 및 속도를 받아서 Twist 메시지를 계산
    geometry_msgs::Twist calculate_actual_twist(const WheelControlValue* value, double delta_time);

  protected:
    AckermannDouble() {}
    static constexpr double ROTATION_THRESHOLD = 1e-6;    // 회전 판단 임계값
    static constexpr double MOVEMENT_THRESHOLD = 1e-6;    // 이동 판단 임계값

    double _wheel_base;   // wheel base   : 축간 거리 (전륜 - 후륜)
    double _track_width;  // track width  : 윤간 거리 (좌륜 - 우륜)

    WheelControlValue     _value[Wheel::End];     // 각 바퀴의 조향 및 속도
    geometry_msgs::Point  _pos[Wheel::End];       // 각 바퀴의 위치

    void initialize_wheel();                      // 바퀴 데이터 초기화 및 설정
    double normalize_angle(double angle);         // 각도 정규화 (0 ~ 2PI)

  };
}