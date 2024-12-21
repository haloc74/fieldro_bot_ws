
#pragma once

#include <functional>
#include <cstdint>
#include <mutex>

#include "zlb_resisters.h"
#include "zlb_traction.h"
#include "zlb_steer.h"

#include "define/direction_define.h"
#include "communication/modbus_wrapper.h"


namespace frb
{
  enum class SlaveId
  {
    Traction = 1,
    Steer,
    End,
  };

  /*
    속도값이 0 이면 position 무시 (정지)
    속도값이 < 0 이면 속도값 무시         : position 제어
    위치값이 < 0 이면 위치값 무시         : 속도 제어
    속도값 > 0 & 위치값 > 0              : 복합 제어
    속도값 < 0 & 위치값 < 0 이면 에러     : 에러

    방향값을 참조해서 정회전인지 , 역회전인지 판단을 해야 한다.
  */

  class ZlbDrive
  {
  public:
    ZlbDrive(std::function<void(frb::Error)> action_result_callback, 
                 std::function<void(frb::LogLevel, int32_t, const std::string&)> log_callback,
                 std::string config_file) {}

    virtual ~ZlbDrive() {}

    void update() {}

    frb::Error control_move(frb::Direction direction, int32_t position, int32_t velocity,
                            int32_t check_interval, int32_t timeout_millisec);

    frb::Error get_motor_status()     { return _error; }

    int32_t get_position(SlaveID id)  {}
    Comstatus get_comm_state()        { return _comm_state; }
    bool get_servo_power()            { return _servo_power; } 
    bool is_controllable()            {}
    bool stop_motor()                 {}


  protected:
    ThreadActionInfo* _thread;            // 객체 main thread
    ModubsWrapper*    _modbus;            // modbus 통신 객체
    CommStatus        _comm_state;        // modbus 연결 상태
    MotorRuntimeState _motor_status;      // motor 상태
    bool              _servo_power;       // 서보 전원 상태

  };


  // class ZlbDrive
  // {
  // public:
  //   ZlbDrive(std::string config_file);
  //   //ZlbDrive(int argc, char** argv);
  //   virtual ~ZlbDrive();

  // protected:
  //   ModbusWrapper*                              _modbus;
  //   void modbus_state_receive(const CommStatus notify);              // modbus 상태 변경 통보 (하위 : callback)
  //   bool _sorvo_power;

  //   ZlbTraction*                                _traction;
  //   ZlbSteer*                                   _steer;
  //   std::mutex                                  _callback_lock;
  //   std::mutex                                  _update_lock;
  //   //MODBUS_FUNC_CODE                            _modbus_func_code;

  //   // callback
  //   int32_t traction_callback(int32_t address, int32_t value, MODBUS_FUNC_CODE function);
  //   int32_t steer_callback(int32_t address, int32_t value, MODBUS_FUNC_CODE function);

  //   ThreadActionInfo*                           _update_thread;

  //   void update();
    
  //   void reset();

  //   void stop();
  //   // void set_break(bool break);                  // break 
  //   // void move_at_velocity(int32_t velocity);     // 지정된 속도로 이동
  //   // void move_to_position(int32_t position);     // 지정된 위치로 이동     abs
  //   // void move_by_position(int32_t position);     // 지정된 위치만큼 이동   inc
  //   // void move_to_degrees(double degree);         // 지정된 각도로 이동     abs
  //   // void move_by_degrees(double degree);         // 지정된 각도만큼 이동   inc
  // };
}