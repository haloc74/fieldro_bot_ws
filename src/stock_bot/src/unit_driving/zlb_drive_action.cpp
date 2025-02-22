
#include "zlb_drive.h"
#include <fieldro_lib/define/unit_action_define.h>
#include <fieldro_lib/driving_mode/ackermann_double.h>

namespace frb
{
  // /**
  // * @brief      traction 및 steering motor 제어
  // * @param[in]  frb::Direction direction : 제어 방향  (전, 후, 좌, 우)
  // * @param[in]  int32_t position         : 제어 위치  ()
  // * @param[in]  int32_t velocity         : 제어 속도
  // * @param[in]  int32_t check_interval   : 제어 완료 확인 주기
  // * @param[in]  int32_t timeout_millisec : 제어 timeout
  // * @return     frb::Error               : 제어 결과
  // * @note       
  // */
  // frb::Error ZlbDrive::control_move(frb::Direction direction, int32_t position, 
  //                             int32_t velocity, int32_t check_interval, int32_t timeout_millisec)
  // {
  //   // 1. traction 속도 모드로 전환
  //   // 2. traction 속도값 설정
  //   // 3. traction run_velocity
    
  //   return frb::Error::None;
  // }

  /**
  * @brief      motor 구동
  * @param[in]  double velocity : run velocity      (m/s)
  * @param[in]  double angular  : angular velocity  (rad/s)
  * @return     void
  * @note       
  * @attention  
  */
  void ZlbDrive::move(double velocity, double angular)
  {
    // todo : angular 값에 따라서 steering motor 제어
    // turn(degree);

    // todo : velocity 값에 따라서 traction motor 제어
    // run(angular);

    return;
  }

  /**
  * @brief      각 모터의 현재 encoder position 값을 요청
  * @param[in]  void
  * @return     void
  * @attention  1. steering motor에 대한 position을 먼저하고 이후 traction motor에 대한 position을 요청한다.
  *                - traction motor에 대한 요청을 나중에 하는 이유는 주로 주행위주의 action에서 최대한 주행쪽
  *                  의 encoder 값을 최신 데이터로 받기를 위함이다.
  *             2. 
  */
  void ZlbDrive::request_actual_velocity()
  {
    add_packet(_slave_id[int32_t(SlaveId::Steering)], 
               ServoFD1X5::POSITION_FEEDBACK_REGISTER, 
               0, MODBUS_FUNC_CODE::READ_HOLDING_REGISTERS);

    add_packet(_slave_id[int32_t(SlaveId::Traction)], 
               ServoFD1X5::POSITION_FEEDBACK_REGISTER, 
               0, MODBUS_FUNC_CODE::READ_HOLDING_REGISTERS);
    return;
  }


  /**
  * @brief      steer motor turn action
  * @param[in]  int32_t degree : degree
  * @return     void
  * @note       degree값은 absolute position으로 설정이 된다.
  * @attention  - 제어 순서에 주의 
  *               ServoFD1X5::CONTROL_VALUES::ABSOLUTE_POSITION::SET1,
  *               ServoFD1X5::CONTROL_VALUES::ABSOLUTE_POSITION::SET2,
  *               꼭 해줘야 실제 turn이 된다.
  *             - degree는 증분값이 아니다.
  */
  void ZlbDrive::steering(double degree)
  {
    if(!_steer_position->is_valid_position(degree))
    {
      notify_log_msg(LogError, 0, "ZlbDrive::test_turn : invalid position");
      notify_action_result(_wheel_index, frb::Error::OutOfRange);  
      return;
    }

    degree *= _steer_direction;
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

    // todo : 1초 마다 is_steering_complete() 함수 호출 하여
    //        steering motor status 확인하여 동작이 종료 되었는지 확인
    // delay_call(1000, std::bind(&ZlbDrive::is_steering_complete, this));    

    // 동작 완료 통보
    notify_action_result(_wheel_index, frb::Error::None);

    return;
  }

