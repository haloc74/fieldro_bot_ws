
#pragma once

//#include "helper/enum_template.h"
#include <fieldro_lib/helper/enum_template.h>

namespace frb
{
  enum class CommandType
  {
    Index = 0x0000,   // 명령 인덱스
    String = 0x0001,  // 명령 문자열
    End,
  };
  
  /**
  * @brief      enum => string 변환
  * @see        enum_template.h 참조      
  */
  template<>
  inline std::string to_string<CommandType>(CommandType value)
  {
    switch(value)
    {
      case CommandType::Index:  return "Index";
      case CommandType::String: return "String";
      case CommandType::End:    return "End";
    }
    return "UnKnown";
  }

  /**
  * @brief      string => enum 변환
  * @see        enum_template.h 참조      
  */
  template<>
  inline CommandType to_enum<CommandType, std::string>(const std::string& str)
  {
    if(str == "Index")  return CommandType::Index;
    if(str == "String") return CommandType::String;
    if(str == "End")    return CommandType::End;

    return CommandType::End;
  }

  /**
  * @brief      int => string 변환
  * @see        enum_template.h 참조      
  */
  template<>
  inline std::string to_string<CommandType, int32_t>(int32_t value)
  {
    return to_string<CommandType>(to_enum<CommandType>(value));
  }

  /**
  * @brief      string => int 변환
  * @see        enum_template.h 참조            
  */
  template<>
  inline int32_t to_int<CommandType, std::string>(const std::string& str)
  {
    return to_int(to_enum<CommandType>(str));
  }
}