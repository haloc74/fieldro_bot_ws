
#include "zlb_drive.h"
#include "helper/helper.h"
#include <bitset>

namespace frb
{
  #define RESOLUTION 65536
  #define FACTOR 1875.0
  #define RATIO_MOTOR 35
  #define RATIO_STEER 5.5

  ZlbDrive::ZlbDrive(std::function<void(frb::Error)> action_result_callback, 
                 std::function<void(frb::LogLevel, int32_t, const std::string&)> log_callback,
                 std::string config_file)
  {
    // callback 함수 등록 
    notify_action_result  = action_result_callback;
    notify_log_msg        = log_callback;

    _slave_id[0] = 0;
    _slave_id[1] = 1;
    _slave_id[2] = 2;

    _left_limit = 0;
    _right_limit = 0;
    _home_position = 0;

    // config 파일에서 설정값 로드
    load_option(config_file);

    _comm_state   = CommStatus::Disconnect;
    _motor_status = to_int(ZlbStatus::Fault);
    _servo_power  = false;

    _modbus = new ModbusWrapper(ModbusType::RS485,
                              config_file, 
                              "motor",
                              std::bind(&ZlbDrive::receive_modbus_state, this, std::placeholders::_1));

    _thread = new ThreadActionInfo(config_file, "motor");
    _thread->_active = true;
    _thread->_thread = std::thread(std::bind(&ZlbDrive::update, this));
  }

  ZlbDrive::~ZlbDrive()
  {
    engage_break();

    usleep(5000000);

    std::this_thread::sleep_for(std::chrono::seconds(1));

    safe_delete(_modbus);

    _thread->_active = false;
    safe_delete(_thread);
  }

