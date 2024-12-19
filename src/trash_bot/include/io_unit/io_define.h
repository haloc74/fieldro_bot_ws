
#pragma once

#include <cstdint>
#include <string>

namespace frb
{
  enum class IOContactType
  {
    NC,         // A 접점
    NO,         // B 접점
    COM,        // COM
    OUT,        // 출력
  };
  constexpr uint8_t io_contact_type_to_int(IOContactType type)
  {
    return static_cast<uint8_t>(type);
  }

  enum class SignalValue
  {
    Off = 0,    // 신호 off
    On,         // 신호 on
    End,
  };
  constexpr uint8_t signal_value_to_int(SignalValue value)
  {
    return static_cast<uint8_t>(value);
  }
  constexpr SignalValue int_to_signal_value(uint8_t value)
  {
    return static_cast<SignalValue>(value);
  }
  inline std::string signal_value_to_string(SignalValue value)
  {
    switch(value)
    {
      case SignalValue::Off:  return "Off";
      case SignalValue::On:   return "On";
      default:                return "Unknown";
    }
  }

}