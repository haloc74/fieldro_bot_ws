
#pragma once

namespace fieldro_bot
{
  //모션 기동 명령 주소-------------------------------------------------
  // #define Function_Trigger_ADDR  0x6002 //기동명령 주소
  /* 기동명령(Trigger) 설명 
  (8번 파라미터 주소) =  0x6000 + (Parameters NO - 800) 
  ex) Pr8.06 일때 0x6000+(806-800) = 0x6006

  (9번 파라미터 주소) =  0x6200 + (Parameters NO - 900) 
  ex) Pr9.06 일때 0x6000+(906-900) = 0x6206

  예제) PR-0 기동명령  01/06/60 02/00 10/ (CRC)
  01: Slave ID = 1
  06: Function code = 6 1개의 Data 쓰기
  60 02: 쓰기 주소
  00 10: Path번호 PR0 */

  //모션 기동 명령 
  // 0x00P(경로번호) 쓰기 : 해당 PR의 위치 지정 완료. 새로운 데이터 수신 가능 상태
  // 0x01P(경로번호) 쓰기 : PR0~PR15 위치 기동 명령(P는 경로 0-15)
  // 0x020 쓰기 : 원점 복귀
  // 0x021 쓰기 : 현재 위치값을 수동으로 설정
  // 0x040 쓰기 : E-STOP
  // 0x01P(경로번호), 0x020, 0x040: 응답없음 상태
  // 0x10P(경로번호): 해당 PR경로가 실행중인 상태
  // 0x200: 이동 명령이 완료되고 이동완료 대기중 상태

  // 0x6208 : path 1
  // 0x620F : path 2
  //  

  enum class SERVO_ADDRESS
  {
    CTRL_POWER    = 0x0405,  // 0x0405 : 0x0083 : ON, 0x0003 : OFF
    CTRL_PR0      = 0x6200,
    CTRL_HOMING   = 0x600A,    // 원점복귀 Method Address
    CTRL_MOTION   = 0x6002,   // Motion Trigger Address

    HOMING_SPEED_HBS    = 0x600F,  // 원점복귀 속도         Address
    HOMING_SPEED_LBS    = 0x6010,  
    HOMING_ACC          = 0x6011,  // 원점복귀 가속도       Address
    HOMING_DEC          = 0x6012,  // 원점복귀 감속도       Address
    HOMING_TORQUE_TIME  = 0x6013,  // 원점복귀 Torque Time  Address
    HOMING_TORQUE       = 0x6014,  // 원점복귀 Torque       Address
    
    GET_ORIGNAL_POS = 0x600B,  // Pr8.11    원점복귀 위치 Address

    GET_POSITION  = 0x602C,  // 현재 위치 Address
    GET_STATUS    = 0x0B05,  // 모터 상태 Address
  };  

  enum class SERVO_VALUE
  {
    POWER_OFF = 0x0003,
    POWER_ON  = 0x0083,
    HOME      = 0x0003,     // 원점복귀 제어 : 제어모드 0x0003 <-- 사용하지 말자 이상하다.... 
    HOMING    = 0x0020,     // 원점복귀, 

    // PR0 - 6200 h : 명령조합
    // 0 ~ 3  : 제어모드 선택    0=동작없음, 1=위치제어, 2=속도제어, 3=원점복귀, 4=정지
    // 4      : 인터럽트 설정    0=인터럽트 사용안함, 1=인터럽트 사용
    // 5      : 오버랩 설정      0=오버랩 사용안함, 1=오버랩 사용
    // 6 ~ 7  : 위치제어 모드    0=절대위치제어, 1=상대위치제어, 2=모터위치
    // 8 ~ 13 : 0~15            Jump to the corresponding path number
    // 14     : JUMP            0=no jump, 1=jump
    ABS_POSITION  = 0x0001,     // 절대위치 제어 : 제어모드 0x0001 + 위치제어 모드 0x0000
    REL_POSITION  = 0x0041,     // 상대위치 제어 : 제어모드 0x0001 + 위치제어 모드 0x0040
    SPEED         = 0x0002,     // 속도     제어 : 제어모드 0x0002
    STOP          = 0x0004,     // 정지     제어 : 제어모드 0x0004
  };

  enum class SERVO_STATUS
  {
    STATUS_READY    = 0x0001,     // 준비
    STATUS_RUN      = 0x0002,     // 실행
    STATUS_ERROR    = 0x0004,     // 에러
    STATUS_HOME     = 0x0008,     // 원점복귀 완료
    STATUS_IN_POS   = 0x0010,     // 위치 도달
    STATUS_IN_SPEED = 0x0020,     // 속도 도달
  };

  enum class LOADER_SENSOR_STATE
  {
    MIN_ON,                       // 하한 Limit Sensor On
    MAX_ON,                       // 상한 Limit Sensor On
    ALL_OFF,                      // 모든 Sensor Off                  
    ALL_ON,                       // 모든 Sensor On                
    END,
  };

}