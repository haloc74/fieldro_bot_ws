
#include <future>


#include "eld2_rs7020b.h"
#include "helper/helper.h"


namespace fieldro_bot
{
  ELD2_RS7020B::ELD2_RS7020B(std::function<void(fieldro_bot::Error)> action_result_callback, 
                             std::function<void(fieldro_bot::UnitName, fieldro_bot::LogLevel, int32_t, std::string)> log_callback,
                             std::string config_file)
  {
    // callback 함수 등록 
    action_result_notify  = action_result_callback;
    log_msg_notify        = log_callback;

    _comm_state = CommStatus::Disconnect;
    _comm = new ModbusWrapper(ModbusType::RS485,
                              config_file, 
                              "motor",
                              std::bind(&ELD2_RS7020B::modbus_state_receive, this, std::placeholders::_1));

    _servo_power = false;

    _motor_status     = 0;
    _current_position = 0;
    _target_position  = 0;

    _timeout_sequence = 0;

    _error = false;

    _acc = 0;
    _dec = 0;
    _rpm = 0;

    // thread action info 생성
    _thread = new ThreadActionInfo(config_file, "motor");
    _thread->_active = true;
    _thread->_thread = std::thread(std::bind(&ELD2_RS7020B::update, this));
  }
 

  ELD2_RS7020B::~ELD2_RS7020B()
  {
    control_power(false);
    std::this_thread::sleep_for(std::chrono::seconds(1));
    
    safe_delete(_comm);

    _thread->_active = false;
    safe_delete(_thread);
  }

