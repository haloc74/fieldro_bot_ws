
#include "zlb_drive.h"
#include <fieldro_lib/define/unit_action_define.h>
#include <fieldro_lib/helper/helper.h>

namespace frb
{

  /**
  * @brief      steering motor turnning test
  * @param[in]  double degree : turnning degree
  * @return     void
  * @note       
  * @attention  제어 순서에 유념해야 한다.
  *             1. position set
  *             2. speed set
  *             3. 
  */
  void ZlbDrive::test_turn(double degree)
  {
    if(!_steer_position->is_valid_position(degree))
    {
      notify_log_msg(LogError, 0, "ZlbDrive::test_turn : invalid position");
      notify_action_result(frb::Error::OutOfRange);  
      return;
    }

    int32_t position  = degree_to_position(degree);
    uint32_t rpm      = convert_rpm_to_zlb_rpm(100);  

    add_packet(_slave_id[int32_t(SlaveId::Steering)], 
               ServoFD1X5::POSITION_COMMAND_REGISTER, 
               position, 
               MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);

    add_packet(_slave_id[int32_t(SlaveId::Steering)],
                ServoFD1X5::POSITION_SPEED_COMMAND_REGISTER, 
                rpm, 
                MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);//, 
                //to_int(frb::UnitAction::Turn));

    // absolute position set enable
    add_packet(_slave_id[int32_t(SlaveId::Steering)], 
                ServoFD1X5::CONTROL_REGISTER,
                ServoFD1X5::CONTROL_VALUES::ABSOLUTE_POSITION::SET1, 
                MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);

    add_packet(_slave_id[int32_t(SlaveId::Steering)], 
                ServoFD1X5::CONTROL_REGISTER,
                ServoFD1X5::CONTROL_VALUES::ABSOLUTE_POSITION::SET2, 
                MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);                        

    // steering motor 동작 완료 통보
    // notify_action_result(frb::Error::None);

    // todo : 1초 마다 is_steering_complete() 함수 호출 하여
    //        steering motor status 확인하여 동작이 종료 되었는지 확인
    delay_call(1000, std::bind(&ZlbDrive::is_steering_complete, this));
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