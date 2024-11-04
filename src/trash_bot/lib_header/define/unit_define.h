#pragma once

#include <cstdint>
#include <string>

namespace fieldro_bot
{
  enum class UnitState
  {
    Init = 0x00,
    Ready,
    Busy,
    Error,
    End,
  };

  enum class Unit
  {
    None = 0x00,        // 없음 
    System,             // main 시스템  
    Signal,             // wago
    Loader,             // 로더
    HandlerFork,        // 핸들러 포크

    All,                // 모든 unit          
    End = All,
  };

  constexpr int32_t unit_to_int(Unit unit)
  {
    return static_cast<int32_t>(unit);
  }
  constexpr Unit int_to_unit(int32_t unit)
  {
    return static_cast<Unit>(unit);
  }

  inline std::string unit_to_string(Unit unit)
  {
    switch(unit)
    {
      case Unit::None:            return "None";
      case Unit::System:          return "System";
      case Unit::Signal:          return "Signal";
      case Unit::Loader:          return "Loader";
      case Unit::HandlerFork:     return "HandlerFork";
      case Unit::All:             return "All";
      default:                    return "None";
    }
    return "None";
  }

  /**
  * @brief      string을 unit name 비교하여 unit index 값 반환
  * @param[in]  unit : unit name
  * @return     unit index
  * @note       
  */
  inline int32_t string_to_unit(std::string unit)
  {
    int unit_index = unit_to_int(Unit::None);

    for(int i=0; i<unit_to_int(Unit::End); i++)
    {
      if(unit == unit_to_string(int_to_unit(i)))
      {
        unit_index = i;
        break;
      }
    }
    return unit_index;
  }

}