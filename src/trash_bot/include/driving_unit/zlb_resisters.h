
#pragma once

#include <string>
#include <unordered_map>

namespace frb
{
#pragma once

#include <string>
#include <unordered_map>

// Modbus rtu protocol function code
enum MODBUS_FUNC_CODE
{
  READ_HOLDING_REGISTERS   = 0x03,
  READ_INPUT_REGISTER      = 0x04,
  WRITE_SINGLE_REGISTER    = 0x06,
  WRITE_MULTIPLE_REGISTERS = 0x10,
};

namespace ServoFD1X5 
{
  // Controlword register value
  constexpr int CONTROL_REGISTER = 0x3100;
  namespace CONTROL_VALUES 
  {
    constexpr int STOP       = 0x0006;
    constexpr int START      = 0x000F;
    constexpr int RESET      = 0x0086;
    constexpr int QUICK_STOP = 0x000B;

    namespace ABSOLUTE_POSITION
    {
      constexpr int SET1 = 0x002F;
      constexpr int SET2 = 0x003F;
    }

    namespace INCREMENT_POSITION 
    {
      constexpr int SET1 = 0x004F;
      constexpr int SET2 = 0x005F;
    }

    namespace HOMING 
    {
      constexpr int SET1 = 0x000F;
      constexpr int SET2 = 0x001F;
    }
  }

    constexpr int STATUSWORD_REGISTER = 0x3200; // statusword 레지스터 주소

    namespace STATUSWORD_BITS {
        constexpr uint16_t SERVO_FAULT              = 0x0001;  // 1: SERVO에 결함이 없음
        constexpr uint16_t SERVO_ENABLE_READY       = 0x0002;  // 1: SERVO ENABLE 대기중
        constexpr uint16_t SERVO_RUN_READY          = 0x0004;  // 1: SERVO RUN 준비 완료
        constexpr uint16_t FAULT                    = 0x0008;  // 1: ERROR
        constexpr uint16_t VOLTAGE_ENABLED          = 0x0010;  // 1: 메인 회로 전원이 켜져 있음
        constexpr uint16_t QUICK_STOP               = 0x0020;  // 1: QUICK STOP 불가능
        constexpr uint16_t SERVO_READY              = 0x0040;  // 1: SERVO 준비 상태 완료
        constexpr uint16_t WARNING                  = 0x0080;  // 1 : SERVO 경고 상태
        constexpr uint16_t UNDEFINED                = 0x0100;  // 정의되지 않음
        constexpr uint16_t DIN_STATE                = 0x0200;  // 0: DIN 결함, 1: 원격 통신 제어
        constexpr uint16_t TARGET_ARRIVAL           = 0x0400;  // 1: 목표 위치, 속도 도달
        constexpr uint16_t PN_LIMIT                 = 0x0800;  // 1: 실제 위치가 SOFT/HARD 제한에 도달
        constexpr uint16_t MODE_STATE               = 0x1000;  // 1: SERVO가 새로운 명령을 받을 수 없음
        constexpr uint16_t POSITION_FOLLOWING_ERROR = 0x2000;  // 1: 위치 추적 오류가 최대 추적 오류를 초과
        constexpr uint16_t EXCITATION_STATE         = 0x4000;  // 1: 모터 여자 상태
        constexpr uint16_t ORIGIN_STATE             = 0x8000;  // 1: 원점 복귀 완료
    }

    constexpr int ERRORSTATE1_REGISTER = 0x1F00; // error state_1 레지스터 주소
    constexpr int ERRORSTATE2_REGISTER = 0x2000; // error state_2 레지스터 주소

    
    constexpr int QUICK_STOP_REGISTER = 0x3400; // 비상 정지, 안전 관련 상황 발생시시
    namespace QUICK_STOP_VALUE{
        constexpr int STOP_WITHOUT_CONTROL           = 0;
        constexpr int STOP_WITH_RAMP                 = 1; // 선형적인 감속을 이용한 정지
        constexpr int STOP_WITH_QUICK_DECEL_THEN_OFF = 2; // 감속 없이 즉각적인 정지, 전원 차단
        constexpr int STOP_WITH_PROFILE              = 5; // 선형, 비선형적인 감속을 이용한 정지
        constexpr int STOP_WITH_QUICK_DECEL_ACTIVE   = 6; // 감속 없이 즉각적인 정지, 전원 미차단
        constexpr int USE_MOTOR_WINDING_BRAKE        = 18; // 모터 권선에 전류를 흘려(자기장 생성) 정지
    }  // namespace QUICK_STOP_VALUE

    constexpr int SHUTDOWN_STOP_REGISTER = 0x3410; // 시스템 종료, 모터의 안전한 비활성화화
    namespace SHUTDOWN_STOP_VALUE{
        constexpr int STOP_WITHOUT_CONTROL   = 0;
        constexpr int STOP_WITH_RAMP         = 1;
        constexpr int STOP_WITH_QUICK_DECEL  = 2;
        constexpr int USE_MOTOR_WIDING_BRAKE = 18;
    }  // namespace SHUTDOWN_STOP_VALUE

    constexpr int DISABLE_STOP_REGISTER = 0x3420; // 추가 동작 없이 에너지 절약 및 안전 유지지
    namespace DISABLE_STOP_VALUE{
        constexpr int STOP_WITHOUT_CONTROL   = 0;
        constexpr int STOP_WITH_RAMP         = 1;
        constexpr int STOP_WITH_QUICK_DECEL  = 2;
        constexpr int USE_MOTOR_WIDING_BRAKE = 18;
    }  // namespace DISABLE_STOP_VALUE

