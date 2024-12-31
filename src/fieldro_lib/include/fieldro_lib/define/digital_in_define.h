
#pragma once

#include "helper/enum_template.h"

namespace frb
{
  #define IO_MAX_COUNT   128

  enum class DISignal
  {
    NONE = 0,  // 미사용

    DI_00 = 1,   // NO
    DI_01 = 2,   // NO
    DI_02 = 3,   // NO
    DI_03 = 4,   // NO
    DI_04 = 5,   // NO
    DI_05 = 6,   // NO
    DI_06 = 7,   // NO
    DI_07 = 8,   // NO
    DI_08 = 9,   // NO
    DI_09 = 10,  // NO

    LoaderFall   = 11,  // NC, Loader fall limit sensor 감지
    LoaderRaise  = 12,  // NC, Loader raise limit sensor 감지

    Gripper_Min  = 13,  
    Gripper_Max  = 14,  

    DI_15,    
    DI_16,

    COUNT = 16,  // DI_SIGANL 개수
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
      case DISignal::NONE:        return "DI_NONE";
      case DISignal::DI_00:       return "DI_00";
      case DISignal::DI_01:       return "DI_01";
      case DISignal::DI_02:       return "DI_02";
      case DISignal::DI_03:       return "DI_03";
      case DISignal::DI_04:       return "DI_04";
      case DISignal::DI_05:       return "DI_05";
      case DISignal::DI_06:       return "DI_06";
      case DISignal::DI_07:       return "DI_07";
      case DISignal::DI_08:       return "DI_08";
      case DISignal::DI_09:       return "DI_09";
      case DISignal::LoaderFall:  return "DI_LoaderFall";
      case DISignal::LoaderRaise: return "DI_LoaderRaise";
      case DISignal::Gripper_Min: return "DI_Gripper_Min";
      case DISignal::Gripper_Max: return "DI_Gripper_Max";
      case DISignal::DI_15:       return "DI_15";
      case DISignal::DI_16:       return "DI_16";
      default:                    return "UnKnown";
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
    if(str == "DI_NONE")        return DISignal::NONE;
    if(str == "DI_00")          return DISignal::DI_00;
    if(str == "DI_01")          return DISignal::DI_01;
    if(str == "DI_02")          return DISignal::DI_02;
    if(str == "DI_03")          return DISignal::DI_03;
    if(str == "DI_04")          return DISignal::DI_04;
    if(str == "DI_05")          return DISignal::DI_05;
    if(str == "DI_06")          return DISignal::DI_06;
    if(str == "DI_07")          return DISignal::DI_07;
    if(str == "DI_08")          return DISignal::DI_08;
    if(str == "DI_09")          return DISignal::DI_09;
    if(str == "DI_LoaderFall")  return DISignal::LoaderFall;
    if(str == "DI_LoaderRaise") return DISignal::LoaderRaise;
    if(str == "DI_Gripper_Min") return DISignal::Gripper_Min;
    if(str == "DI_Gripper_Max") return DISignal::Gripper_Max;
    if(str == "DI_15")          return DISignal::DI_15;
    if(str == "DI_16")          return DISignal::DI_16;
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