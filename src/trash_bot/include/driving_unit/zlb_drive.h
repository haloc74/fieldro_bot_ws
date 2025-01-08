
#pragma once

#include <functional>
#include <cstdint>
#include <mutex>
#include <deque>

#include <fieldro_lib/define/direction_define.h>
#include <fieldro_lib/device_communication/modbus_wrapper.h>
#include <fieldro_lib/helper/thread_action_info.h>
#include <fieldro_lib/driving_mode/ackermann_double.h>

#include "steering_position.h"
#include "zlb_packet.h"
#include "zlb_status.h"
#include "zlb_id_define.h"
#include "motor_runtime_state.h"


namespace frb
{
  /*
    속도값이 0 이면 position 무시 (정지)
    속도값이 < 0 이면 속도값 무시         : position 제어
    위치값이 < 0 이면 위치값 무시         : 속도 제어
    속도값 > 0 & 위치값 > 0              : 복합 제어
    속도값 < 0 & 위치값 < 0 이면 에러     : 에러

    방향값을 참조해서 정회전인지 , 역회전인지 판단을 해야 한다.
  */

  /**
  * @author		Fieldro : haloc@fieldro.tech
  * @date			24-12-28
  * @brief		Traction, Steer motor를 제어하기위한 클래스
  * @note			Kinco AC Servo Motor FD1X5 제어를 목적으로 대응되는 클래스 이다.
  * @details	
  * @see			document/Kinco drive user manual.pdf, document/zlb_status.xlsx 참조
  */

  class ZlbDrive
  {
  public:
    ZlbDrive(std::function<void(int32_t, frb::Error)> action_result_callback, 
             std::function<void(int32_t, frb::WheelControlValue)> actual_velocity_callback,
             std::function<void(frb::LogLevel, int32_t, const std::string&)> log_callback,    
             std::string config_file, int32_t wheel_index);
    virtual ~ZlbDrive();

    void test_run();
    void test_stop();                       // break on
    void test_turn(double degree);          // steering motor turn 

    void move(double velocity, double degree);  // move

    void engage_break();                    // break on
    void release_break();                   // break off
    WheelControlValue get_actual_velocity(); // get actual velocity

  protected:
    void update();
    void load_option(std::string config_file, std::string session);  // zlb drive 설정값 로드

    ThreadActionInfo* _thread;                  // 객체 main thread
    ModbusWrapper*    _modbus;                  // modbus 통신 객체
    CommStatus        _comm_state;              // modbus 연결 상태
    int32_t           _motor_status;            // motor 상태
    bool              _servo_power;             // servo power 상태
    int32_t           _wheel_index;             // wheel index

    int32_t _prev_timer;                        // 이전 timer 값
    int32_t _prev_encoder[frb::ZlbMotor::End];  // 이전 encoder 값

  protected:                                    // _packet
    std::deque<ZlbPacket*>  _packets;           // motor 제어 패킷 리스트
    std::mutex              _lock_packets;      // thread lock
    
    void packet_process();                      // motor 제어 패킷 전송
    void clear_packets();                       // motor 제어 패킷 리스트 초기화

    // 전송 할 패킷 추가
    void add_packet(int32_t slave_id, int32_t address, int32_t value, 
                    MODBUS_FUNC_CODE code, int32_t action=-1);
    
  protected:                                          // _motor
    int32_t _slave_id[to_int(frb::SlaveId::End)];     // slave id
    SteeringPosition* _steer_position;                // steering motor 위치객체
    
    void      confirm_motor_connection();             // motor 통신 연결 확인
    void      setup_motor_configurations();           // motor 초기값 설정
    int32_t   get_motor_status(int32_t slave_id);     // motor 상태 확인
    void      is_steering_complete();                 // steering motor 동작 완료 확인             

    int32_t   degree_to_position(const double degree);    // degree -> position 변환    
    uint32_t  convert_rpm_to_zlb_rpm(uint32_t rpm);       // rpm -> zlb rpm 변환
    int32_t   convert_velocity_to_rpm(int32_t velocity);  // velocity -> rpm 변환

    void turn(double degree);                        // steering motor turn
    void run(double velocity);                       // traction motor run

  protected:
    // 동작 완료 통보 (상위 : callback)
    std::function<void(int32_t, frb::Error)> notify_action_result;  

    // 실제 속도 통보 (상위 : callback)
    std::function<void(int32_t, frb::WheelControlValue)> notify_actual_velocity;

    // 로그 통보 (상위 : callback)    
    std::function<void(frb::LogLevel, int32_t, const std::string&)> notify_log_msg;    

    // modbus 상태 변경 통보 (하위 : callback)
    void receive_modbus_state(const CommStatus notify);   
  };
}