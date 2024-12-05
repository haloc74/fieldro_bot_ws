
#pragma once

#include <mutex>
#include "ros/ros.h"

#include <trash_bot/IOSignal.h>

#include "unit/unit.h"
#include "define/unit_define.h"
#include "define/digital_in_define.h"
#include "motion_info.h"
#include "eld2_rs7020b.h"

namespace fieldro_bot
{
  class Loader : public Unit
  {
  public:
    Loader(std::string config_file, std::string session);
    virtual ~Loader();

  protected:
    virtual void update();                                                  // object main loop
    virtual void load_option(std::string config_file);                      // option load
    virtual void subscribe_unit_action(const trash_bot::UnitControl& msg);  // unit action subscribe

    ELD2_RS7020B*       _motor;                                     // Motor 객체
    MotionInfo          _motion;                                    // 동작 정보 (범위, 시간, 속도, timeout 등 정보)

    // sensor info receive
    int8_t _sensor[(int)DISignal::END];                                   // 센서 상태 정보
    ros::Subscriber _subscribe_iosignal;                                  // IOSignal을 받기 위한 subscriber 
    void subscribe_iosignal(const trash_bot::IOSignal& msg); // IOSignal을 받기 위한 callback 함수
    void initialize_signal_data();                                        // signal data 초기화
    bool update_sensor_data(DISignal sensor, int64_t signal_bit);         // sensor data 업데이트

    // loader
    bool is_controllable();                                         // Loader의 동작 가능여부
        
    // callback
    void action_complete_notify(const Error error);                 // motor object로 부터 동작 완료 알림 콜백
  };
}