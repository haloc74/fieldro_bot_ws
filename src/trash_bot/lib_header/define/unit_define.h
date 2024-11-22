#pragma once

#include "helper/enum_template.h"

namespace fieldro_bot
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
  enum class Unit : int32_t
  {
    // Absolute value
    All = 0x00,         // 모든 유닛            Fix
    System,             // main(droid) 시스템   Fix  
    Observer,           // Observer 시스템      Fix

    // Variable value
    Signal,             // wago
    // Loader,          // 로더
    // Gripper,         // 핸들러 포크

    
    // Absolute value
    End,
  };

  /**
  * @brief      enum => string 변환
  * @see        enum_template.h 참조 
  */  
  template<>
  inline std::string to_string<Unit>(Unit value)
  {
    switch(value)
    {
      case Unit::All:      return "All";
      case Unit::System:    return "System";
      case Unit::Observer:  return "Observer";
      case Unit::Signal:    return "Signal";
      // case Unit::Loader:    return "Loader";
      // case Unit::HandlerFork:return "HandlerFork";
      case Unit::End:       return "End";
    }
    return "UnKnown";
  }

  /**
  * @brief      string => enum 변환
  * @note       to_enum<Unit, std::string>(std::string value)
  * @see        enum_template.h 참조 
  */  
  template<>
  inline Unit to_enum<Unit, std::string>(const std::string& str)
  {
    if(str == "All")        return Unit::All;
    if(str == "System")     return Unit::System;
    if(str == "Observer")   return Unit::Observer;
    if(str == "Signal")     return Unit::Signal;
    // if(str == "Loader")     return Unit::Loader;
    // if(str == "HandlerFork")return Unit::HandlerFork;
    if(str == "End")        return Unit::End;
    return Unit::End;
  }

  /**
  * @brief      int => string 변환
  * @note       to_string<Unit, int32_t>(int32_t value)
  * @see        enum_template.h 참조 
  */
  template<>
  inline std::string to_string<Unit, int32_t>(int32_t value)
  {
    return to_string(to_enum<Unit>(value));
  }

  /**
  * @brief      string => int 변환
  * @note       to_int<Unit, std::string>(std::string value)
  * @see        enum_template.h 참조 
  */
  template<>
  inline int32_t to_int<Unit, std::string>(const std::string& str)
  {
    return static_cast<int32_t>(to_enum<Unit>(str));
  }
}