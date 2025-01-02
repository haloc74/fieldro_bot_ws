
#include "zlb_drive.h"

namespace frb
{
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
  void ZlbDrive::add_packet(int32_t slave_id, int32_t address, int32_t value, 
                            MODBUS_FUNC_CODE code, int32_t action/*=-1*/)
  {
    std::lock_guard<std::mutex> lock(_lock_packets);
    _packets.push_back(new ZlbPacket(slave_id, address, value, code, action));
  }

  /**
  * @brief      motor 제어 패킷 리스트 초기화
  * @note       
  */
  void ZlbDrive::clear_packets()
  {
    for(auto packet : _packets)
    {
      safe_delete(packet);
    }
    _packets.clear();
  }

  /**
  * @brief      _packets에서 첫번째 패킷이 전송되지 않았다면 전송을 시도한다.
  * @param[in]  
  * @return     
  * @attention  _packets의 첫번째 전송되었다면 삭제하고 리턴
  *             연속 송신을 할 때 에러가 발생하는 듯함... 확인 필요
  *             그래서 현재는 전송 이후 1cycle 이후 삭제를 하도록 하고 있음
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
        ret = _modbus->read_data_registers((*it)->_slave_id, (*it)->_address, 
                                            2, reinterpret_cast<uint16_t*>(&((*it)->_value)));
      }
      else if((*it)->_code == MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER)
      {
        ret = _modbus->write_data_register((*it)->_slave_id, (*it)->_address, (*it)->_value);
      }
      else if((*it)->_code == MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS)
      {
        ret = _modbus->write_data_registers((*it)->_slave_id, (*it)->_address, 
                                            2, reinterpret_cast<uint16_t*>(&((*it)->_value)));
      }

      if(ret != frb::Error::None)
      {
        notify_log_msg(frb::LogLevel::Error, 0, "ZlbDrive::packet_process : modbus write fail");
        notify_log_msg(frb::LogLevel::Error, 0, std::string("Error Code : ") + std::to_string(to_int(ret)));
        notify_log_msg(frb::LogLevel::Error, 0, std::string("Slave ID : ") + std::to_string((*it)->_slave_id));
        notify_log_msg(frb::LogLevel::Error, 0, std::string("Address : ") + std::to_string((*it)->_address)); 
        notify_log_msg(frb::LogLevel::Error, 0, std::string("Value : ") + std::to_string((*it)->_value));
        return;
      }
      else if((*it)->_action != -1)
      {
        notify_action_result(ret);
      }
    }
  }  
}