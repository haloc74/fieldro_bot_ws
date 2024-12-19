
#pragma once

#include <cstdint>
#include <string>
#include "io_define.h"

namespace frb
{
  class SignalInfo
  {
  private:
    SignalInfo(){};

  public:
    SignalInfo(int32_t index, IOContactType type, std::string name)
    {
      _index = index;
      _type  = type;
      _name  = name;
      _on    = false;
      _value = UINT8_MAX;
    }

    // 복사 생성자
    SignalInfo(const SignalInfo& rhs)
    {
      _index = rhs._index;
      _type  = rhs._type;
      _name  = rhs._name;
      _on    = rhs._on;
      _value = rhs._value;
    }

    SignalInfo& operator=(const SignalInfo& rhs)
    {
      _index = rhs._index;
      _type  = rhs._type;
      _name  = rhs._name;
      _on    = rhs._on;
      _value = rhs._value;
      return (*this);
    }

    SignalInfo(SignalInfo* rhs)
    {
      _index = rhs->_index;
      _type  = rhs->_type;
      _name  = rhs->_name;
      _on    = rhs->_on;
      _value = rhs->_value;
    }

    ~SignalInfo()
    {
    }

    bool initialize_complete()
    {
      if(_value != UINT8_MAX) return true;
      return false;
    }

    int32_t       _index;
    bool          _on;
    IOContactType _type;
    std::string   _name;
    uint8_t       _value;

    /**
    /* @brief  io signal update 함수
    /* @param  uint8_t value    : 현재 io signal 값
    /* @param  std::string& msg : 변경 된 io signal 상태 메시지
    /* @param  bool& on         : 변경 된 io signal 상태
    /* @return signal 변경 여부
    /* @attention return 값이 false 일 경우 msg, on은 의미없다.
    */
    bool update_value(uint8_t value, std::string& log_msg, bool& on)
    {
      if(_value == value) return false;

      _value  = value;
      log_msg = is_detected();
      on      = _on;
      return true;
    }

    /**
    /* @brief     현재 IO Signal 상태 확인
    /* @attention 호출 하는 쪽에서 이전 값을 저장하고 있다가.
    /*            현재 값과 다를 경우에만 호출 해야한다.
    */
    std::string is_detected(uint8_t curr)
    {
      std::string ret = _name + " : ";

      if(_type == IOContactType::NC)  // B 접
      {
        if(curr == 0) {  _on = true;     ret += "detected";      }
        else          {  _on = false;    ret += "un_detected";   }
      }
      else if(_type == IOContactType::NO)  // A 접
      {
        if(curr == 0) { _on = false;     ret += "un_detected";   }
        else          { _on = true;      ret += "detected";      }
      }
      else
      {
        if(curr == 0) { _on = false;     ret += "closed";       }
        else          { _on = true;      ret += "opened";       }
      }
      return ret;
    }

    std::string is_detected()
    {
      std::string ret = "I/O " + _name + " : ";

      if(_type == IOContactType::NC)  // B 접
      {
        if(_value == 0) {  _on = true;     ret += "detected";    }
        else            {  _on = false;    ret += "un_detected"; }
      }
      else if(_type == IOContactType::NO)  // A 접
      {
        if(_value == 0) {  _on = false;    ret += "un_detected"; }
        else            {  _on = true;     ret += "detected";    }
      }
      else
      {
        if(_value == 0) {  _on = false;    ret += "closed";      }
        else            {  _on = true;     ret += "opened";      }
      }
      return ret;
    }

    bool is_on() { return _on; }
  };
}