
#pragma once

//#include "helper/enum_template.h"
#include <fieldro_lib/helper/enum_template.h>

namespace frb
{
  #define IO_MAX_COUNT   128

  enum class DISignal
  {
    NONE = 0,  // 미사용

    FrontEMS      = 1,    // NC
    LiftTopSafe   = 2,    // NC
    LiftBottomSafe= 3,    // NC
    RearEMS       = 4,    // NC
    ManualControl = 5,    // NC

    //DI_04 = 5,   // NC or NO


    DI_05 = 6,   // NC or NO
    DI_06 = 7,   // NC or NO
    DI_07 = 8,   // NC or NO
    DI_08 = 9,   // NC or NO
    DI_09 = 10,  // NC or NO
    DI_10 = 11,  // NC or NO
    DI_11 = 12,  // NC or NO
    DI_12 = 13,  
    DI_13 = 14,  
    DI_14 = 15,    
    DI_15 = 16,
    //ManualControl  = 16,  // 수동 조작 플래그

    COUNT = 16,           // DI_SIGANL 개수
    END,
  };

  /**
  * @brief    enum => string 변환
  * @see      enum_template.h 참조       
  */
  template<>
  inline std::string to_string<DISignal>(DISignal value)
  {
    switch(value)
    {
      case DISignal::NONE:          return "DI_NONE";
      case DISignal::FrontEMS:      return "FrontEMS";
      case DISignal::LiftTopSafe:   return "LiftTopSafe";
      case DISignal::LiftBottomSafe:return "LiftBottomSafe";
      case DISignal::RearEMS:       return "RearEMS";
      //case DISignal::DI_04:         return "DI_04";
      case DISignal::DI_05:         return "DI_05";
      case DISignal::DI_06:         return "DI_06";
      case DISignal::DI_07:         return "DI_07";
      case DISignal::DI_08:         return "DI_08";
      case DISignal::DI_09:         return "DI_09";
      case DISignal::DI_10:         return "DI_10";
      case DISignal::DI_11:         return "DI_11";
      case DISignal::DI_12:         return "DI_12";
      case DISignal::DI_13:         return "DI_13";
      case DISignal::DI_14:         return "DI_14";
      case DISignal::DI_15:         return "DI_15";
      case DISignal::ManualControl:         return "ManualControl";
      default:                      return "UnKnown";
    }
    return "UnKnown";
  }

  /**
  * @brief      string => enum 변환
  * @note       to_enum<DISignal, std::string>(std::string value)
  * @see        enum_template.h 참조 
  */
  template<>
  inline DISignal to_enum<DISignal, std::string>(const std::string& str)
  {
    if(str == "DI_NONE")          return DISignal::NONE;
    if(str == "FrontEMS")         return DISignal::FrontEMS;
    if(str == "LiftTopSafe")      return DISignal::LiftTopSafe;
    if(str == "LiftBottomSafe")   return DISignal::LiftBottomSafe;
    if(str == "RearEMS")          return DISignal::RearEMS;
    //if(str == "DI_04")            return DISignal::DI_04;
    if(str == "DI_05")            return DISignal::DI_05;
    if(str == "DI_06")            return DISignal::DI_06;
    if(str == "DI_07")            return DISignal::DI_07;
    if(str == "DI_08")            return DISignal::DI_08;
    if(str == "DI_09")            return DISignal::DI_09;
    if(str == "DI_10")            return DISignal::DI_10;
    if(str == "DI_11")            return DISignal::DI_11;
    if(str == "DI_12")            return DISignal::DI_12;
    if(str == "DI_13")            return DISignal::DI_13;
    if(str == "DI_14")            return DISignal::DI_14;
    if(str == "DI_15")            return DISignal::DI_15;
    if(str == "ManualControl")    return DISignal::ManualControl;
    return DISignal::END;
  }

  /**
  * @brief      int => string 변환
  * @note       to_string<DISignal, int32_t>(int32_t value)
  * @see        enum_template.h 참조 
  */
  template<>
  inline std::string to_string<DISignal, int32_t>(int32_t value)
  {
    return to_string<DISignal>(to_enum<DISignal>(value));
  }

  /**
  * @brief      string => int 변환
  * @note       to_int<DISignal, std::string>(std::string value)
  */
  template<>
  inline int32_t to_int<DISignal, std::string>(const std::string& str)
  {
    return to_int(to_enum<DISignal, std::string>(str));
  }
}