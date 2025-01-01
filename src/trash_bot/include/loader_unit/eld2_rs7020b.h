
#pragma once

#include <functional>
#include <fieldro_lib/define/error_code.h>
#include <fieldro_lib/device_communication/modbus_wrapper.h>
#include <fieldro_lib/helper/thread_action_info.h>

#include "eld2_rs7020b_define.h"



namespace frb
{
  class ELD2_RS7020B
  {
  public:
    ELD2_RS7020B(std::function<void(frb::Error)> action_result_callback, 
                 std::function<void(frb::LogLevel, int32_t, const std::string&)> log_callback,
                 std::string config_file);
    ~ELD2_RS7020B();

    void    update();

    frb::Error control_move(int32_t abs_pos, int16_t rpm, int32_t check_interval, int32_t timeout_millisec);
    frb::Error get_motor_status();
    int32_t get_motor_position();

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
    
    
    // Motor Data
    uint16_t  _motor_status;                // 모터 상태 data
    int32_t   _current_position;            // motor 현재 위치
    int32_t   _target_position;             // motor 목표 위치

    // 설정                                 // motor 설정값
    int16_t _acc;     // 가속 시간 ms
    int16_t _dec;     // 감속 시간 ms
    int16_t _rpm;     // speed rpm

    void check_action_complete();
    
    void action_timeout(int sequence);
    int32_t _timeout_sequence;            // timeout을 설정한 sequence
    void increase_timeout_sequence();

    bool is_simillar_position(int32_t position);

    frb::Error control_pr0(int16_t mode, int32_t position, int16_t rpm, int16_t acc, int16_t dec);

    void log_msg(frb::LogLevel level, int32_t error_code, std::string log);
  };
}

