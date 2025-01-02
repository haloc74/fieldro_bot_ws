
#include "zlb_drive.h"
#include <fieldro_lib/define/unit_action_define.h>

namespace frb
{
  /**
  * @brief      traction 및 steering motor 제어
  * @param[in]  frb::Direction direction : 제어 방향  (전, 후, 좌, 우)
  * @param[in]  int32_t position         : 제어 위치  ()
  * @param[in]  int32_t velocity         : 제어 속도
  * @param[in]  int32_t check_interval   : 제어 완료 확인 주기
  * @param[in]  int32_t timeout_millisec : 제어 timeout
  * @return     frb::Error               : 제어 결과
  * @note       
  */
  frb::Error ZlbDrive::control_move(frb::Direction direction, int32_t position, 
                              int32_t velocity, int32_t check_interval, int32_t timeout_millisec)
  {
    // 1. traction 속도 모드로 전환
    // 2. traction 속도값 설정
    // 3. traction run_velocity
    
    return frb::Error::None;
  }


  /**
  * @brief      motor break 해제
  * @attention  실제 브레이크를 해제하는것이 아닌 속도를 0으로 만들어서 break를 해제하는것       
  *             속도 0으로 만든 다음에 인가를 해줘야 한다.
  */
  void ZlbDrive::release_break()
  {
    add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::VELOCITY_COMMAND_REGISTER, 
               0, MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);

    add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::CONTROL_REGISTER, 
               ServoFD1X5::CONTROL_VALUES::START, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);    
  }

  /**
  * @brief      motor break 인가
  * @param[in]  void
  * @return     void
  * @note       물리 break on 
  */
  void ZlbDrive::engage_break()
  {
    add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::CONTROL_REGISTER, 
                ServoFD1X5::CONTROL_VALUES::STOP, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER,
                to_int(frb::UnitAction::Stop));    

    return;
  }  
}