#pragma once

#include <cstdint>
#include <string>

namespace fieldro_bot
{
  enum class UnitState
  {
    BeforeConnect = 0x00,
    UnConnect,           // 연결 안됨
    InitReady,          // 초기화 준비
    Init,               // 초기화 중
    Ready,
    Busy,
    Error,
    End,
  };

  /**
  * @author		  Fieldro : haloc@fieldro.tech
  * @date			  24-11-21
  * @brief		  Robot을 구성하는 Unit의 종류
  * @attention	None, Syste, Observer 3종류는 절대로 바뀌면 안됨
  *             삭제도, 순서변경도 하면 안됨 !!!!!!!!
  * @details	
  * @see			
  */
  enum class Unit
  {
    // Absolute value
    None = 0x00,        // 없음                 Fix
    System,             // main(droid) 시스템   Fix  
    Observer,           // Observer 시스템      Fix

    // Variable value
    Signal,             // wago
    // Loader,          // 로더
    // Gripper,         // 핸들러 포크

    
    // Absolute value
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
      case Unit::Observer:        return "Observer";
      case Unit::Signal:          return "Signal";
      // case Unit::Loader:          return "Loader";
      // case Unit::HandlerFork:     return "HandlerFork";
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

    for(int i=0; i<unit_to_int(Unit::End)+1; i++)
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