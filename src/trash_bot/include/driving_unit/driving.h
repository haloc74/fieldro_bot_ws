
#pragma once

//#include "unit/unit.h"
#include <fieldro_lib/unit/unit.h>

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
    virtual void subscribe_unit_action(const trash_bot::UnitControl& msg);  // unit action subscribe

  protected:
    ros::Subscriber _subscribe_velocity_control;                            // 속도 제어 subscriber
    void subscribe_velocity_control(const geometry_msgs::Twist &twist_msg); // 속도 제어 subscribe callback

    ros::Publisher _publish_act_velocity;                                   // 실제 속도 및 좌표 publisher
    void publish_act_velocity(geometry_msgs::Twist twist);                  // 실제 속도 및 좌표 publish 함수

    ZlbDrive* _drive;                                                       // drive 객체
    void action_complete_notify(const Error error);                         // motor object로 부터 동작 완료 알림 콜백
    
  };
}