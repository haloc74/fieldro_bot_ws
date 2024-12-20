
#pragma once

#include <geometry_msgs/Twist.h>
#include "odometry/motor_metrics.h"

namespace frb
{
  enum class WheelPos
  {
    Left  = 0,        // or Left_Front
    Right,            // or Right_Front
    Left_Rear,
    Right_Rear,
    End,
  };

  /**
  * @author		  Fieldro : haloc@fieldro.tech
  * @date			  24-12-20
  * @brief		  오도메트리 계산을 위한 클래스
  * @note			
  * @attention  현재 Differantial Model만 구현 되어있다.
  * @todo       Ackerman Model에 대한 twist_to_wheel_velocity(), velocity_to_rpm() 함수 구현 필요
  *             Ackerman Model에 계산에 필요한 변수 추가 필요
  *             - 각 Wheel의 각도 
  *             - enum Class WEEL에 LEFT_REAR, RIGHT_REAR 추가 ...
  *             상속을 통한 Differantial Model, Ackerman Model을 분리 시켜야 할 것으로 보임.
  * @see			
  */
  class OdometryCalculator
  {
  public:
    OdometryCalculator(double gear_ratio, double wheel_distance, double wheel_radius, double pulse_per_degree, int32_t max_rpm);
    ~OdometryCalculator();

    // // Differential Model 
    // 선속도와 각속도를 agv 환경에 따른 휠 rpm으로 변환
    int16_t twist_to_wheel_rpm(double linear, double angular, WheelPos wheel);

    // Encoder 변화량을 Twist로 변환
    geometry_msgs::Twist encoder_delta_to_twist(MotorMetrics<int32_t>* delta, double interval);

    // Ackerman Model
    // todo : 선속도, 각속도 -> 환경에 따른 휠 rpm으로 변환
    // todo : Encoder 변화량을 Twist로 변환

  protected:
    OdometryCalculator() {}

    // Differantial Model 
    double twist_to_wheel_velocity(double linear, double angular, WheelPos wheel); // 선속도, 각속도 -> 휠 속도
    int16_t velocity_to_rpm(double velocity);                                   // 속도 -> 휠 rpm 변환

    // Ackerman Model
    // todo : 선속도, 각속도 -> 휠속도 변환
    // todo : 속도 -> 휠 rpm 변환


  protected:
    double    _wheel_distance;      // 두바퀴 사이의 거리 (왼쪽, 오른쪽)
    double    _wheel_radius;        // 바퀴 직경
    double    _gear_ratio;          // 기어비
    double    _pulse_per_degree;    // 1도당 펄스수
    int32_t   _max_rpm;             // 최대 RPM
  };
}