  void ZlbDrive::steering_vel(double velocity)
  {
    uint32_t rpm = convert_rpm_to_zlb_rpm(velocity);

    add_packet(_slave_id[int32_t(SlaveId::Steering)],
                ServoFD1X5::VELOCITY_COMMAND_REGISTER, 
                rpm, 
                MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);

    add_packet(_slave_id[int32_t(SlaveId::Steering)], 
                ServoFD1X5::CONTROL_REGISTER,
                ServoFD1X5::CONTROL_VALUES::START, 
                MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);                                        

    return;
  }

  /**
  * @brief      propulsion motor run action (전/후 진)
  * @param[in]  int32_t velocity : run velocity  (m/s)
  * @return     void
  * @attention  바퀴위치(전, 후)에 따라 CW 방향이 반대이므로 해당 사항을 고려해야 함.
  * @note       1. velocity값을 rpm으로 변환
  *             2. rpm 값을 Zlb rpm으로 변환
  *             3. traction motor run
  */
  void ZlbDrive::propulsion(double velocity)
  {
    // 앞, 뒤 바퀴의 CW 방향이 반대이므로 바퀴에 해당하는 계수를 곱해준다.
    velocity *= _propulsion_direction * 3.0;

    double rpm = convert_velocity_to_rpm(velocity);

    uint32_t zlb_rpm = convert_rpm_to_zlb_rpm(rpm);

    add_packet(_slave_id[int32_t(SlaveId::Traction)], 
               ServoFD1X5::VELOCITY_COMMAND_REGISTER, 
               zlb_rpm, 
               MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS, 
               to_int(frb::UnitAction::Move));

    // 동작 완료 통보
    notify_action_result(_wheel_index, frb::Error::None);                   
    return;
  }


  /**
  * @brief      motor break 해제
  * @attention  실제 브레이크를 해제하는것이 아닌 속도를 0으로 만들어서 break를 해제하는것       
  *             속도 0으로 만든 다음에 인가를 해줘야 한다.
  */
  // void ZlbDrive::release_break()
  // {
  //   add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::VELOCITY_COMMAND_REGISTER, 
  //              0, MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);

  //   add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::CONTROL_REGISTER, 
  //              ServoFD1X5::CONTROL_VALUES::START, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);    
  // }

  /**
  * @brief      motor break on/off
  * @attention  브레이크 해제시 실제 브레이크를 해제하는것이 아닌 속도를 0으로 만들어서 
  *             break를 해제하는것으로 속도 0으로 만든 다음에 인가를 해줘야 한다.
  */  
  void ZlbDrive::breaking(bool flag)
  {
    if(flag)
    {
      add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::CONTROL_REGISTER, 
                 ServoFD1X5::CONTROL_VALUES::STOP, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER,
                 to_int(frb::UnitAction::Stop));    
    }
    else
    {
      //release_break();
      add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::VELOCITY_COMMAND_REGISTER, 
                  0, MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);

      add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::CONTROL_REGISTER, 
                  ServoFD1X5::CONTROL_VALUES::START, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);          
    }
    return;
  }

  /**
  * @brief      motor break 인가
  * @param[in]  void
  * @return     void
  * @note       물리 break on 
  * @attention  움직임이 멈추가 되면 무조건 _encoder_tracker 초기화 해줘야 한다.
  */
  void ZlbDrive::stop(bool break_flag)
  {
    //run(0.0);
    //turn(0.0);
    propulsion(0.0);
    steering(0.0);

    if(break_flag)
    {
      breaking(true);
      // add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::CONTROL_REGISTER, 
      //             ServoFD1X5::CONTROL_VALUES::STOP, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER,
      //             to_int(frb::UnitAction::Stop));    
    }

    _encoder_tracker->reset();

    return;
  }
  
  /**
  * @brief      motor reset
  * @param[in]  void
  * @return     void
  * @note       
  */
  void ZlbDrive::reset()
  {
    add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::CONTROL_REGISTER, 
              ServoFD1X5::CONTROL_VALUES::RESET, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER,
              to_int(frb::UnitAction::Reset));

    add_packet(_slave_id[int32_t(SlaveId::Steering)], ServoFD1X5::CONTROL_REGISTER, 
                ServoFD1X5::CONTROL_VALUES::RESET, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER,
                to_int(frb::UnitAction::Reset));              

    return;
  }
}