
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
    action_result_notify  = action_result_callback;
    log_msg_notify        = log_callback;

    _comm_state   = CommStatus::Disconnect;
    _motor_status = to_int(ZlbStatus::Fault);

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
    test_stop();

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
    std::lock_guard<std::mutex> lock(_lock_packets);
   
    uint16_t  status  = 0;
    frb::Error ret    = _modbus->read_data_registers(ServoFD1X5::STATUSWORD_REGISTER, 1, &status);
    
    if(ret != frb::Error::None)
    {
      log_msg_notify(frb::LogLevel::Error, 0, "ZlbDrive::get_motor_status : modbus read error");
      _motor_status = to_int(ZlbStatus::Fault);
    }
    else
    {
      _motor_status = static_cast<int32_t>(status);

      std::bitset<16> status_bit(status);
      log_msg_notify(frb::LogLevel::Info, 
                      0, 
                      "ZlbDrive::get_motor_status : motor status - " + 
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
  void ZlbDrive::modbus_state_receive(const CommStatus notify)
  {
    if(notify == _comm_state)     return;

    _comm_state = notify;

    switch(_comm_state)
    {
    case CommStatus::Connect:
      log_msg_notify(frb::LogLevel::Info, 0, "ZlbDrive::modbus_state_receive : modbus connect");
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
    int32_t status = get_motor_status();

    if(!_servo_power)
    {
      if(frb::is_on_signal(ZlbStatus::Voltage_enable, status))
      {
        _servo_power = true;
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
        ret = _modbus->read_data_registers((*it)->_address, 2, reinterpret_cast<uint16_t*>(&((*it)->_value)));
      }
      else if((*it)->_code == MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER)
      {
        // todo : write single register
        log_msg_notify(LogInfo, 0, "ZlbDrive::packet_process : write single register");
        ret = _modbus->write_data_register((*it)->_address, (*it)->_value);
      }
      else if((*it)->_code == MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS)
      {
        log_msg_notify(LogInfo, 0, "ZlbDrive::packet_process : write multiple registers");
        // todo : write multiple registers
        ret = _modbus->write_data_registers((*it)->_address, 
                                            2, 
                                            reinterpret_cast<uint16_t*>(&((*it)->_value)));
      }

      if(ret != frb::Error::None)
      {
        log_msg_notify(frb::LogLevel::Error, 0, "ZlbDrive::packet_process : modbus write error");
        return;
      }
      else if((*it)->_action != -1)
      {
        action_result_notify(ret);
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

  void ZlbDrive::add_packet(int32_t address, int32_t value, MODBUS_FUNC_CODE code, int32_t action/*=-1*/)
  {
    std::lock_guard<std::mutex> lock(_lock_packets);
    _packets.push_back(new ZlbPacket(address, value, code, action));
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