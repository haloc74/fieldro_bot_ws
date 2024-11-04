
#pragma once

#include <cstdint>
#include <string>

namespace fieldro_bot
{
  enum class DOSignal
  {
    RATCH_UNLOCK_FLAG           = 512,  // Ratch Unlock Flag
    MAGNET_ON_FLAG              = 513,  // Magnet On Flag
    HANDLER_TILT_RUN_FLAG       = 514,  // Handler Tilt Motor On(run) Flag
    HANDLER_TILI_DIRECTION_FLAG = 515,  // Handler Tilt Motor Direction Flag
                                        // On(CW) Off(CCW)
    COUNT                       = 4,    // DO_SIGNAL 개수
    END,
  };
  constexpr uint8_t do_to_int(DOSignal type)
  {
    return static_cast<uint8_t>(type);
  }
  constexpr DOSignal int_to_do(uint8_t signal)
  {
    return static_cast<DOSignal>(signal);
  }

  inline std::string do_to_string(DOSignal signal)
  {
    switch(signal)
    {
      case DOSignal::RATCH_UNLOCK_FLAG:            return "DO_RATCH_UNLOCK_FLAG";
      case DOSignal::MAGNET_ON_FLAG:               return "DO_MAGNET_ON_FLAG";
      case DOSignal::HANDLER_TILT_RUN_FLAG:        return "DO_HANDLER_TILT_RUN_FLAG";
      case DOSignal::HANDLER_TILI_DIRECTION_FLAG:  return "DO_HANDLER_TILI_DIRECTION_FLAG";
      default:                                     return "UNKNOWN_DO";
    }
  }
  inline std::string int_to_do_string(uint8_t signal)
  {
    return do_to_string(int_to_do(signal));
  }

}