
#include <future>

#include "eld2_rs7020b.h"
#include <fieldro_lib/helper/helper.h>


namespace frb
{
  ELD2_RS7020B::ELD2_RS7020B(std::function<void(frb::Error)> action_result_callback, 
                             std::function<void(frb::LogLevel, int32_t, const std::string&)> log_callback,
                             std::string config_file)
  {
    // callback 함수 등록 
    action_result_notify  = action_result_callback;
    log_msg_notify        = log_callback;

    _control_mode = CONTROL_MODE::CONTROL_MODE_END;

    load_option(config_file);

    _comm_state = CommStatus::Disconnect;
    _comm = new ModbusWrapper(ModbusType::RS485,
                              config_file, 
                              "motor",
                              std::bind(&ELD2_RS7020B::modbus_state_receive, this, std::placeholders::_1));

    _servo_power = false;

    _status           = SERVO_STATUS::END;
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
  frb::Error ELD2_RS7020B::control_power(bool on)
  {
    if(_comm_state != frb::CommStatus::Connect)
    {
      log_msg(LogError, 0, "control_power - motor is not connected");              
      return frb::Error::UnConnect;
    }

    uint16_t value = on ? (int16_t)SERVO_VALUE::POWER_ON : (int16_t)SERVO_VALUE::POWER_OFF;
    frb::Error ret = _comm->write_data_registers((int)SERVO_ADDRESS::CTRL_POWER, 1, &value);

    if(ret != frb::Error::None)
    {
      std::string str = modbus_strerror(errno);
      log_msg(LogError, 0, "motor power control fail : value[" + 
                           std::to_string(value) +std::string("] : ") + str);
      return frb::Error::WriteFail;
    }
    else
    {
      if(value == (int16_t)SERVO_VALUE::POWER_ON) _servo_power = true;
      else                                        _servo_power = false;
    }

    return frb::Error::None;
  }

  frb::Error ELD2_RS7020B::control_speed_move(double direction)
  {
    if(_comm_state != frb::CommStatus::Connect) return frb::Error::UnConnect;
    if(!_servo_power)                           return frb::Error::PowerOff;   
    
    if(_control_mode != CONTROL_MODE::VELOCITY)
    {
      log_msg(LogError, 0, "ELD2 : control_speed_move fail - control mode is not velocity");
      return frb::Error::ControlModeError;
    }    

    int16_t value = (rand()%250+250)*direction;
    frb::Error error = _comm->write_data_register_test((int)VELOCITY_CONTROL::FIRST_SPEED, 0);

    usleep(1000000);

    error = _comm->write_data_register_test((int)VELOCITY_CONTROL::FIRST_SPEED, 500);

    if(error != frb::Error::None)
    {
      std::string str = modbus_strerror(errno);
      //log_msg(LogError, 0, std::string("ELD2 : Error (" + str + ")"));
      log_msg(LogError, 0, "ELD2 : Error (" + str + ")");
      return frb::Error::WriteFail;
    }
    else
    {
      //log_msg(LogInfo, 0, std::string("ELD2 : control PR0 - position = ") + std::to_string(position));
      log_msg(LogInfo, 0, "control_speed_move = "+ std::to_string(direction));
    }

    return frb::Error::None;    
  }

  frb::Error ELD2_RS7020B::control_move(int32_t abs_pos, int16_t rpm, int32_t check_interval, int32_t timeout_millisec)
  {
    if(_comm_state != frb::CommStatus::Connect) return frb::Error::UnConnect;
    if(!_servo_power)                           return frb::Error::PowerOff;

    uint16_t status = 0x0000;

    // // TEST Code =========================
    // int32_t target_pos = get_motor_position();
    // target_pos += abs_pos;
    // frb::Error ret = control_pr0((int16_t)SERVO_VALUE::ABS_POSITION, target_pos, 20, 20, 20);
    // // TEST Code End =====================

    // 실제 구동 코드
    frb::Error ret = control_pr0((int16_t)SERVO_VALUE::ABS_POSITION, abs_pos, rpm, 20, 20);

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
    if(control_pr0((int16_t)SERVO_VALUE::STOP, 0, 0, 0, 0) == frb::Error::None)
    {
      // 이전 action이 종료 되었으므로 timeout_sequence 증가
      increase_timeout_sequence();
      return true;
    }
    return false;
  }

                    
  void ELD2_RS7020B::control_pr0(int16_t rpm)
  {
    uint16_t status = 0x0000;
    uint16_t value[8];
    memset(value, 0x00, sizeof(uint16_t)*8);

    //_target_position = 0;
    value[0] = (int16_t)SERVO_VALUE::SPEED;                           // 제어 모드
    value[1] = (u_int16_t)((0) >> 16);  // 위치값 HBS
    value[2] = (u_int16_t)(0);          // 위치값 LBS
    value[3] = (int16_t)rpm;                   // Speed (RPM)
    value[4] = (int16_t)200;                   // Accel 시간 ms
    value[5] = (int16_t)200;                   // Decel 시간 ms
    value[6] = 0x00;                           // delay time ms
    value[7] = 0x10;                           // Path Number

    frb::Error error = _comm->write_data_registers((int)SERVO_ADDRESS::CTRL_PR0, sizeof(value), value); 
    
    if(error != frb::Error::None)
    {
      std::string str = modbus_strerror(errno);
      log_msg(LogError, 0, "ELD2 : Error (" + str + ")");
    }
    else
    {
      log_msg(LogInfo, 0, "ELD2 : control PR0 - rpm = "+std::to_string(rpm));
    }
    return;
  }

  frb::Error ELD2_RS7020B::control_pr0(int16_t mode, int32_t position, int16_t rpm, int16_t acc, int16_t dec)
  {
    if(_control_mode != CONTROL_MODE::POSITION)
    {
      log_msg(LogError, 0, "ELD2 : control_homing fail - control mode is not position");
      return frb::Error::ControlModeError;
    }

    uint16_t status = 0x0000;
    uint16_t value[8];
    memset(value, 0x00, sizeof(uint16_t)*8);

    _target_position = position;

    value[0] = (int16_t)mode;                   // 제어 모드
    value[1] = (u_int16_t)((position) >> 16);  // 위치값 HBS
    value[2] = (u_int16_t)(position);          // 위치값 LBS
    value[3] = (int16_t)rpm;                   // Speed (RPM)
    value[4] = (int16_t)acc;                   // Accel 시간 ms
    value[5] = (int16_t)dec;                   // Decel 시간 ms
    value[6] = 0x00;                           // delay time ms
    value[7] = 0x10;                           // Path Number

    frb::Error error = _comm->write_data_registers((int)SERVO_ADDRESS::CTRL_PR0, sizeof(value), value);

    if(error != frb::Error::None)
    {
      std::string str = modbus_strerror(errno);
      //log_msg(LogError, 0, std::string("ELD2 : Error (" + str + ")"));
      log_msg(LogError, 0, "ELD2 : Error (" + str + ")");
      return frb::Error::WriteFail;
    }
    else
    {
      //log_msg(LogInfo, 0, std::string("ELD2 : control PR0 - position = ") + std::to_string(position));
      log_msg(LogInfo, 0, "ELD2 : control PR0 - position = "+std::to_string(position));
    }

    return frb::Error::None;
  }

  frb::Error ELD2_RS7020B::control_homing(int16_t speed, int16_t acc, int16_t dec)
  {
    if(_control_mode != CONTROL_MODE::POSITION)
    {
      log_msg(LogError, 0, "ELD2 : control_homing fail - control mode is not position");
      return frb::Error::ControlModeError;
    }

    // Homing 관련 Mode Data 설정
    uint16_t value = 0x00;
    // data |= (1 << 0); // 0:CCW, 1:CW
    // data |= (1 << 1); // Specific position after homing
    // data |= (1 << 2); // Homing mode (0:Position Limit, Origin Homing)
    // data |= (1 << 8); // Homing z-signal
    frb::Error error = _comm->write_data_register((int)SERVO_ADDRESS::CTRL_HOMING, value);
    if(error != frb::Error::None)
    {
      log_msg(LogError, 0, "ELD2 : control_homing fail");
      log_msg(LogError, 0, std::string("ELD2 : ") + modbus_strerror(errno));
      return frb::Error::WriteFail;
    }
    else
    {
      log_msg(LogInfo, 0, "ELD2 : control_homing - speed = "+std::to_string(speed));
    }

    // 속도, 가, 감속 설정
    uint16_t speed_value[4];
    speed_value[0] = 100;
    speed_value[1] = 5;
    speed_value[2] = 10;
    speed_value[3] = 10;
    error = _comm->write_data_registers((int)SERVO_ADDRESS::HOMING_SPEED_HBS, sizeof(speed_value), speed_value);

    // 실제 Homing 동작
    error = _comm->write_data_register((int)SERVO_ADDRESS::CTRL_MOTION, static_cast<uint16_t>(SERVO_VALUE::HOMING));

    return frb::Error::None;
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

    frb::Error error = _comm->read_data_registers((int)SERVO_ADDRESS::GET_POSITION, 2, position);
    if(error != frb::Error::None)
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
  frb::Error ELD2_RS7020B::get_motor_status()
  {
    frb::Error error = _comm->read_data_registers((int)SERVO_ADDRESS::GET_STATUS, 1, &_motor_status);

    if(error != frb::Error::None)
    {
      log_msg(LogError, 0, "get_motor_status fail");                    
      return frb::Error::ReadFail;
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

    return frb::Error::None;
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
      // 모드를 위치 제어 모드로 변경
      change_to_position_mode();

      // servo power off 상태이므로 on 시키기
      frb::Error::None == control_power(true);

      if(_servo_power)
      {
        log_msg_notify(LogInfo, 0, "motor power on success"); 
        _status = SERVO_STATUS::STATUS_READY;        
      }
      else
      {
        log_msg_notify(LogInfo, 0, "motor power on fail !!");
        _status = SERVO_STATUS::STATUS_ERROR;
        _error  = true;
        std::async(std::launch::async, action_result_notify, frb::Error::PowerFault);
      }
    }

    return;
  } 

  void ELD2_RS7020B::initialize()
  {
    if(_error || _status == SERVO_STATUS::STATUS_ERROR)  
    {
      std::async(std::launch::async, action_result_notify, frb::Error::UnConnect);
      log_msg(LogError, 0, "motor error : ");
      return;
    }

    if(_comm_state != frb::CommStatus::Connect)
    {
      std::async(std::launch::async, action_result_notify, frb::Error::UnConnect);
      log_msg(LogError, 0, "motor is not connected");
      return;
    }

    if(_status != SERVO_STATUS::STATUS_READY)  
    {
      std::async(std::launch::async, action_result_notify, frb::Error::Busy);
      log_msg(LogInfo, 0, "motor is busy");
      return;
    }


    if(_servo_power)
    {
      log_msg_notify(LogInfo, 0, "motor homing start");

      // homing 시작
      control_homing(20, 20, 20);
      _status = SERVO_STATUS::STATUS_HOME;

      // homing 완료 감시 시작
      delay_call(1000, std::bind(&ELD2_RS7020B::check_homing_complete, this));
    }
    else
    {
      log_msg_notify(LogInfo, 0, "motor power on fail !!");
      std::async(std::launch::async, action_result_notify, frb::Error::PowerFault);
    }    
  }

  /**
  * @brief      motor 제어 가능 여부 확인
  * @param[in]  
  * @return     motor 제어 가능 여부 
  * @note       
  */
  bool ELD2_RS7020B::is_controllable()
  {
    if(_comm_state != frb::CommStatus::Connect) 
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
    std::async(std::launch::async, action_result_notify, frb::Error::None);

    // 이전 action이 종료 되었으므로 timeout_sequence 증가
    increase_timeout_sequence();

    return;
  }
  void ELD2_RS7020B::check_homing_complete()
  {
    if(_error)  return;

    get_motor_status();

    bool ready = (_motor_status & 0x0001) ? true : false;
    bool home  = (_motor_status & 0x0008) ? true : false;

    if(!ready || !home)
    {
      log_msg(LogInfo, 0, "homing delay_call restart");
      delay_call(1000, std::bind(&ELD2_RS7020B::check_homing_complete, this));
      return;
    }

    // todo : homing 완료에 따른 object state 변경
    _status = SERVO_STATUS::STATUS_READY;

    // callback을 통해 동작 완료 전달
    std::async(std::launch::async, action_result_notify, frb::Error::None);

    // 이전 action이 종료 되었으므로 timeout_sequence 증가
    increase_timeout_sequence();

    get_motor_position();

    //change_to_speed_mode();

    return;    
  }

  void ELD2_RS7020B::change_to_speed_mode()
  {
    int32_t mode = (int32_t)CONTROL_MODE::MODE_SETTING;
    int16_t value = (int16_t)CONTROL_MODE::VELOCITY;

    // 속도 모드로 변경
    frb::Error error = _comm->write_data_register(mode, value);

    if(error != frb::Error::None)
    {
      _error = true;
      _status = SERVO_STATUS::STATUS_ERROR;
      log_msg(LogError, 0, "change_to_speed_mode fail");
      log_msg(LogError, 0, std::string("ELD2 : ") + modbus_strerror(errno));
    }
    else
    {
      // 속도값이 위치할 address 설정 (첫번째 위치의 속도값을 사용할 것이다 VELOCITY_CONTROL::FIRST_SPEED)
      mode = (int32_t)VELOCITY_CONTROL::VELOCITY_SWITCHING;
      error = _comm->write_data_register(mode, 1);

      if(error != frb::Error::None)
      {
        _error = true;
        _status = SERVO_STATUS::STATUS_ERROR;
        log_msg(LogError, 0, "change_to_speed_mode fail");
        log_msg(LogError, 0, std::string("ELD2 : ") + modbus_strerror(errno));
      }
      else
      {
        _control_mode = CONTROL_MODE::VELOCITY;
        log_msg(LogInfo, 0, "change_to_speed_mode success");
      }
    }
    return;
  }

  void ELD2_RS7020B::change_to_position_mode()
  {
    // 위치 모드로 변경
    frb::Error error = _comm->write_data_register((int)CONTROL_MODE::MODE_SETTING, (int16_t)CONTROL_MODE::POSITION);
    if(error != frb::Error::None)
    {
      _error = true;
      _status = SERVO_STATUS::STATUS_ERROR;
      log_msg(LogError, 0, "change_to_position_mode fail");
      log_msg(LogError, 0, std::string("ELD2 : ") + modbus_strerror(errno));
    }
    else
    {
      _control_mode = CONTROL_MODE::POSITION;
      log_msg(LogInfo, 0, "change_to_position_mode success");
    }
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
    std::async(std::launch::async, action_result_notify, frb::Error::TimeOut);

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

  void ELD2_RS7020B::log_msg(frb::LogLevel level, int32_t error_code, std::string log)
  {
    if(log_msg_notify == nullptr)   return;

    log_msg_notify(level, 0, log);

    return;
  }  

  void ELD2_RS7020B::load_option(std::string config_file)
  {
    try
    {
      std::ifstream yaml_file(config_file);
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();
      _home_position  = yaml["motor"]["home_position"].as<int32_t>();
    }
    catch(YAML::Exception& e)
    {
      std::cout << "YAML Exception : " << e.what() << std::endl;
    }
    catch(std::exception& e)
    {
      std::cout << "Exception : " << e.what() << std::endl;
    }
    catch(...)
    {
      std::cout << "Unknown Exception" << std::endl;
    }
    
    return;
  }
}