    constexpr int PAUSE_STOP_REGISTER = 0x3430; // 작업 중 일시 정지 후 빠른 재가동이 필요한 경우
    namespace PAUSE_STOP_VALUE{
        constexpr int STOP_WITH_RAMP        = 1;
        constexpr int STOP_WITH_QUICK_DECEL = 2;
    }  // namespace PAUSE_STOP_VALUE

    constexpr int FAULT_STOP_RSGISTER    = 0x3440; // 시스템 보호 및 에러로부터 안전 유지
    namespace FAULT_STOP_VALUE{
        constexpr int STOP_WITHOUT_CONTROL   = 0;
        constexpr int STOP_WITH_RAMP         = 1;
        constexpr int STOP_WITH_QUICK_DECEL  = 2;
        constexpr int USE_MOTOR_WIDING_BRAKE = 18;
    }  // namespace FAULT_STOP_VALUE

    // Homing mode setting
    constexpr int HOMING_METHOD_REGISTER = 0x4D00;
    namespace HOMING_VALUES{
        constexpr int NEGATIVE = 0x11;
        constexpr int POSITIVE = 0x12;
    }
    // Digital I/O setting
    constexpr int DIN_POLARITY_REGISTER   = 0x0810; // 0: off, 1: on, bit0~7: din1~8 (default: 0xFF)
    constexpr int DIN_SIMULATE_REGISTER   = 0x0820; // simulate input port, bit0~7: din1~8
    constexpr int DIN1_REGISTER           = 0x0830; // refer to the
    constexpr int DIN2_REGISTER           = 0x0840;
    constexpr int DIN3_REGISTER           = 0x0850;
    constexpr int DIN4_REGISTER           = 0x0860;
    constexpr int DIN_REAL_REGISTER       = 0x08A0;
    constexpr int DOUT_POLARITY_REGISTER  = 0x08D0;
    constexpr int DOUT_SIMULATE_REGISTER  = 0x08E0;
    constexpr int DOUT1_REGISTER          = 0x08F0;
    constexpr int DOUT2_REGISTER          = 0x0900;
    constexpr int DOUT_REAL_REGISTER      = 0x0940;
    constexpr int LIMIT_FUNCTION_REGISTER = 0x0990;
    namespace LIMIT_MODE{
        constexpr int POSITIVE = 0x10;
        constexpr int NEGATIVE = 0x20;
    }  // namespace LIMIT_MODE

    // speed, position setting
    constexpr int DIN_POS0   = 0x0C10;
    constexpr int DIN_POS1   = 0x0C20;
    constexpr int DIN_POS2   = 0x0C30;
    constexpr int DIN_POS3   = 0x0C40;
    constexpr int DIN_SPEED0 = 0x0C50;
    constexpr int DIN_SPEED1 = 0x0C60;
    constexpr int DIN_SPEED2 = 0x0C70;
    constexpr int DIN_SPEED3 = 0x0C80;
    constexpr int DIN_POS4   = 0x0D00;
    constexpr int DIN_POS5   = 0x0D10;
    constexpr int DIN_POS6   = 0x0D20;
    constexpr int DIN_POS7   = 0x0D30;
    constexpr int DIN_SPEED4 = 0x0D40;
    constexpr int DIN_SPEED5 = 0x0D50;
    constexpr int DIN_SPEED6 = 0x0D60;
    constexpr int DIN_SPEED7 = 0x0D70;

    // Operation Mode 레지스터
    constexpr int OPMODE_REGISTER = 0x3500;
    namespace OPMODE_VALUES 
    {
      constexpr int POSITION = 1;
      constexpr int VELOCITY = 3;
      constexpr int TORQUE   = 4;
      constexpr int HOME     = 6;
    }

    // Velocity 레지스터
    constexpr int VELOCITY_DIRECTION_REGISTER = 0x4700;
    const std::unordered_map<std::string, int> VELOCITY_DIRECTION_VALUES = {
        {"forward", 0},
        {"backward", 1}
    };
    constexpr int VELOCITY_COMMAND_REGISTER  = 0x6F00; // target speed (Data type: int32_t)
    constexpr int VELOCITY_FEEDBACK_REGISTER = 0x3B00; // actual speed (Data type: int32_t)
    constexpr int MAX_VELOCITY_REGISTER      = 0x4900; // max velocity limit (Data type: uint16_t)

    // Position 레지스터
    constexpr int POSITION_COMMAND_REGISTER       = 0x4000; // target position (Data type: int32_t)
    constexpr int POSITION_SPEED_COMMAND_REGISTER = 0x4A00; // velocity (Data type: uint32_t)
    constexpr int POSITION_FEEDBACK_REGISTER      = 0x3700; // actual position (Data type: int32_t)

    // Profile Acceleration, Deceleration 레지스터 (Data type : uint32_t)
    constexpr int PROFILE_ACCELERATION_REGISTER = 0x4B00; // default: 100rps/s
    constexpr int PROFILE_DECELERATION_REGISTER = 0x4C00; // default: 100rps/s

    // Homing 레지스터
    constexpr int HOMING_SPEED_SWITCH_REGISTER = 0x5010; // turning signal speed (Data type: uint32_t)
    constexpr int HOMING_SPEED_ZERO_REGISTER   = 0x5020; // signal speed (Data type: uint32_t)
    }  
}