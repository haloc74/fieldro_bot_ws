#pragma once

//#include "helper/enum_template.h"
#include <fieldro_lib/helper/enum_template.h>

namespace frb
{
  /**
  * @author		  Fieldro : haloc@fieldro.tech
  * @date			  24-11-21
  * @brief		  Robot을 구성하는 Unit의 종류
  * @attention	None, Syste, Observer 3종류는 절대로 바뀌면 안됨
  *             삭제도, 순서변경도 하면 안됨 !!!!!!!!
  * @details	
  * @see			
  */
  enum class UnitName : int32_t
  {
    // Absolute
    All = 0x00,       // 모든 유닛            Fix
    System,           // main(droid) 시스템   Fix  
    Observer,         // Observer 시스템      Fix

    // Variable
    Signal,           // wago
    Lift,           // lift
    Driving,          // 주행

    End,
  };

  /**
  * @brief      enum => string 변환
  * @see        enum_template.h 참조 
  */  
  template<>
  inline std::string to_string<UnitName>(UnitName value)
  {
    switch(value)
    {
      case UnitName::All:      return "All";
      case UnitName::System:    return "System";
      case UnitName::Observer:  return "Observer";
      case UnitName::Signal:    return "Signal";
      case UnitName::Lift:    return "Lift";
      case UnitName::Driving:   return "Driving";
      // case UnitName::HandlerFork:return "HandlerFork";
      case UnitName::End:       return "End";
    }
    return "UnKnown";
  }

  /**
  * @brief      string => enum 변환
  * @note       to_enum<UnitName, std::string>(std::string value)
  * @see        enum_template.h 참조 
  */  
  template<>
  inline UnitName to_enum<UnitName, std::string>(const std::string& str)
  {
    if(str == "All")        return UnitName::All;
    if(str == "System")     return UnitName::System;
    if(str == "Observer")   return UnitName::Observer;

    if(str == "Signal")     return UnitName::Signal;
    if(str == "Lift")     return UnitName::Lift;
    if(str == "Driving")    return UnitName::Driving;
    
    if(str == "End")        return UnitName::End;

    return UnitName::End;
  }

  /**
  * @brief      int => string 변환
  * @note       to_string<UnitName, int32_t>(int32_t value)
  * @see        enum_template.h 참조 
  */
  template<>
  inline std::string to_string<UnitName, int32_t>(int32_t value)
  {
    return to_string(to_enum<UnitName>(value));
  }

  /**
  * @brief      string => int 변환
  * @note       to_int<UnitName, std::string>(std::string value)
  * @see        enum_template.h 참조 
  */
  template<>
  inline int32_t to_int<UnitName, std::string>(const std::string& str)
  {
    return static_cast<int32_t>(to_enum<UnitName>(str));
  }
}