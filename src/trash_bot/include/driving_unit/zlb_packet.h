
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
      _address  = 0;
      _value    = 0;
      _code = MODBUS_FUNC_CODE::READ_HOLDING_REGISTERS;
    }
    
    ZlbPacket(int32_t address, int32_t value, MODBUS_FUNC_CODE code)
    {
      _address  = address;
      _value    = value;
      _code     = code;
      _sended   = false;
    }

    // 복사 생성자
    ZlbPacket(const ZlbPacket& protocol)
    {
      _address  = protocol._address;
      _value    = protocol._value;
      _code     = protocol._code;
      _sended  = protocol._sended;
    }
    ZlbPacket(const ZlbPacket* protocol)
    {
      _address  = protocol->_address;
      _value    = protocol->_value;
      _code = protocol->_code;
      _sended = protocol->_sended;
    }
    
    // 대입연산자
    ZlbPacket& operator=(const ZlbPacket& protocol)
    {
      _address  = protocol._address;
      _value    = protocol._value;
      _code = protocol._code;
      _sended = protocol._sended;
      return *this;
    }
    ZlbPacket& operator=(const ZlbPacket* protocol)
    {
      _address  = protocol->_address;
      _value    = protocol->_value;
      _code     = protocol->_code;
      _sended   = protocol->_sended;
      return *this;
    }

    ~ZlbPacket()    {    }

    int32_t           _address;     // 주소값
    int32_t           _value;       // 값  (single : opmode value, multiple : position, velocity)
    MODBUS_FUNC_CODE  _code;        // function code
    bool              _sended;      // 전송 여부
  };  
}