  /**
  * @brief      motor 상태를 확인한다.
  * @return     ZlbStatus : motor 상태
  * @note       zlb_status.h 참조
  */
  int32_t ZlbDrive::get_motor_status()
  {
    int32_t traction_ret = get_motor_status(_slave_id[to_int(SlaveId::Traction)]);
    int32_t steering_ret = get_motor_status(_slave_id[to_int(SlaveId::Steering)]);

    return 0;
  }

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
                      std::to_string(slave_id) +
                      std::string(" ]") +
                      std::string(": motor status - ") + 
                      status_bit.to_string());
    }

    return _motor_status;
  }

  /**
  * @brief      ZlbDrive 객체의 main thread
  * @note       
  */
  void ZlbDrive::update()
  {
    while(_thread->_active)
    {
      if(_modbus->connect_check() != CommStatus::Connect)   continue;

      packet_process();

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_thread->_sleep));
    }
  }

  /**
  * @brief      modbus 객체에서 상태변경시 callback으로 호출되는 함수
  * @param[in]  const CommStatus notify : 변경된 상태
  * @note       
  */
  void ZlbDrive::receive_modbus_state(const CommStatus notify)
  {
    if(notify == _comm_state)     return;

    _comm_state = notify;

    switch(_comm_state)
    {
    case CommStatus::Connect:
      notify_log_msg(frb::LogLevel::Info, 0, "ZlbDrive::modbus_state_receive : modbus connect");
      confirm_motor_connection();
      break;
    }

    return;
  }

  /**
  * @brief      motor 연결 확인시 처리 해야 할 사항
  * @return     
  * @attention  motor 연결 확인시 servo power on flag를 true로 변경      
  */
  void ZlbDrive::confirm_motor_connection()
  {
    int32_t status = get_motor_status(to_int(frb::SlaveId::Traction));

    if(!_servo_power)
    {
      if(frb::is_on_signal(ZlbStatus::Voltage_enable, status))
      {
        _servo_power = true;
        setup_motor_configurations();
        release_break();
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
    }
  }

  /**
  * @brief      _packets에서 첫번째 패킷이 전송되지 않았다면 전송을 시도한다.
  * @param[in]  
  * @return     
  * @attention  _packets의 첫번째 전송되었다면 삭제하고 리턴
  * @note       
  */
  void ZlbDrive::packet_process()
  {
    if(_packets.empty())  return;

    std::lock_guard<std::mutex> lock(_lock_packets);

    if(_packets.front()->_sended)
    {
      safe_delete(_packets.front());
      _packets.pop_front();
    }
    else
    {
      std::deque<ZlbPacket*>::iterator it = _packets.begin();
      frb::Error ret = frb::Error::None;

      (*it)->_sended = true;

      if((*it)->_code == MODBUS_FUNC_CODE::READ_HOLDING_REGISTERS)
      {
        // todo : read holding registers
        ret = _modbus->read_data_registers((*it)->_slave_id, (*it)->_address, 
                                            2, reinterpret_cast<uint16_t*>(&((*it)->_value)));
      }
      else if((*it)->_code == MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER)
      {
        // todo : write single register
        notify_log_msg(LogInfo, 0, "ZlbDrive::packet_process : write single register");
        ret = _modbus->write_data_register((*it)->_slave_id, (*it)->_address, (*it)->_value);
      }
      else if((*it)->_code == MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS)
      {
        notify_log_msg(LogInfo, 0, "ZlbDrive::packet_process : write multiple registers");
        // todo : write multiple registers
        ret = _modbus->write_data_registers((*it)->_slave_id, (*it)->_address, 
                                            2, reinterpret_cast<uint16_t*>(&((*it)->_value)));
      }

      if(ret != frb::Error::None)
      {
        notify_log_msg(frb::LogLevel::Error, 0, "ZlbDrive::packet_process : modbus write error");
        return;
      }
      else if((*it)->_action != -1)
      {
        notify_action_result(ret);
      }

      usleep(10000);
    }
  }

  /**
  * @brief      rpm 값을 zlb rpm으로 변환
  * @param[in]  uint32_t rpm  : 변환할 rpm 값
  * @return     uint32_t      : 변환된 zlb rpm 값
  * @note       
  *   #define RESOLUTION 65536
  *   #define FACTOR 1875.0         // 이 값이 어떻게 나온값인가 ?
  *                                 // 아래 계산에서 512 값은 또 어디에서 온것인가 ?
  *   #define RATIO_MOTOR 35
  *   #define RATIO_STEER 5.5
  */
  uint32_t ZlbDrive::convert_rpm_to_zlb_rpm(uint32_t rpm)
  {
    double   exact     = (static_cast<double>(rpm) * 512 * RESOLUTION) / FACTOR;
    uint32_t converted = static_cast<uint32_t>(exact + 0.5);

    return converted;
  }

  frb::Error ZlbDrive::control_move(frb::Direction direction, int32_t position, int32_t velocity, int32_t check_interval, int32_t timeout_millisec)
  {
    // 1. traction 속도 모드로 전환
    // 2. traction 속도값 설정
    // 3. traction run_velocity
    
    return frb::Error::None;
  }

  /**
  * @brief      motor 제어 패킷 추가
  * @param[in]  int32_t slave_id      : motor slave id
  * @param[in]  int32_t address       : motor control address
  * @param[in]  int32_t value         : motor control value
  * @param[in]  MODBUS_FUNC_CODE code : modbus function code
  * @param[in]  int32_t action        : 동작 완료시 callback action
  * @return     void 
  * @note       
  */
  void ZlbDrive::add_packet(int32_t slave_id, int32_t address, int32_t value, MODBUS_FUNC_CODE code, int32_t action/*=-1*/)
  {
    std::lock_guard<std::mutex> lock(_lock_packets);
    _packets.push_back(new ZlbPacket(slave_id, address, value, code, action));
  }

  void ZlbDrive::clear_packets()
  {
    for(auto packet : _packets)
    {
      safe_delete(packet);
    }
    _packets.clear();
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

    // // direction set
    // add_packet(_slave_id[int32_t(SlaveId::Steering)], 
    //             ServoFD1X5::VELOCITY_DIRECTION_REGISTER,
    //             0, 
    //             MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);               
    return;
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
  void ZlbDrive::engage_break()
  {
    add_packet(_slave_id[int32_t(SlaveId::Traction)], ServoFD1X5::CONTROL_REGISTER, 
                ServoFD1X5::CONTROL_VALUES::STOP, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER,
                to_int(frb::UnitAction::Stop));    
  }

  /**
  * @brief      steering motor status 확인
  * @param[in]  void
  * @return     void
  * @note       callback으로 동작 
  */
 void ZlbDrive::check_steer_motor_status()
 {
    int32_t status = get_motor_status(_slave_id[to_int(SlaveId::Steering)]);
    if(frb::is_on_signal(ZlbStatus::Target_reached, status))
    {
      notify_log_msg(frb::LogLevel::Info, 0, "ZlbDrive::check_steer_motor_status : target reached");
      
      // 상위 Object에 동작 완료 통보
      notify_action_result(frb::Error::None);  
    }
    else
    {
      // 아직 동작중이면 1초후에 다시 확인
      delay_call(1000, std::bind(&ZlbDrive::check_steer_motor_status, this));
    }
    return;
 }

  /**
  * @brief      degree 값을 position 값으로 변환
  * @param[in]  const double degree : 변환할 degree 값
  * @return     int32_t             : 변환된 position 값
  * @note       
  */
  int32_t ZlbDrive::degree_to_position(const double degree)
  {
    int32_t position = static_cast<int32_t>(degree * (RESOLUTION * RATIO_MOTOR * RATIO_STEER) / 360.0);

    return position;
  }

  void ZlbDrive::load_option(std::string config_file)
  {
    try
    {
      // file open
      std::ifstream yaml_file(config_file);
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      _slave_id[to_int(frb::SlaveId::Traction)] = yaml["motor"]["traction_id"].as<int32_t>();
      _slave_id[to_int(frb::SlaveId::Steering)] = yaml["motor"]["steering_id"].as<int32_t>();

      _left_limit   = yaml["motor"]["left_limit"].as<int32_t>();
      _right_limit  = yaml["motor"]["right_limit"].as<int32_t>();
      _home_position= yaml["motor"]["home_position"].as<int32_t>();

      // todo 
      //int32_t     value = yaml["session"]["key"].as<int32_t>();
      //std::string value = yaml["session"]["key"].as<std::string>();
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