  void ELD2_RS7020B::update()
  {
    while(_thread->_active)
    {
      if(_comm->connect_check() != CommStatus::Connect)   continue;

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_thread->_sleep));
    }
  }

  /**
  * @brief      motor 전원 제어
  * @param[in]  on : 전원 on/off
  * @return     
  * @note       
  */
  fieldro_bot::Error ELD2_RS7020B::control_power(bool on)
  {
    if(_comm_state != fieldro_bot::CommStatus::Connect)
    {
      log_msg(LogError, 0, "control_power - motor is not connected");              
      return fieldro_bot::Error::UnConnect;
    }

    uint16_t value = on ? (int16_t)SERVO_VALUE::POWER_ON : (int16_t)SERVO_VALUE::POWER_OFF;

    fieldro_bot::Error ret = _comm->write_data_register((int)SERVO_ADDRESS::CTRL_POWER, 1, &value);

    if(ret != fieldro_bot::Error::None)
    {
      std::string str = modbus_strerror(errno);
      log_msg(LogError, 0, "motor power control fail : value[" + 
                           std::to_string(value) +std::string("] : ") + str);
      return fieldro_bot::Error::WriteFail;
    }
    else
    {
      if(value == (int16_t)SERVO_VALUE::POWER_ON) _servo_power = true;
      else                                        _servo_power = false;
    }

    return fieldro_bot::Error::None;
  }

  fieldro_bot::Error ELD2_RS7020B::control_move(int32_t abs_pos, int16_t rpm, int32_t check_interval, int32_t timeout_millisec)
  {
    if(_comm_state != fieldro_bot::CommStatus::Connect) return fieldro_bot::Error::UnConnect;
    if(!_servo_power)                                   return fieldro_bot::Error::PowerOff;

    uint16_t status = 0x0000;

    // // TEST Code =========================
    // int32_t target_pos = get_motor_position();
    // target_pos += abs_pos;
    // fieldro_bot::Error ret = control_pr0((int16_t)SERVO_VALUE::ABS_POSITION, target_pos, 20, 20, 20);
    // // TEST Code End =====================

    // 실제 구동 코드
    fieldro_bot::Error ret = control_pr0((int16_t)SERVO_VALUE::ABS_POSITION, abs_pos, rpm, 20, 20);

    // 동작 완료 및 timeout 체크 위한 로직
    // limit sensor을 이용한 종료을 해야 할 경우에는 timeout을 설정하지 않는다.
    if(check_interval != 0) 
    {
      delay_call(check_interval, std::bind(&ELD2_RS7020B::check_action_complete, this));
    }

    if(timeout_millisec != 0) 
    {
      delay_call(timeout_millisec, std::bind(&ELD2_RS7020B::action_timeout, this, _timeout_sequence));
    }
    
    return ret;
  }

  void ELD2_RS7020B::increase_timeout_sequence()
  {
    _timeout_sequence++;
    if(_timeout_sequence > 100000000)  
    {
      _timeout_sequence = 0;
    }
  }

  bool ELD2_RS7020B::stop_motor()
  {
    if(control_pr0((int16_t)SERVO_VALUE::STOP, 0, 0, 0, 0) == fieldro_bot::Error::None)
    {
      // 이전 action이 종료 되었으므로 timeout_sequence 증가
      increase_timeout_sequence();
      return true;
    }
    return false;
  }

  fieldro_bot::Error ELD2_RS7020B::control_pr0(int16_t mode, int32_t position, int16_t rpm, int16_t acc, int16_t dec)
  {
    uint16_t status = 0x0000;
    uint16_t value[8];
    memset(value, 0x00, sizeof(uint16_t)*8);

    _target_position = position;

    value[0] = mode;                           // 제어 모드
    value[1] = (u_int16_t)((position) >> 16);  // 위치값 HBS
    value[2] = (u_int16_t)(position);          // 위치값 LBS
    value[3] = (int16_t)rpm;                   // Speed (RPM)
    value[4] = (int16_t)acc;                   // Accel 시간 ms
    value[5] = (int16_t)dec;                   // Decel 시간 ms
    value[6] = 0x00;                           // delay time ms
    value[7] = 0x10;                           // Path Number

    fieldro_bot::Error error = _comm->write_data_register((int)SERVO_ADDRESS::CTRL_PR0, sizeof(value), value);

    if(error != fieldro_bot::Error::None)
    {
      std::string str = modbus_strerror(errno);
      //log_msg(LogError, 0, std::string("ELD2 : Error (" + str + ")"));
      log_msg(LogError, 0, "ELD2 : Error (" + str + ")");
      return fieldro_bot::Error::WriteFail;
    }
    else
    {
      //log_msg(LogInfo, 0, std::string("ELD2 : control PR0 - position = ") + std::to_string(position));
      log_msg(LogInfo, 0, "ELD2 : control PR0 - position = "+std::to_string(position));
    }

    return fieldro_bot::Error::None;
  }

  /**
  * @brief      motor의 현재 위치 확인
  * @param[in]  
  * @return     
  * @note       
  */
  int32_t ELD2_RS7020B::get_motor_position()
  {
    int32_t  encoder_pos = INT32_MAX;
    uint16_t position[2];
    memset(position, 0x00, sizeof(uint16_t)*2);

    fieldro_bot::Error error = _comm->read_data_registers((int)SERVO_ADDRESS::GET_POSITION, 2, position);
    if(error != fieldro_bot::Error::None)
    {
      log_msg(LogError, 0, "ELD2 : read fail");
      log_msg(LogError, 0, std::string("ELD2 : ") + modbus_strerror(errno));
      return encoder_pos;
    }
    else
    {
      encoder_pos = (long)position[0] << 16 | position[1];
      log_msg(LogInfo, 0, "ELD2 : current position = "+std::to_string(encoder_pos));
    }
    _current_position = encoder_pos;

    return encoder_pos;    
  }



  /**
  * @brief      motor의 현재 상태 체크
  * @param[in]  
  * @return     
  * @note       
  */
  fieldro_bot::Error ELD2_RS7020B::get_motor_status()
  {
    fieldro_bot::Error error = _comm->read_data_registers((int)SERVO_ADDRESS::GET_STATUS, 1, &_motor_status);

    if(error != fieldro_bot::Error::None)
    {
      log_msg(LogError, 0, "get_motor_status fail");                    
      return fieldro_bot::Error::ReadFail;
    }

    std::string status_str = ""; 
    log_msg(LogInfo, 0, "Loader : status value \t= "+std::to_string(_motor_status));
    
    if(_motor_status & 0x0001)  log_msg(LogInfo, 0, "Loader : status Ready \t= O");
    else                        log_msg(LogInfo, 0, "Loader : status Ready \t= X");

    if(_motor_status & 0x0002)  log_msg(LogInfo, 0, "Loader : status Run \t= O");
    else                        log_msg(LogInfo, 0, "Loader : status Run \t= X");

    if(_motor_status & 0x0004)  log_msg(LogInfo, 0, "Loader : status Err \t= O");
    else                        log_msg(LogInfo, 0, "Loader : status Err \t= X");

    if(_motor_status & 0x0008)  log_msg(LogInfo, 0, "Loader : status HOME OK \t= O");
    else                        log_msg(LogInfo, 0, "Loader : status HOME OK \t= X");

    if(_motor_status & 0x0010)  log_msg(LogInfo, 0, "Loader : status In Position \t= O");
    else                        log_msg(LogInfo, 0, "Loader : status In Position \t= X");

    if(_motor_status & 0x0020)  log_msg(LogInfo, 0, "Loader : status AT-SPEED = O");         // 목표 속도 도달
    else                        log_msg(LogInfo, 0, "Loader : status AT-SPEED = X");

    return fieldro_bot::Error::None;
  }

  /**
  * @brief      modbus 상태 변경시 호출
  * @param[in]  notify : 통신 연결 상태
  * @return     
  * @note       이전과 동일한 상태일 경우에는 callback을 호출하지 않는다.
  */
  void ELD2_RS7020B::modbus_state_receive(const CommStatus notify)
  {
    if(notify == _comm_state)     return;

    _comm_state = notify;

    if(_comm_state == CommStatus::Connect && !_servo_power)
    {
      control_power(true);
    }

    return;
  } 

  /**
  * @brief      motor 제어 가능 여부 확인
  * @param[in]  
  * @return     motor 제어 가능 여부 
  * @note       
  */
  bool ELD2_RS7020B::is_controllable()
  {
    if(_comm_state != fieldro_bot::CommStatus::Connect) 
    {
      log_msg(LogError, 0, "motor is not connected");
      return false;
    }

    if(!_servo_power)
    {
      log_msg(LogError, 0, "motor power is off");
      return false;
    }

    return true;
  }

  /**
  * @brief      motor 동작 완료 여부 확인
  * @attention  inposition bit가 1이 되는 경우에는 목표 위치에 도달했다고 판단하지만,
  *             실제 위치와 목표 위치가 일치하는지 확인하는 과정이 필요하다.
  *             예상과 달리 상당한 오차가 있음에도 불구하고 inposition bit가 1이 되는 경우가 있음
  */
  void ELD2_RS7020B::check_action_complete()
  {
    if(_error)  return;

    get_motor_status();

    bool simillar   = is_simillar_position(get_motor_position());
    bool ready      = (_motor_status & 0x0001) ? true : false;
    bool inposition = (_motor_status & 0x0010) ? true : false;

    if(!ready || !inposition || !simillar)
    {
      log_msg(LogInfo, 0, "delay_call");
      delay_call(1000, std::bind(&ELD2_RS7020B::check_action_complete, this));
      return;
    }

    // callback을 통해 동작 완료 전달
    std::async(std::launch::async, action_result_notify, fieldro_bot::Error::None);

    // 이전 action이 종료 되었으므로 timeout_sequence 증가
    increase_timeout_sequence();

    return;
  }

  /**
  * @brief      motor 동작 시간 초과시 호출
  * @note       timeout시 모터의 동작은 무조건 정지 되어야 한다.
  */
  void ELD2_RS7020B::action_timeout(int32_t sequence)
  {
    if(_timeout_sequence != sequence)  return;

    // callback을 통해 timeout 전달
    std::async(std::launch::async, action_result_notify, fieldro_bot::Error::TimeOut);

    // motor 정지
    control_pr0((int16_t)SERVO_VALUE::STOP, 0, 0, 0, 0);

    // error flag 설정
    _error = true;

    return;
  }

  /**
  * @brief      현재 위치와 목표 위치가 유사한지 확인
  * @param[in]  position : 현재 위치
  * @return     근접 범위 내에 위치하면 true, 그렇지 않으면 false
  */
  bool ELD2_RS7020B::is_simillar_position(int32_t position)
  {
    if(abs(_target_position - position) < 5000) return true;
    else                                        return false;
  }

  void ELD2_RS7020B::log_msg(fieldro_bot::LogLevel level, int32_t error_code, std::string log)
  {
    if(log_msg_notify == nullptr)   return;

    log_msg_notify(fieldro_bot::UnitName::Loader, level, 0, log);

    return;
  }  
}