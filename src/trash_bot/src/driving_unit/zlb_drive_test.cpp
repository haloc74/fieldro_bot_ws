
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
    notify_log_msg(LogInfo, 0, "ZlbDrive::test_turn function");
    turn(degree);
  }

  /**
  * @brief      motor 구동 테스트
  * @attention  속도모드 설정, 방향값 설정, 모터구동 설정 된 상태에서 속도값만 설정하면 구동 된다.
  *             break가 걸려있는 상황에서는 속도값을 설정해도 구동되지 않는다.
  */
  void ZlbDrive::test_run()
  {
    notify_log_msg(LogInfo, 0, "ZlbDrive::test_run function");
    run(0.2);

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