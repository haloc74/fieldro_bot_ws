
#pragma once


#include <mutex>

#include <fieldro_msgs/ManualControl.h>
#include <fieldro_lib/unit/unit.h>
#include <fieldro_lib/driving_mode/ackermann_double.h>
#include <fieldro_lib/helper/thread_pool.h>
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
    ThreadPool*     _thread_pool;                                           // thread pool 객체

  protected:
    // vel_control subscriber
    ros::Subscriber _subscribe_driving_control;
    void subscribe_driving_control(const geometry_msgs::Twist &twist_msg);

    // Manual Control Subscriber
    ros::Subscriber _subscribe_manual_control;                        // 수동 제어를 받기 위한 subscriber
    void subscribe_manual_control(const fieldro_msgs::ManualControl& msg);  // 수동 제어를 받기 위한 callback 함수

    // act_vel publisher
    ros::Publisher _publish_act_velocity;
    void publish_act_velocity(geometry_msgs::Twist twist);

    ZlbDrive* _drive[Wheel::End];                             // drive 객체

    double _last_steer_value;         // 이전 조향값
    double _last_thrust_value;        // 이전 추진값
    double _thrust_scale;         // 수동조작 시 추진 scale
    double _steer_scale;           // 수동조작 시 회전 scale

    bool      _wait_actual_velocity;                          // 실제 속도 대기 여부
    WheelControlValue _actual_velocity[Wheel::End];           // 실제 속도
    double    _prev_velocity_check_time;                      // 이전 속도 체크 시간            

    // motor object로 부터 동작 완료 알림 콜백
    void action_complete_notify(int32_t wheel, const Error error);          

    // motor object로 부터 제어 결과 알림 콜백
    void receive_actual_velocity(int32_t wheel, WheelControlValue value);   

    // 요청된 twist가 움직임이 있는지 없는지 확인
    bool has_movement(const geometry_msgs::Twist& twist_msg);    

    // twist lock
    std::mutex _lock_twist;                   
    
    void update_thrust_velocity(double velocity);     // 주행속도 update
    void update_steer_velocity(double velocity);       // 조향속도 update

  protected:
    void transmit_thrust(double velocity);      // 실제 추진 명령을 motor 객체로 전달
    void transmit_steer(double velocity);       // 실제 조향 명령을 motor 객체로 전달
    void stop();
    void reset();
    void breaking(std::string state);
    void get_motor_status();

    bool is_update_filter(double prev_value, double cur_value, double gap);
  };
}