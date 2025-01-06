
#pragma once

#include <fieldro_lib/unit/unit.h>
#include <fieldro_lib/driving_mode/ackermann_double.h>
#include <geometry_msgs/Twist.h>
#include "zlb_drive.h"
 
namespace frb
{
  class Driving : public Unit
  {
  public:
    Driving(std::string config_file, std::string session);
    virtual ~Driving();

  protected:
    virtual void update();                                                  // object main loop
    virtual void load_option(std::string config_file);                      // option load
    virtual void subscribe_unit_action(const fieldro_msgs::UnitControl& msg);  // unit action subscribe

    AckermannDouble* _driving_mode;                                         // 주행 모드 객체

  protected:
    ros::Subscriber _subscribe_driving_control;                            // 주행 제어 subscriber
    void subscribe_driving_control(const geometry_msgs::Twist &twist_msg); // 주행 제어 subscribe callback

    ros::Publisher _publish_act_velocity;                                   // 실제 속도 및 좌표 publisher
    void publish_act_velocity(geometry_msgs::Twist twist);                  // 실제 속도 및 좌표 publish 함수

    ZlbDrive* _drive[Wheel::End];                                           // drive 객체
    void action_complete_notify(const Error error);                         // motor object로 부터 동작 완료 알림 콜백
    
  };
}