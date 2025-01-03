
#include <cmath>
#include "ackermann_double.h"


namespace frb
{
  /**
  * @brief      Ackermann 조향 구조체 초기화
  * @param[in]  double wheel_base  : 바퀴 사이 거리
  * @param[in]  double track_width : 바퀴 너비
  * @return     void
  * @note       초기화시 모든 바퀴의 각도와 속도를 0으로 설정
  */
  AckermannDouble::AckermannDouble(double wheel_base, double track_width)
  {
    _wheel_base  = wheel_base;
    _track_width = track_width;

    initialize_wheel();
  }

  /**
  * @brief      Ackermann 조향 구조체 소멸자
  * @param[in]  
  * @return     
  * @note       
  */
  AckermannDouble::~AckermannDouble()
  {
  }

  void AckermannDouble::initialize_wheel()
  {
    for(int i=0; i<Wheel::End; i++)
    {
      _value[i]._angle    = 0.0;
      _value[i]._velocity = 0.0;

      _pos[i].x = 0.0;
      _pos[i].y = 0.0;
      _pos[i].z = 0.0;
    }

    // 각 바퀴의 위치
    _pos[Wheel::FrontLeft].x  = -_track_width / 2;     
    _pos[Wheel::FrontLeft].y  = _wheel_base / 2;

    _pos[Wheel::FrontRight].x = _track_width / 2;
    _pos[Wheel::FrontRight].y = _wheel_base / 2;

    _pos[Wheel::RearLeft].x   = -_track_width / 2;
    _pos[Wheel::RearLeft].y   = -_wheel_base / 2;

    _pos[Wheel::RearRight].x  = _track_width / 2;
    _pos[Wheel::RearRight].y  = -_wheel_base / 2;
  }

  /**
  * @brief      Ackermann 조향 Value 계산
  * @param[in]  const geometry_msgs::Twist& twist : 선속도, 각속도
  * @return     WheelControlValue*                : 각 바퀴의 조향 및 속도
  * @note       
  */
  WheelControlValue* AckermannDouble::calculate_wheel_control(const geometry_msgs::Twist& twist)
  {
    const double linear_x = twist.linear.x;
    const double linear_y = twist.linear.y;
    const double angular_z = twist.angular.z;

    // 빠른 정지 상태 체크
    const double movement = std::abs(linear_x) + std::abs(linear_y);  // 근사값 사용
    if(__builtin_expect(movement < MOVEMENT_THRESHOLD && std::abs(angular_z) < ROTATION_THRESHOLD, 0)) 
    {
      for (int i = 0; i < 4; i++) 
      {
          _value[i]._velocity = 0.0;
      }
      return _value;
    }

    if(__builtin_expect(std::abs(angular_z) > ROTATION_THRESHOLD, 0)) 
    {
      // 회전 모드
      const double icr_x = -linear_y / angular_z;
      const double icr_y = linear_x / angular_z;

      // SIMD 최적화를 위한 배열 기반 처리
      for (int i = 0; i < 4; i++) 
      {
        const double dx = _pos[i].x - icr_x;
        const double dy = _pos[i].y - icr_y;
        const double radius = std::hypot(dx, dy);
        
        _value[i]._angle = std::atan2(dy, dx);
        
        // 후륜
        if (i >= 2) 
        {  
          _value[i]._angle = normalize_angle(_value[i]._angle + M_PI);
        }
        _value[i]._velocity = angular_z * radius;
      }
    } 
    else 
    {
      // 직진/측방 모드
      const double velocity = std::hypot(linear_x, linear_y);
      const double movement_angle = std::atan2(linear_y, linear_x);

      // 전륜
      _value[0]._angle = _value[1]._angle = movement_angle;
      // 후륜 (반대 방향)
      const double rear_angle = normalize_angle(movement_angle + M_PI);
      _value[2]._angle = _value[3]._angle = rear_angle;

      // 속도 계산 (cos lookup table 사용 가능)
      for (int i = 0; i < 4; i++) 
      {
        _value[i]._velocity = velocity * std::cos(movement_angle - _value[i]._angle);
      }
    }

    return _value;
  }  

  double AckermannDouble::normalize_angle(double angle)
  {
    while(angle > M_PI)  angle -= 2*M_PI;
    while(angle < -M_PI) angle += 2*M_PI;
    return angle;
  }

  gemotry_msgs::Twist AckermannDouble::calculate_actual_twist(const WheelControlValue* value)
  {
    geometry_msgs::Twist actual_twist;

    

    return actual_twist;
  }

  // // 최적화 이전
  // WheelControlValue* AckermannDouble::calculate_wheel_control(const geometry_msgs::Twist& twist)
  // {
  //   double linear_x   = twist.linear.x;    // 전진 속도
  //   double linear_y   = twist.linear.y;    // 측방 속도
  //   double angular_z  = twist.angular.z;    // 회전 속도

