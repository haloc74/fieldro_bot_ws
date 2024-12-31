
#pragma once

#include <functional>
#include <cstdint>
#include <mutex>
#include <deque>

#include "zlb_packet.h"
#include "zlb_status.h"
#include "zlb_id_define.h"

#include "motor_runtime_state.h"

//#include "define/direction_define.h"
#include <fieldro_lib/define/direction_define.h>

#include "communication/modbus_wrapper.h"
//#include "helper/thread_action_info.h"
#include <fieldro_lib/helper/thread_action_info.h>


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
    ZlbDrive(std::function<void(frb::Error)> action_result_callback, 
                 std::function<void(frb::LogLevel, int32_t, const std::string&)> log_callback,
                 std::string config_file);

    virtual ~ZlbDrive();
 
    frb::Error control_move(frb::Direction direction, int32_t position, int32_t velocity,
                            int32_t check_interval, int32_t timeout_millisec);

    CommStatus  get_comm_state()        { return _comm_state;  }    // 통신 객체 상태 반환
    bool        get_servo_power()       { return _servo_power; }    // servo power 상태 반환
    int32_t     get_motor_status();

    void test_run();
    void test_stop();                       // break on
    void test_turn(double degree);         // steering motor turn 


    void engage_break();
    void release_break();

  protected:
    void update();

    ThreadActionInfo* _thread;              // 객체 main thread
    ModbusWrapper*    _modbus;              // modbus 통신 객체
    CommStatus        _comm_state;          // modbus 연결 상태
    int32_t           _motor_status;        // motor 상태
    bool              _servo_power;         // servo power 상태

    std::deque<ZlbPacket*>  _packets;       // motor 제어 패킷 리스트
    std::mutex              _lock_packets;  // thread lock
    
    void packet_process();                  // motor 제어 패킷 전송
    void clear_packets();                   // motor 제어 패킷 리스트 초기화

    // 전송 할 패킷 추가
    void add_packet(int32_t slave_id, int32_t address, int32_t value, MODBUS_FUNC_CODE code, int32_t action=-1);
    
    uint32_t convert_rpm_to_zlb_rpm(uint32_t rpm);  // rpm -> zlb rpm 변환

    void confirm_motor_connection();                // motor 통신 연결됨

    void setup_motor_configurations();              // motor 초기값 설정
  
    int32_t _slave_id[to_int(frb::SlaveId::End)];  // slave id 설정
    int32_t _left_limit;
    int32_t _right_limit;
    int32_t _home_position;

  protected:
    // 동작 완료 통보 (상위 : callback)
    std::function<void(frb::Error)> notify_action_result;  

    // 로그 통보 (상위 : callback)    
    std::function<void(frb::LogLevel, int32_t, const std::string&)> notify_log_msg;    

    // modbus 상태 변경 통보 (하위 : callback)
    void receive_modbus_state(const CommStatus notify);  

    void load_option(std::string config_file);

    int32_t get_motor_status(int32_t slave_id);

    // steering motor status 확인
    void check_steer_motor_status();

    int32_t degree_to_position(const double degree);
    // inline int32_t degree_to_position(const double degree)
    // {
    //     return static_cast<int32_t>(degree * (RESOLUTION * RATIO_MOTOR * RATIO_STEER) / 360.0);
    // }    
  };
}