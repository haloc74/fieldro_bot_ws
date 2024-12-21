
#pragma once

#include <string>
#include <unordered_map>

namespace frb
{
  enum MODBUS_FUNC_CODE
  {
    READ_HOLDING_REGISTERS   = 0x03,
    READ_INPUT_REGISTER      = 0x04,
    WRITE_SINGLE_REGISTER    = 0x06,
    WRITE_MULTIPLE_REGISTERS = 0x10,
  };

  namespace ServoFD1X5 {

      // Control 레지스터
      constexpr int CONTROL_REGISTER = 0x3100;
      namespace CONTROL_VALUES {
          constexpr int STOP = 0x0006;  
          constexpr int START = 0x000F; 
          constexpr int RESET = 0x0086;
          constexpr int QUICK_STOP = 0x000B;

          namespace ABSOLUTE_POSITION {
              constexpr int SET1 = 0x002F;
              constexpr int SET2 = 0x003F;
          }
          constexpr int START_ABSOLUTE_POSITION = 0x103F;

          namespace INCREMENT_POSITION {
              constexpr int SET1 = 0x004F;
              constexpr int SET2 = 0x005F;
          }
          
          namespace HOMING {
              constexpr int SET1 = 0x000F;
              constexpr int SET2 = 0x001F;
          }

      }
      constexpr int STATUSWORD_REGISTER = 0x6041; // statusword 레지스터 주소

      namespace STATUSWORD_BITS {
          constexpr uint16_t READY_TO_SWITCH_ON = 0x0001; // 비트 0: 모터가 "스위치 온" 준비 상태
          constexpr uint16_t SWITCHED_ON        = 0x0002; // 비트 1: 모터가 스위치 온 상태
          constexpr uint16_t OPERATION_ENABLED  = 0x0004; // 비트 2: 모터가 동작 가능 상태
          constexpr uint16_t FAULT              = 0x0008; // 비트 3: 에러 발생
          constexpr uint16_t VOLTAGE_ENABLED    = 0x0010; // 비트 4: 전원 공급 여부
          constexpr uint16_t QUICK_STOP         = 0x0020; // 비트 5: 퀵 스톱 활성화 여부
          constexpr uint16_t SWITCH_ON_DISABLED = 0x0040; // 비트 6: 스위치 온 불가 상태
          constexpr uint16_t WARNING            = 0x0080; // 비트 7: 경고 발생
          constexpr uint16_t REMOTE             = 0x0100; // 비트 8: 원격 제어 가능 여부
          constexpr uint16_t TARGET_REACHED     = 0x0200; // 비트 9: 목표 도달 여부
          constexpr uint16_t INTERNAL_LIMIT     = 0x0400; // 비트 10: 내부 제한 발생
          constexpr uint16_t FOLLOWING_ERROR    = 0x0800; // 비트 11: 위치 또는 속도 추적 오류
          constexpr uint16_t HOMING_COMPLETE    = 0x1000; // 비트 12: 호밍 완료 여부
          constexpr uint16_t RESERVED_13        = 0x2000; // 비트 13: 예약
          constexpr uint16_t RESERVED_14        = 0x4000; // 비트 14: 예약
          constexpr uint16_t MANUFACTURER_SPEC  = 0x8000; // 비트 15: 제조사 지정 상태
      }

      constexpr int HOMING_METHOD_REGISTER = 0x4D00;
      namespace HOMING_VALUES{
          constexpr int NEGATIVE = 0x11;
          constexpr int POSITIVE = 0x12;
      }

      constexpr int DIN1_REGISTER = 0x0830;
      constexpr int DIN3_REGISTER = 0x0850;
      namespace LIMIT_MODE {
          constexpr int POSITIVE = 0x10;
          constexpr int NEGATIVE = 0x20;
      }

      // Operation Mode 레지스터
      constexpr int OPMODE_REGISTER = 0x3500;
      namespace OPMODE_VALUES {
          constexpr int POSITION = 1;
          constexpr int VELOCITY = 3;
          constexpr int TORQUE = 4;
          constexpr int HOME = 6;
      }

      // Velocity 레지스터
      constexpr int VELOCITY_DIRECTION_REGISTER = 0x4700;
      const std::unordered_map<std::string, int> VELOCITY_DIRECTION_VALUES = {
          {"forward", 0},
          {"backward", 1}
      };
      constexpr int VELOCITY_COMMAND_REGISTER = 0x6F00;
      constexpr int VELOCITY_FEEDBACK_REGISTER = 0x3B00;

      // Position 레지스터
      constexpr int POSITION_COMMAND_REGISTER = 0x4000;
      constexpr int POSITION_SPEED_COMMAND_REGISTER = 0x4A00;
      constexpr int POSITION_FEEDBACK_REGISTER = 0x3700;

      // Profile Acceleration 레지스터
      constexpr int PROFILE_ACCELERATION_REGISTER = 0x4B00;

      // Homing 레지스터
      constexpr int HOMING_SPEED_SWITCH_REGISTER = 0x5010;
      constexpr int HOMING_SPEED_ZERO_REGISTER = 0x5020;
  }  
}