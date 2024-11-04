
#pragma once

#include <cstdint>
#include <string>

namespace fieldro_bot
{
  #define IO_MAX_COUNT   128

  enum class DISignal
  {
    NONE = 0,  // 미사용

    RACK_00 = 1,   // NO, bottom slot is num_00
    RACK_01 = 2,   // NO
    RACK_02 = 3,   // NO
    RACK_03 = 4,   // NO
    RACK_04 = 5,   // NO
    RACK_05 = 6,   // NO
    RACK_06 = 7,   // NO
    RACK_07 = 8,   // NO
    RACK_08 = 9,   // NO
    RACK_09 = 10,  // NO

    LoaderFall   = 11,  // NC, Loader fall limit sensor 감지
    LoaderRaise  = 12,  // NC, Loader raise limit sensor 감지

    HANDLER_FORK_MAX_LIMIT = 13,  // NC, Fork Up Limit
    HANDLER_FORK_MIN_LIMIT = 14,  // NC, Fork Down Limit
    HANDLER_LIFT_MAX_LIMIT = 15,  // NC, Lift Up Limit
    HANDLER_LIFT_MIN_LIMIT = 16,  // NC, Lift Down Limit
    MAGNET_UNIT_ORIGIN = 17,  // NC, Magnet Unit Origin(Handler 중앙)
    MAGNET_UNIT_FRONT  = 18,  // NC, Magnet Unit Front(AGV 외측 방향)
    MAGNET_UNIT_REAR   = 19,  // NC, Magnet Unit Rear(AGV 내측 방향)
    AMARTURE_CONTACT_DETECTION = 20,  // NC, Armature Contact Detection
    TRAY_CONTACT_DETECTION     = 21,  // NO, Tray Contact Detection
    HANDLER_TILT_MIN_LIMIT = 22,  // NO, Tilt Down Limit
    HANDLER_TILT_MAX_LIMIT = 23,  // NO, Tilt Up Limit(하역)
    RACK_FORK_BACKWARD_LIMIT = 24,  // NC, Rack Backward Status(AGV 내측 방향)
    RACK_FORK_FORWARD_LIMIT  = 25,  // NC, Rack Forward Status(AGV 외측 방향)
    RATCH_LOCK_FLAG = 26,  // NO, Ratch lock Flag

    COUNT = 26,  // DI_SIGANL 개수
    END,
  };

  constexpr uint8_t di_to_int(DISignal type)
  {
    return static_cast<uint8_t>(type);
  }
  constexpr DISignal int_to_di(uint8_t signal)
  {
    return static_cast<DISignal>(signal);
  }
  
  /**
  * @brief      di signal을 string으로 변환
  * @param[in]  signal Define 된 Signal 변수
  * @return     signal name
  * @note       
  */
  inline std::string di_to_string(DISignal signal)
  {
    switch(signal)
    {
      case DISignal::RACK_00:                     return "DI_RACK_00";
      case DISignal::RACK_01:                     return "DI_RACK_01";
      case DISignal::RACK_02:                     return "DI_RACK_02";
      case DISignal::RACK_03:                     return "DI_RACK_03";
      case DISignal::RACK_04:                     return "DI_RACK_04";
      case DISignal::RACK_05:                     return "DI_RACK_05";
      case DISignal::RACK_06:                     return "DI_RACK_06";
      case DISignal::RACK_07:                     return "DI_RACK_07";
      case DISignal::RACK_08:                     return "DI_RACK_08";
      case DISignal::RACK_09:                     return "DI_RACK_09";
      case DISignal::LoaderFall:                  return "DI_LoaderFall";
      case DISignal::LoaderRaise:                 return "DI_LoaderRaise";
      case DISignal::HANDLER_FORK_MAX_LIMIT:      return "DI_HANDLER_FORK_MAX_LIMIT";
      case DISignal::HANDLER_FORK_MIN_LIMIT:      return "DI_HANDLER_FORK_MIN_LIMIT";
      case DISignal::HANDLER_LIFT_MAX_LIMIT:      return "DI_HANDLER_LIFT_MAX_LIMIT";
      case DISignal::HANDLER_LIFT_MIN_LIMIT:      return "DI_HANDLER_LIFT_MIN_LIMIT";
      case DISignal::MAGNET_UNIT_ORIGIN:          return "DI_MAGNET_UNIT_ORIGIN";
      case DISignal::MAGNET_UNIT_FRONT:           return "DI_MAGNET_UNIT_FRONT";
      case DISignal::MAGNET_UNIT_REAR:            return "DI_MAGNET_UNIT_REAR";
      case DISignal::AMARTURE_CONTACT_DETECTION:  return "DI_AMARTURE_CONTACT_DETECTION";
      case DISignal::TRAY_CONTACT_DETECTION:      return "DI_TRAY_CONTACT_DETECTION";
      case DISignal::HANDLER_TILT_MIN_LIMIT:      return "DI_HANDLER_TILT_MIN_LIMIT";
      case DISignal::HANDLER_TILT_MAX_LIMIT:      return "DI_HANDLER_TILT_MAX_LIMIT";
      case DISignal::RACK_FORK_BACKWARD_LIMIT:    return "DI_RACK_FORK_BACKWARD_LIMIT";
      case DISignal::RACK_FORK_FORWARD_LIMIT:     return "DI_RACK_FORK_FORWARD_LIMIT";
      case DISignal::RATCH_LOCK_FLAG:             return "DI_RATCH_LOCK_FLAG";
      default:                                    return "UNKNOWN_DI_NUM";
    }
  }
  inline std::string int_to_di_string(uint8_t signal)
  {
    return di_to_string(int_to_di(signal));
  }

}