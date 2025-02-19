
#include "zlb_drive.h"
#include "zlb_resisters.h"

#include <fieldro_lib/helper/helper.h>
#include <bitset>

namespace frb
{
  /**
  * @brief      motor 연결 확인시 처리 해야 할 사항
  * @return     
  * @attention  motor 연결 확인시 servo power on flag를 true로 변경      
  */
  void ZlbDrive::confirm_motor_connection()
  {
    int32_t traction  = get_motor_status(to_int(frb::SlaveId::Traction));
    int32_t steer     = get_motor_status(to_int(frb::SlaveId::Steering));
    if(!_servo_power)
    {
      if(frb::is_on_signal(ZlbStatus::Voltage_enable, traction))
      {
        _servo_power = true;                // 
        setup_motor_configurations();       // motor 초기값 설정
        //release_break();                    // break 해제
        breaking(false);                    // break 해제

        // todo :
        // notify_action_result(frb::Error::None); 호출 하여 
        // motor의 초기화가 완료 되었다고 통보하자.
      }
      else
      {
        // todo : motor power off
        // test_servor_power(false);
      }
    }
    else
    {
      // todo : 동작중 꺼졌다가 켜졌다 ??
      notify_log_msg(frb::LogLevel::Info, 0, "ZlbDrive::confirm_motor_connection : motor power on");
      assert(false);
    }
  }  

  /**
  * @brief      motor 초기 설정값 설정
  * @param[in]  
  * @return     void
  * @note       1. OPMODE_REGISTER : 속도 모드로 설정
  *             2. VELOCITY_DIRECTION_REGISTER : 방향 설정
  */
  void ZlbDrive::setup_motor_configurations()
  {
    // traction motor (속도모드, 방향설정)
    add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::OPMODE_REGISTER, 
               ServoFD1X5::OPMODE_VALUES::VELOCITY, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
    add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::VELOCITY_DIRECTION_REGISTER, 
               0, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);  

    // steering motor (좌우 limit 설정, 위치모드, 방향설정)
    add_packet(_slave_id[int32_t(SlaveId::Steering)], 
               ServoFD1X5::DIN1_REGISTER, 
               ServoFD1X5::LIMIT_MODE::POSITIVE, 
               MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
    add_packet(_slave_id[int32_t(SlaveId::Steering)], 
               ServoFD1X5::DIN3_REGISTER, 
               ServoFD1X5::LIMIT_MODE::NEGATIVE, 
               MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);               

    // position mode set
    add_packet(_slave_id[int32_t(SlaveId::Steering)], 
               ServoFD1X5::OPMODE_REGISTER, 
               ServoFD1X5::OPMODE_VALUES::POSITION, 
               MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
    return;
  } 

  /**
  * @brief      motor의 현재 상태를 check 하는 함수.
  * @param[in]  int32_t slave_id : motor slave id
  * @return     int32_t          : motor status
  * @note       
  * @see        enum class ZlbStatus
  */
  int32_t ZlbDrive::get_motor_status(int32_t slave_id)
  {
    std::lock_guard<std::mutex> lock(_lock_packets);
   
    uint16_t  status  = 0;
    frb::Error ret    = _modbus->read_data_registers(slave_id, ServoFD1X5::STATUSWORD_REGISTER, 1, &status);
     if(ret != frb::Error::None)
    {
      notify_log_msg(frb::LogLevel::Error, 0, 
                     std::string("ZlbDrive::get_motor_status : modbus read error") + 
                     std::to_string(slave_id));
      _motor_status = to_int(ZlbStatus::Fault);
    }
    else
    {
      _motor_status = static_cast<int32_t>(status);

      std::bitset<16> status_bit(status);
      notify_log_msg(frb::LogLevel::Info, 
                      0, 
                      std::string("ZlbDrive::get_motor_status [ ") +
                      std::to_string(_wheel_index) + 
                      std::to_string(slave_id) +
                      std::string(" ]") +
                      std::string(": motor status - ") + 
                      status_bit.to_string());
    }

    return _motor_status;
  }

  /**
  * @brief      steering motor status 확인
  * @param[in]  void
  * @return     void
  * @note       callback으로 동작 
  * @attention  steering motor가 동작을 시작하면 callback을 통해 1초마다 동작을 완료 했는지 확인하고
  *             동작 완료 되지 않았다면 다시 callback 호출 해야 한다.
  *             steering motor 동작중에만 사용
  */
  void ZlbDrive::is_steering_complete()
  {
      int32_t status = get_motor_status(_slave_id[to_int(SlaveId::Steering)]);
      if(frb::is_on_signal(ZlbStatus::Target_reached, status))
      {
        notify_log_msg(frb::LogLevel::Info, 0, "ZlbDrive::check_steer_motor_status : target reached");
        
        // 상위 Object에 동작 완료 통보
        notify_action_result(_wheel_index, frb::Error::None);  
      }
      else
      {
        // 아직 동작중이면 1초후에 다시 확인
        delay_call(1000, std::bind(&ZlbDrive::is_steering_complete, this));
      }
      return;
  }

  /**
  * @brief      degree 값을 position 값으로 변환
  * @param[in]  const double degree : 변환할 degree 값
  * @return     int32_t             : 변환된 position 값
  * @note       steering motor를 각도로 제어하기 위해 해당 각도에 따른 encoder 값을 계산
  */
  int32_t ZlbDrive::degree_to_position(const double degree)
  {
    int32_t position = static_cast<int32_t>(degree * 
                      (ZlbMotorParams::RESOLUTION * ZlbMotorParams::RATIO_MOTOR * ZlbMotorParams::RATIO_STEER) / 360.0);

    return position;
  }

  /**
  * @brief      rpm 값을 zlb rpm으로 변환
  * @param[in]  uint32_t rpm  : 변환할 rpm 값
  * @return     uint32_t      : 변환된 zlb rpm 값
  * @note       zlb motor에서는 rpm값을 바로 사용하지 않고 보다 정밀하게 제어하기 위하여 
  *             scaleup(512) 및 감속비(ratio)를 고려하여 변환을 하고 그때 얻어진 값으로 사용을 한다.
  
  *   #define RESOLUTION 65536    // 분해능
  *   #define FACTOR 1875.0       // 분해능/기어비 = 65536/35 = 1872.45???
  *   #define RATIO_MOTOR 35      // 기어비
  *   #define RATIO_STEER 5.5
  */
  uint32_t ZlbDrive::convert_rpm_to_zlb_rpm(double rpm)
  {
//    if(rpm < 0.0)  return 0;
    
    double   exact     = (static_cast<double>(rpm) * 512.0 * ZlbMotorParams::RESOLUTION) / ZlbMotorParams::FACTOR;
    uint32_t converted = static_cast<uint32_t>(exact + 0.5);

    return converted;
  }

  /**
  * @brief      velocity 값을 rpm으로 변환
  * @param[in]  int32_t velocity  : 변환할 velocity 값 (m/s)
  * @return     int32_t rpm       : 변환된 rpm 값
  * @note       
  */
  double ZlbDrive::convert_velocity_to_rpm(double velocity)
  {
//    if(velocity < 0.0)  return 0.0;

    //double   rpm = (velocity * 60.0) / (2.0 * M_PI * ZlbMotorParams::WHEEL_RAIDOUS);
    double   rpm = (velocity * 60.0) / (M_PI * ZlbMotorParams::WHEEL_RAIDOUS);

    return rpm;
    //return static_cast<int32_t>(rpm);
  }        
}