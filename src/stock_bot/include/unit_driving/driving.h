
#pragma once


#include <mutex>

#include <fieldro_lib/unit/unit.h>
#include <fieldro_lib/driving_mode/ackermann_double.h>
#include <sensor_msgs/Joy.h>
#include <geometry_msgs/Twist.h>
#include "zlb_drive.h"
   
namespace frb
{
  class Driving : public Unit
  {
  public:
    Driving(std::string msg_space, std::string config_file, std::string session);
    virtual ~Driving();

  protected:
    virtual void update();                                                  // object main loop
    virtual void load_option(std::string config_file);                      // option load
    virtual void subscribe_unit_action(const fieldro_msgs::UnitControl& msg);  // unit action subscribe

    AckermannDouble* _driving_mode;                                         // 주행 모드 객체

  protected:
    ros::Subscriber _subscribe_driving_control;                            // 주행 제어 subscriber
    void subscribe_driving_control(const geometry_msgs::Twist &twist_msg); // 주행 제어 subscribe callback

    // ros::Subscriber _subscribe_joy_msg;                                      // 조이스틱 subscriber
    // void subscribe_joy_msg(const sensor_msgs::Joy& joy_msg);                // 조이스틱 subscribe callback

    ros::Publisher _publish_act_velocity;                                   // 실제 속도 및 좌표 publisher
    void publish_act_velocity(geometry_msgs::Twist twist);                  // 실제 속도 및 좌표 publish 함수

    ZlbDrive* _drive[Wheel::End];                                           // drive 객체
    int32_t   _test_wheel;

    bool      _wait_actual_velocity;                                        // 실제 속도 대기 여부
    WheelControlValue _actual_velocity[Wheel::End];                         // 실제 속도
    double    _prev_velocity_check_time;                                    // 이전 속도 체크 시간            

    void action_complete_notify(int32_t wheel, const Error error);          // motor object로 부터 동작 완료 알림 콜백

    void receive_actual_velocity(int32_t wheel, WheelControlValue value);   // motor object로 부터 제어 결과 알림 콜백

    // 요청된 twist가 움직임이 있는지 없는지 확인
    bool has_movement(const geometry_msgs::Twist& twist_msg);    

    std::mutex _lock_twist;                                                 // twist lock

  protected:
    void move(double velocity);
    void steer(double degree);
    void stop();
    void reset();
    void breaking(std::string state);
    void get_motor_status();
  };
}