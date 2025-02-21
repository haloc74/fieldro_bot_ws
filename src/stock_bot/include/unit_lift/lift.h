#pragma once

#include <mutex>
#include "ros/ros.h"

#include <fieldro_lib/unit/unit.h>
//#include <fieldro_lib/define/unit_define.h>
#include <fieldro_msgs/IOSignal.h>
#include <fieldro_msgs/ManualControl.h>

#include "motion_info.h"
#include "eld2_rs7020b.h"
#include "unit_io/digital_in_define.h"
#include "package/unit_define.h"

namespace frb
{
  #define CHECK_NONE    0
  #define TIMEOUT_NONE  0

  class Lift : public Unit
  {
  public:
    Lift(std::string msg_space, std::string config_file, std::string session);
    virtual ~Lift();

  protected:
    virtual void update();                                                  // object main loop
    virtual void load_option(std::string config_file);                      // option load
    virtual void subscribe_unit_action(const fieldro_msgs::UnitControl& msg);  // unit action subscribe

    ELD2_RS7020B*       _motor;                                       // Motor 객체
    MotionInfo          _motion;                                      // 동작 정보 (범위, 시간, 속도, timeout 등 정보)
    double  _joystick_scale;  // 수동 제어를 위한 속도 scale factor

    // sensor info receive
    int64_t _sensor_data_update_mask;                                 // sensor data update mask
    int64_t _prev_sensor_data;                                        // 이전 센서 상태를 저장하기 위한 변수
    ros::Subscriber _subscribe_iosignal;                              // IOSignal을 받기 위한 subscriber 
    void subscribe_iosignal(const fieldro_msgs::IOSignal& msg);       // IOSignal을 받기 위한 callback 함수
    ros::Subscriber _subscribe_manual_control;                        // 수동 제어를 받기 위한 subscriber
    void subscribe_manual_control(const fieldro_msgs::ManualControl& msg);  // 수동 제어를 받기 위한 callback 함수

    // loader
    bool is_controlable();                                            // Loader의 동작 가능여부
        
    // callback
    void action_complete_notify(const Error error);                   // motor object로 부터 동작 완료 알림 콜백
    
    // 일반 함수
    bool is_sensor_update_and_on(int32_t index, int64_t sensor_bit);  // sensor data update 및 ON 여부
    void fall_limit_sensor_on();                                      // fall limit sensor on
    void raise_limit_sensor_on();                                     // raise limit sensor on
    bool is_sensor_on(DISignal signal);                               // sensor on 여부 확인
    bool is_sensor_error();                                           // loader 관련 센서가 error 상태인지 체크
    bool confirm_active_position();                                   // 초기화 완료 : fall, raise 위치에 대한 확인

    int32_t _safety_distance;         // limit sensor에서 실제 fall, raise 위치까지의 안전 거리
    int32_t _action_check;            // 동작 check interval  
    int32_t _action_timeout;          // 동작 timeout
    int32_t _action_rpm;              // 동작 속도

    int32_t _fall_position;           // fall 위치
    int32_t _raise_position;          // raise 위치
    int32_t _middle_position;         // test 또는 h/w 보수를 위한 중간위치

    void execute_fall_action();       // loader up    동작
    void execute_raise_action();      // loader down  동작
    void execute_middle_action();     // loader middle 동작
  };
}