  //   // 정지 상태 체크
  //   if(std::abs(linear_x) < MOVEMENT_THRESHOLD && std::abs(linear_y) < MOVEMENT_THRESHOLD && std::abs(angular_z) < ROTATION_THRESHOLD)
  //   {
  //     for (int i = 0; i < 4; i++) 
  //     {
  //       _value[i]._velocity = 0.0;
  //       // 각도는 현재 상태 유지
  //     }
  //     return _value;
  //   }

  //   // ICR (Instantaneous Center of Rotation) 계산
  //   double icr_x = 0.0;
  //   double icr_y = 0.0;
    
  //   // 회전이 있는 경우
  //   if(std::abs(angular_z) > ROTATION_THRESHOLD) 
  //   {  
  //     icr_x = -linear_y / angular_z;
  //     icr_y = linear_x / angular_z;
  //   }

  //   // 각 바퀴의 조향각 계산
  //   if(std::abs(angular_z) > ROTATION_THRESHOLD) 
  //   {
  //     // 전륜 조향각 계산
  //     _value[Wheel::FrontLeft]._angle  = std::atan2(_pos[Wheel::FrontLeft].y - icr_y, _pos[Wheel::FrontLeft].x - icr_x);
  //     _value[Wheel::FrontRight]._angle = std::atan2(_pos[Wheel::FrontRight].y - icr_y, _pos[Wheel::FrontRight].x - icr_x);
      
  //     // 후륜은 전륜과 반대 방향으로 조향 (Double Ackermann)
  //     _value[Wheel::RearLeft]._angle   = normalize_angle(std::atan2(_pos[Wheel::RearLeft].y - icr_y, _pos[Wheel::RearLeft].x - icr_x) + M_PI);
  //     _value[Wheel::RearRight]._angle  = normalize_angle(std::atan2(_pos[Wheel::RearRight].y - icr_y, _pos[Wheel::RearRight].x - icr_x) + M_PI);
  //   } 
  //   else 
  //   {   // 직진 또는 측방 이동의 경우
  //     if (std::abs(linear_x) < MOVEMENT_THRESHOLD && std::abs(linear_y) < MOVEMENT_THRESHOLD) 
  //     {
  //       return _value;  // 현재 각도 유지
  //     }
      
  //     double angle = std::atan2(linear_y, linear_x);

  //     // 전륜 조향
  //     _value[Wheel::FrontLeft]._angle  = angle;
  //     _value[Wheel::FrontRight]._angle = angle;
      
  //     // 후륜은 반대 방향으로 조향 (Double Ackermann)
  //     _value[Wheel::RearLeft]._angle   = normalize_angle(angle + M_PI);
  //     _value[Wheel::RearRight]._angle  = normalize_angle(angle + M_PI);
  //   }

  //   // 각 바퀴의 속도 계산
  //   if (std::abs(angular_z) > ROTATION_THRESHOLD) 
  //   {
  //     // 회전 반경에 따른 속도 계산
  //     double fl_radius = std::sqrt(std::pow(_pos[Wheel::FrontLeft].x - icr_x, 2)  + std::pow(_pos[Wheel::FrontLeft].y - icr_y, 2));
  //     double fr_radius = std::sqrt(std::pow(_pos[Wheel::FrontRight].x - icr_x, 2) + std::pow(_pos[Wheel::FrontRight].y - icr_y, 2));
  //     double rl_radius = std::sqrt(std::pow(_pos[Wheel::RearLeft].x - icr_x, 2)   + std::pow(_pos[Wheel::RearLeft].y - icr_y, 2));
  //     double rr_radius = std::sqrt(std::pow(_pos[Wheel::RearRight].x - icr_x, 2)  + std::pow(_pos[Wheel::RearRight].y - icr_y, 2));

  //     _value[Wheel::FrontLeft]._velocity   = angular_z * fl_radius;
  //     _value[Wheel::FrontRight]._velocity  = angular_z * fr_radius;
  //     _value[Wheel::RearLeft]._velocity    = angular_z * rl_radius;
  //     _value[Wheel::RearRight]._velocity   = angular_z * rr_radius;
  //   } 
  //   else 
  //   {
  //     // 직진 또는 측방 이동시 속도 계산
  //     //double velocity = std::sqrt(std::pow(linear_x, 2) + std::pow(linear_y, 2));
  //     double velocity = std::hypot(linear_x, linear_y);
  //     double movement_angle = std::atan2(linear_y, linear_x);

  //     // 각 바퀴의 각도와 이동 방향에 따른 속도 계산
  //     _value[Wheel::FrontLeft]._velocity  = velocity * std::cos(movement_angle - _value[Wheel::FrontLeft]._angle);
  //     _value[Wheel::FrontRight]._velocity = velocity * std::cos(movement_angle - _value[Wheel::FrontRight]._angle);
  //     _value[Wheel::RearLeft]._velocity   = velocity * std::cos(movement_angle - _value[Wheel::RearLeft]._angle);
  //     _value[Wheel::RearRight]._velocity  = velocity * std::cos(movement_angle - _value[Wheel::RearRight]._angle);
  //   }
  //   return _value;
  // }  
}