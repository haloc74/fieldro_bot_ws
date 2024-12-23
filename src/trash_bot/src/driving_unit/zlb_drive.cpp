
#include "zlb_drive.h"
#include "helper/helper.h"

namespace frb
{
  ZlbDrive::ZlbDrive(std::function<void(frb::Error)> action_result_callback, 
                 std::function<void(frb::LogLevel, int32_t, const std::string&)> log_callback,
                 std::string config_file)
  {
    // callback 함수 등록 
    action_result_notify  = action_result_callback;
    log_msg_notify        = log_callback;

    _comm_state   = CommStatus::Disconnect;
    //_motor_status = MotorRuntimeState::None;
    _servo_power  = false;

    _modbus = new ModbusWrapper(ModbusType::RS485,
                              config_file, 
                              "motor",
                              std::bind(&ZlbDrive::modbus_state_receive, this, std::placeholders::_1));

    _thread = new ThreadActionInfo(config_file, "motor");
    _thread->_active = true;
    _thread->_thread = std::thread(std::bind(&ZlbDrive::update, this));
  }

  ZlbDrive::~ZlbDrive()
  {
    // todo : servor power off
    std::this_thread::sleep_for(std::chrono::seconds(1));

    safe_delete(_modbus);

    _thread->_active = false;
    safe_delete(_thread);
  }

  void ZlbDrive::update()
  {
    while(_thread->_active)
    {
      if(_modbus->connect_check() != CommStatus::Connect)   continue;

      // todo : motor에 대한 상태를 확인하고 처리하는 로직을 작성하자
      // 1. traction motor status check
      // 2. steer motor status check

      packet_process();

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_thread->_sleep));
    }
  }

  void ZlbDrive::modbus_state_receive(const CommStatus notify)
  {
    if(notify == _comm_state)     return;

    _comm_state = notify;

    if(_comm_state == CommStatus::Connect && !_servo_power)
    {
      // todo : 연결 되었다 motor에 대한 적절한 처리 하자

      // 1. servo motor power on
      // test_servor_power(true);

      // 2. traction motor init
      // 3. steer motor init
    }
    return;
  }

  // void ZlbDrive::test_servor_power(bool on)
  // {
  //   if(_comm_state != frb::CommStatus::Connect) 
  //   {
  //     return;
  //   }
  // }

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

      if((*it)->_code == MODBUS_FUNC_CODE::READ_HOLDING_REGISTERS)
      {
        // todo : read holding registers
      }
      else if((*it)->_code == MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER)
      {
        // todo : write single register
        ret = _modbus->write_data_bits((*it)->_address, (*it)->_value);
      }
      else if((*it)->_code == MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS)
      {
        // todo : write multiple registers
        ret = _modbus->write_data_register((*it)->_address, 
                                            2, 
                                            reinterpret_cast<uint16_t*>(&((*it)->_value)));
      }

      (*it)->_sended = true;

      usleep(1000);
    }
  }

  void ZlbDrive::test_run()
  {
    add_packet(ServoFD1X5::OPMODE_REGISTER, ServoFD1X5::OPMODE_VALUES::VELOCITY, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
    add_packet(ServoFD1X5::VELOCITY_COMMAND_REGISTER, 100, MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);
    add_packet(ServoFD1X5::CONTROL_REGISTER, ServoFD1X5::CONTROL_VALUES::START, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
    return;
  }

  void ZlbDrive::test_stop()
  {
    add_packet(ServoFD1X5::CONTROL_REGISTER, ServoFD1X5::CONTROL_VALUES::STOP, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
    return;
  }


  frb::Error ZlbDrive::control_move(frb::Direction direction, int32_t position, int32_t velocity, int32_t check_interval, int32_t timeout_millisec)
  {
    // 1. traction 속도 모드로 전환
    // 2. traction 속도값 설정
    // 3. traction run_velocity
    
    return frb::Error::None;
  }

  void ZlbDrive::add_packet(int32_t address, int32_t value, MODBUS_FUNC_CODE code)
  {
    std::lock_guard<std::mutex> lock(_lock_packets);

    _packets.push_back(new ZlbPacket(address, value, code));
  }

  void ZlbDrive::clear_packets()
  {
    for(auto packet : _packets)
    {
      safe_delete(packet);
    }
    _packets.clear();
  }
}

 






// #include "zlb_drive.h"
// namespace frb
// {

//   ZlbDrive::ZlbDrive(std::string config_file)
//   {
//     // _modbus = new ModbusWrapper(ModbusType::RTU, "/home/fieldro/Dev/zlb_drive/src/zlb_drive/config/zlb_drive.yaml");
//     // _modbus->connect_check();

//     _sorvo_power = false;
//     _modbus = new ModbusWrapper(ModbusType::RTU, 
//                                 config_file, 
//                                 "drive", 
//                                 std::bind(&ZlbDrive::modbus_state_receive, this, std::placeholders::_1));

//     _traction = new ZlbTraction(std::bind(&ZlbDrive::traction_callback, this, std::placeholders::_1, std::placeholders::_2, std::placeholders::_3));

//     _steer = new ZlbSteer(std::bind(&ZlbDrive::steer_callback, this, std::placeholders::_1, std::placeholders::_2, std::placeholders::_3), "/home/fieldro/Dev/zlb_drive/src/zlb_drive/config/zlb_steer.yaml");

//     _thread = new ThreadActionInfo(config_file, "motor");
//     _thread->_thread = std::thread(std::bind(&ZlbDrive::update, this));  
//     _thread->_active = true;
//   }

//   ZlbDrive::~ZlbDrive()
//   {
//     stop();

//     safe_delete(_traction);
//     safe_delete(_steer);
//     safe_delete(_modbus);

//     _thread->_active = false;
//     safe_delete(_thread);
//   }

//   /**
//   * @brief      modbus 연결 상태 통보 callback
//   * @param[in]  const CommStatus notify : modbus 상태
//   * @return     void
//   * @note       이전과 동일한 상태일 경우에는 처리를 할 필요가 없다.
//   */
//   void ZlbDrive::modbus_state_receive(const CommStatus notify)
//   {
//     if(notify == _modbus_state)     return;

//     _modbus_state = notify;

//     if(_modbus_state == CommStatus::Connect && !_sorvo_power)
//     {
//       // todo : 연결 되었다 motor에 대한 적절한 처리 하자
//       // 1. servo motor power on
//       // 2. traction motor init
//       // 3. steer motor init
//     }
//     return;
//   }

//   void ZlbDrive::update()
//   {
//     while(_thread->_active)
//     {
//       if(_modbus->connect_check() != CommStatus::Connect)   continue;

//       // todo : motor에 대한 상태를 확인하고 처리하는 로직을 작성하자
//       // 1. traction motor status check
//       // 2. steer motor status check

//       // thread Hz 싱크 및 독점 방지를 위한 sleep
//       std::this_thread::sleep_for(std::chrono::milliseconds(_thread->_sleep));
//     }
//   }
//}