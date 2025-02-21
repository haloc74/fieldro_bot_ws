
#pragma once

//#include "helper/enum_template.h"
#include <fieldro_lib/helper/enum_template.h>

namespace frb
{
  //#define IO_MAX_COUNT   128

  enum class DOSignal
  {
    DO_01 = 0,    // 미사용
    DO_02 = 1,    // NC or NO
    DO_03 = 2,    // NC or NO
    DO_CAMERA_RIGHT = 3,    // NC or NO
    DO_05 = 4,    // NC or NO
    DO_06 = 5,    // NC or NO
    DO_07 = 6,    // NC or NO
    DO_08 = 7,    // NC or NO
    DO_09 = 8,    // NC or NO
    DO_BREAK = 9, // NC or NO
    DO_11 = 10,   // NC or NO
    DO_12 = 11,  
    DO_13 = 12,  
    DO_14 = 13,    
    DO_15 = 14,
    DO_16 = 15,
    END,
  };

  /**
  * @brief    enum => string 변환
  * @see      enum_template.h 참조       
  */
  template<>
  inline std::string to_string<DOSignal>(DOSignal value)
  {
    switch(value)
    {
      case DOSignal::DO_01:          return "DO_01";
      case DOSignal::DO_02:          return "DO_02";
      case DOSignal::DO_03:          return "DO_03";
      case DOSignal::DO_CAMERA_RIGHT: return "DO_CAMERA_RIGHT";
      case DOSignal::DO_05:          return "DO_05";
      case DOSignal::DO_06:          return "DO_06";
      case DOSignal::DO_07:          return "DO_07";
      case DOSignal::DO_08:          return "DO_08";
      case DOSignal::DO_09:          return "DO_09";
      case DOSignal::DO_BREAK:       return "DO_BREAK";
      case DOSignal::DO_11:          return "DO_11";
      case DOSignal::DO_12:          return "DO_12";  
      case DOSignal::DO_13:          return "DO_13";
      case DOSignal::DO_14:          return "DO_14";
      case DOSignal::DO_15:          return "DO_15";
      case DOSignal::DO_16:          return "DO_16";
      default:    return "UnKnown";
    }
    return "UnKnown";
  }

  /**
  * @brief      string => enum 변환
  * @note       to_enum<DOSignal, std::string>(std::string value)
  * @see        enum_template.h 참조 
  */
  template<>
  inline DOSignal to_enum<DOSignal, std::string>(const std::string& str)
  {
    if(str == "DO_01")          return DOSignal::DO_01;
    if(str == "DO_02")          return DOSignal::DO_02;
    if(str == "DO_03")          return DOSignal::DO_03;
    if(str == "DO_CAMERA_RIGHT")return DOSignal::DO_CAMERA_RIGHT;
    if(str == "DO_05")          return DOSignal::DO_05;
    if(str == "DO_06")          return DOSignal::DO_06;
    if(str == "DO_07")          return DOSignal::DO_07;
    if(str == "DO_08")          return DOSignal::DO_08;
    if(str == "DO_09")          return DOSignal::DO_09;
    if(str == "DO_BREAK")       return DOSignal::DO_BREAK;
    if(str == "DO_11")          return DOSignal::DO_11;
    if(str == "DO_12")          return DOSignal::DO_12;
    if(str == "DO_13")          return DOSignal::DO_13;
    if(str == "DO_14")          return DOSignal::DO_14;
    if(str == "DO_15")          return DOSignal::DO_15;
    if(str == "DO_16")          return DOSignal::DO_16;
    return DOSignal::END;
  }

  /**
  * @brief      int => string 변환
  * @note       to_string<DOSignal, int32_t>(int32_t value)
  * @see        enum_template.h 참조 
  */
  template<>
  inline std::string to_string<DOSignal, int32_t>(int32_t value)
  {
    return to_string<DOSignal>(to_enum<DOSignal>(value));
  }

  /**
  * @brief      string => int 변환
  * @note       to_int<DOSignal, std::string>(std::string value)
  */
  template<>
  inline int32_t to_int<DOSignal, std::string>(const std::string& str)
  {
    return to_int(to_enum<DOSignal, std::string>(str));
  }
}