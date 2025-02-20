
#pragma once

#include <functional>
#include <fieldro_lib/define/error_code.h>
#include <fieldro_lib/device_communication/modbus_wrapper.h>
#include <fieldro_lib/helper/thread_action_info.h>

#include "eld2_rs7020b_define.h"

/*
  1. motor 연결
  2. current position 확인 
  3. current position < home position 이면 homing direction CW
  4. current position > home position 이면 homing direction CCW
  5. current position == home position 이면 skip
  6. homing 종료 되면 initialize 완료
     motor get_motor_status() - _motor_status & 0x0008 체크 
*/


namespace frb
{
  class ELD2_RS7020B
  {
  public:
    ELD2_RS7020B(std::function<void(frb::Error)> action_result_callback, 
                 std::function<void(frb::LogLevel, int32_t, const std::string&)> log_callback,
                 std::string config_file);
    ~ELD2_RS7020B();

    void    initialize();
    void    update();

    frb::Error control_move(int32_t abs_pos, int16_t rpm, int32_t check_interval, int32_t timeout_millisec);
    frb::Error control_speed_move(double direction);
    frb::Error control_homing(int16_t speed, int16_t acc, int16_t dec);
    frb::Error get_motor_status();
    int32_t get_motor_position();

    void control_pr0(int16_t rmp);

    CommStatus  get_comm_state()  { return _comm_state; }
    bool        get_servo_power() { return _servo_power; }
    bool        is_controllable();
    bool       stop_motor();

  private:
    ThreadActionInfo*   _thread;              // thread action 객체
    ModbusWrapper*      _comm;                // motor 통신 객체
    CommStatus          _comm_state;          // motor 연결 상태
    bool                _servo_power;         // 서보 전원 상태

    std::function<void(frb::Error)>  action_result_notify;  // 동작 완료 통보 (상위 : callback)
    std::function<void(frb::LogLevel, int32_t, const std::string&)> log_msg_notify;  // 로그 통보 (상위 : callback)
    void modbus_state_receive(const CommStatus notify);              // modbus 상태 변경 통보 (하위 : callback)
    
    bool _error;
    frb::Error control_power(bool on);                      // 서보 전원 제어 

    // class object status
    SERVO_STATUS _status;

    
    // Motor Data
    uint16_t  _motor_status;                // 모터 상태 data
    int32_t   _home_position;               // motor home 위치 
    int32_t   _current_position;            // motor 현재 위치
    int32_t   _target_position;             // motor 목표 위치

    // 설정                                 // motor 설정값
    int16_t _acc;     // 가속 시간 ms
    int16_t _dec;     // 감속 시간 ms
    int16_t _rpm;     // speed rpm

    CONTROL_MODE _control_mode;             // motor 제어 모드

    void check_action_complete();
    void check_homing_complete();
    
    void action_timeout(int sequence);
    int32_t _timeout_sequence;            // timeout을 설정한 sequence
    void increase_timeout_sequence();

    bool is_simillar_position(int32_t position);

    frb::Error control_pr0(int16_t mode, int32_t position, int16_t rpm, int16_t acc, int16_t dec);

    void log_msg(frb::LogLevel level, int32_t error_code, std::string log);
    void load_option(std::string config_file);

    void change_to_position_mode();
    void change_to_speed_mode();
  };
}

