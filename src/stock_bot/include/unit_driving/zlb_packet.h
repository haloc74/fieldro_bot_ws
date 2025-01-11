
#pragma once

#include <cstdint>
#include "zlb_resisters.h"

namespace frb
{
  class ZlbPacket
  {
  public:
    ZlbPacket()
    {
      _sended   = false;
      _slave_id = 1;
      _address  = 0;
      _value    = 0;
      _code     = MODBUS_FUNC_CODE::READ_HOLDING_REGISTERS;
      _callback = nullptr;
      _action   = -1;
    }
    
    ZlbPacket(int32_t slave_id, int32_t address, int32_t value, MODBUS_FUNC_CODE code, int32_t action, std::function<void()> callback = nullptr)
    {
      _slave_id = slave_id;
      _address  = address;
      _value    = value;
      _code     = code;
      _sended   = false;
      _callback = callback;
      _action   = action;
    }

    // 복사 생성자
    ZlbPacket(const ZlbPacket& protocol)
    {
      _address  = protocol._address;
      _slave_id = protocol._slave_id;
      _value    = protocol._value;
      _code     = protocol._code;
      _sended  = protocol._sended;
      _callback = protocol._callback;
    }
    ZlbPacket(const ZlbPacket* protocol)
    {
      _address  = protocol->_address;
      _slave_id = protocol->_slave_id;
      _value    = protocol->_value;
      _code = protocol->_code;
      _sended = protocol->_sended;
      _callback = protocol->_callback;
    }
    
    // 대입연산자
    ZlbPacket& operator=(const ZlbPacket& protocol)
    {
      _address  = protocol._address;
      _slave_id = protocol._slave_id;
      _value    = protocol._value;
      _code = protocol._code;
      _sended = protocol._sended;
      _callback = protocol._callback;
      return *this;
    }
    ZlbPacket& operator=(const ZlbPacket* protocol)
    {
      _address  = protocol->_address;
      _slave_id = protocol->_slave_id;
      _value    = protocol->_value;
      _code     = protocol->_code;
      _sended   = protocol->_sended;
      _callback = protocol->_callback;
      return *this;
    }

    ~ZlbPacket()    {    }

    int32_t           _slave_id; // slave id
    int32_t           _address; // 주소값
    int32_t           _value;   // 값  (single : opmode value, multiple : position, velocity)
    MODBUS_FUNC_CODE  _code;    // function code
    bool              _sended;  // 전송 여부
    int32_t           _action;  // 동작 완료 여부

    std::function<void()> _callback; // 동작 완료 callback
  };  
}