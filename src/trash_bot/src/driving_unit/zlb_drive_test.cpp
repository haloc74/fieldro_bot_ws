
#include "zlb_drive.h"
#include "define/unit_action_define.h"

namespace frb
{
  void ZlbDrive::test_run()
  {
    notify_log_msg(LogInfo, 0, "ZlbDrive::test_run function");

    // motor 멈춤
    //add_packet(ServoFD1X5::CONTROL_REGISTER, ServoFD1X5::CONTROL_VALUES::STOP, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);

    // 속도 모드로 전환 (direction의 경우 한번만 해주면 된다)
    // add_packet(ServoFD1X5::OPMODE_REGISTER, ServoFD1X5::OPMODE_VALUES::VELOCITY, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
    
    // 방향값 설정하는 부분 (한번만 해주면 된다)
    //add_packet(ServoFD1X5::VELOCITY_DIRECTION_REGISTER, 0, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);

    // 속도값 설정
    // question : rpm 값이 250이면 어떻게 변환되는지 확인 필요
    uint32_t rpm = convert_rpm_to_zlb_rpm(250);  
    add_packet(ServoFD1X5::VELOCITY_COMMAND_REGISTER, rpm, MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS, to_int(frb::UnitAction::Move));

    // motor 구동
    // add_packet(ServoFD1X5::CONTROL_REGISTER, 
    //             ServoFD1X5::CONTROL_VALUES::START, 
    //             MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER,
    //             to_int(frb::UnitAction::Move));

    return;
  }

  void ZlbDrive::test_stop()
  {
    add_packet(ServoFD1X5::CONTROL_REGISTER, 
                ServoFD1X5::CONTROL_VALUES::STOP, 
                MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER,
                to_int(frb::UnitAction::Stop));
    return;
  }  
}