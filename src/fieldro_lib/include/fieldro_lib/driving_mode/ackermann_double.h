
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

  std::string get_wheel_name(int32_t wheelIndex); 
  // {
  //   switch (wheelIndex) 
  //   {
  //     case Wheel::FrontLeft:  return "FrontLeft";
  //     case Wheel::FrontRight: return "FrontRight";
  //     case Wheel::RearLeft:   return "RearLeft";
  //     case Wheel::RearRight:  return "RearRight";
  //     default:                return "Unknown";
  //   }
  //   return "Unknown";
  // }  

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
      _angular  = 0.0;
      _velocity = 0.0;
    }
    WheelControlValue(double angle, double velocity)
    {
      _angular  = angle;
      _velocity = velocity;
    }

    ~WheelControlValue()
    {
    }

    void release()
    {
      _angular = DBL_MAX;
      _velocity = DBL_MAX;
    }

    void set(double angle, double velocity)
    {
      _angular  = angle;
      _velocity = velocity;
    }

    bool has_value()
    {
      return (_angular != DBL_MAX && _velocity != DBL_MAX);
    }

    // 복사생성자
    WheelControlValue(const WheelControlValue& value)
    {
      _angular    = value._angular;
      _velocity = value._velocity;
    }
    WheelControlValue(const WheelControlValue* value)
    {
      _angular    = value->_angular;
      _velocity = value->_velocity;
    }

    // 대입연산자
    WheelControlValue& operator=(const WheelControlValue& value)
    {
      _angular    = value._angular;
      _velocity = value._velocity;
      return *this;
    }
    WheelControlValue& operator=(const WheelControlValue* value)
    {
      _angular    = value->_angular;
      _velocity = value->_velocity;
      return *this;
    }

    // - 연산자
    WheelControlValue operator-(const WheelControlValue& value)
    {
      WheelControlValue result;
      result._angular    = _angular   - value._angular;
      result._velocity = _velocity- value._velocity;
      return result;
    }
    WheelControlValue operator-(const WheelControlValue* value)
    {
      WheelControlValue result;
      result._angular    = _angular   - value->_angular;
      result._velocity = _velocity- value->_velocity;
      return result;
    }    

    double _angular;    // 조향 (radian)
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
  * @see			Ackermann Mode.drawio, define/driving_define.h 참조
  */
  class AckermannDouble
  {
  public:
    AckermannDouble(double wheel_base, double track_width);
    ~AckermannDouble();

    // Twist 메시지를 받아서 각 바퀴의 조향 및 속도를 계산
    WheelControlValue* calculate_wheel_control_degree(const geometry_msgs::Twist& twist);
    WheelControlValue* calculate_wheel_control(const geometry_msgs::Twist& twist);

    // 각 바퀴의 조향 및 속도를 받아서 Twist 메시지를 계산
    geometry_msgs::Twist calculate_actual_twist(const WheelControlValue* value, double delta_time);

  protected:
    AckermannDouble() {}


    double _wheel_base;   // wheel base   : 축간 거리 (전륜 - 후륜)
    double _track_width;  // track width  : 윤간 거리 (좌륜 - 우륜)

    WheelControlValue     _value[Wheel::End];     // 각 바퀴의 조향 및 속도
    geometry_msgs::Point  _pos[Wheel::End];       // 각 바퀴의 위치

    void initialize_wheel();                      // 바퀴 데이터 초기화 및 설정
    double normalize_angle(double angle);         // 각도 정규화 (-PI ~ PI)

    void calculate_complex_control(const geometry_msgs::Twist& twist, double movement);
    void calculate_linear_control(const geometry_msgs::Twist& twist, double movement);
    void calculate_rotation_control(const geometry_msgs::Twist& twist, double movement);
  };
}