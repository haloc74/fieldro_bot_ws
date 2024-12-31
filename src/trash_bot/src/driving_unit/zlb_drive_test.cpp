
#include "zlb_drive.h"
#include "define/unit_action_define.h"
#include "helper/helper.h"

namespace frb
{

  void ZlbDrive::test_turn(double degree)
  {
    int32_t position = degree_to_position(degree);

    uint32_t rpm = convert_rpm_to_zlb_rpm(100);  

    add_packet(_slave_id[int32_t(SlaveId::Steering)], 
               ServoFD1X5::POSITION_COMMAND_REGISTER, 
               position, 
               MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);

    add_packet(_slave_id[int32_t(SlaveId::Steering)],
                ServoFD1X5::POSITION_SPEED_COMMAND_REGISTER, 
                rpm, 
                MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);//, 
                //to_int(frb::UnitAction::Turn));

    // ebsolute position set enable
    add_packet(_slave_id[int32_t(SlaveId::Steering)], 
                ServoFD1X5::CONTROL_REGISTER,
                ServoFD1X5::CONTROL_VALUES::ABSOLUTE_POSITION::SET1, 
                MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);

    add_packet(_slave_id[int32_t(SlaveId::Steering)], 
                ServoFD1X5::CONTROL_REGISTER,
                ServoFD1X5::CONTROL_VALUES::ABSOLUTE_POSITION::SET2, 
                MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);//,
                //to_int(frb::UnitAction::Turn));                                

    // todo : 1초 마다 check_steer_motor_status() 함수 호출 하여
    //        steering motor status 확인하여 동작이 종료 되었는지 확인
    delay_call(1000, std::bind(&ZlbDrive::check_steer_motor_status, this));
  }

  /**
  * @brief      motor 구동 테스트
  * @attention  속도모드 설정, 방향값 설정, 모터구동 설정 된 상태에서 속도값만 설정하면 구동 된다.
  *             break가 걸려있는 상황에서는 속도값을 설정해도 구동되지 않는다.
  */
  void ZlbDrive::test_run()
  {
    notify_log_msg(LogInfo, 0, "ZlbDrive::test_run function");

    // 속도값 설정
    // question : rpm 값이 250이면 어떻게 변환되는지 확인 필요
    uint32_t rpm = convert_rpm_to_zlb_rpm(250);  

    add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::VELOCITY_COMMAND_REGISTER, rpm, 
                MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS, to_int(frb::UnitAction::Move));

    return;
  }

  void ZlbDrive::test_stop()
  {
    add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::CONTROL_REGISTER, 
                ServoFD1X5::CONTROL_VALUES::STOP, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER,
                to_int(frb::UnitAction::Stop));

    add_packet(_slave_id[int32_t(SlaveId::Steering)], ServoFD1X5::CONTROL_REGISTER, 
                ServoFD1X5::CONTROL_VALUES::STOP, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER,
                to_int(frb::UnitAction::Stop));                
    return;
  }  
}