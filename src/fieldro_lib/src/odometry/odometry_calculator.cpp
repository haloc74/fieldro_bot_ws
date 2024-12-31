
#include "odometry/odometry_calculator.h"

#include <math.h>
//#include "helper/helper.h"
#include <fieldro_lib/helper/helper.h>

namespace frb
{
  OdometryCalculator::OdometryCalculator(double gear_ratio, double wheel_distance, double wheel_radius, double pulse_per_degree, int32_t max_rpm)
  {
    _gear_ratio       = gear_ratio;
    _wheel_distance   = wheel_distance;
    _wheel_radius     = wheel_radius;
    _pulse_per_degree = pulse_per_degree;
    _max_rpm          = max_rpm;
  }

  OdometryCalculator::~OdometryCalculator()
  {
  }

  /**
  * @brief      Encoder 변화량을 Twist로 변환
  * @param      WheelEncoder* delta : encoder 변화량
  * @param      double interval : 시간 간격
  * @return     geometry_msgs::Twist : 선속도, 각속도
  */
  geometry_msgs::Twist OdometryCalculator::encoder_delta_to_twist(MotorMetrics<int32_t>* delta, double interval)
  {
    // 1. encoder 변화량 -> 각도로 변환
    double left_degree = (double)delta->_left  * _pulse_per_degree;
    double right_degree = (double)delta->_right * _pulse_per_degree;

    // 2. 속도로 변형 (rad/sec)
    double left_rad   = (left_degree/interval) * M_PI / 180.0;
    double right_rad  = (right_degree/interval) * M_PI / 180.0;

    // 3. rad/sec -> m/sec로 변환
    double left_mps   = left_rad * _wheel_radius;
    double right_mps  = right_rad * _wheel_radius;  

    // 4. 선속도와 각속도 구하기
    double linear_velocity  = (left_mps + right_mps) / 2.0;
    double angular_velocity = (right_rad - left_rad) * _wheel_radius / _wheel_distance * -1.0;  

    // 5. Twist로 변환
    geometry_msgs::Twist twist;
    twist.linear.x  = linear_velocity;
    twist.angular.z = -angular_velocity;

    return twist;
  }

  /**
  * @brief      선속도와 각속도를 휠 RPM으로 변환
  * @param      double linear : 선속도
  * @param      double angular : 각속도
  * @param      WHEEL wheel : 휠 위치
  * @return     wheel RPM
  */
  int16_t OdometryCalculator::twist_to_wheel_rpm(double linear, double angular, WheelPos wheel)
  {
    double wheel_velocity = twist_to_wheel_velocity(linear, angular, wheel);
    return velocity_to_rpm(wheel_velocity);
  }

  /**
  * @brief      선속도와 각속도를 휠 속도로 변환
  * @param      double linear : 선속도
  * @param      double angular : 각속도
  * @param      WHEEL wheel : 휠 위치
  * @return     해당 휠의 velocity
  * @note       _parameter->nWheelLength = 휠간의 거리
  */
  double OdometryCalculator::twist_to_wheel_velocity(double linear, double angular, WheelPos wheel)
  {
    double wheel_velocity = 0.0;

    if(wheel == WheelPos::Right)
    {
      wheel_velocity = linear + (angular * _wheel_distance / 2.0);
    }
    else if(wheel == WheelPos::Left)
    {
      wheel_velocity = linear - (angular * _wheel_distance / 2.0);
    }

    return wheel_velocity;
  }

  /**
  * @brief      속도를 RPM으로 변환
  * @param      double velocity : 속도 (m/s)
  * @return     감속비 고려된 RPM
  * @attention  rpm 은 최소, 최대값이 고려되어야 한다.
  */
  int16_t OdometryCalculator::velocity_to_rpm(double velocity)
  {
    // rpm = V / (r * (2.0*M_PI/60.0))
    double rpm = velocity / (_wheel_radius * (2.0 * M_PI )) * 60.0;

    // 감속비 적용
    rpm *= _gear_ratio;

    // rpm 최대, 최소 제한 
    rpm = limit_value((int32_t)rpm, -_max_rpm, _max_rpm);

    return (int16_t)rpm;
  }
}