
#pragma once

#include <fieldro_lib/helper/enum_template.h>


namespace frb
{
  //enum class SlaveId
  enum class SlaveId
  {
    None   = 0,
    Thrust = 1,
    Steer  = 2,
    End    = 3,
  };

  /**
  * @brief      enum => string 변환
  * @see        enum_template.h 참조 
  */
  template<>
  inline std::string to_string<SlaveId>(SlaveId value)
  {
    switch(value)
    {
      case SlaveId::None:     return "None";
      case SlaveId::Thrust: return "Thrust";
      case SlaveId::Steer: return "Steer";
      case SlaveId::End:      return "End";
    }
    return "UnKnown";
  }

  /**
   * @brief      string => enum 변환
   * @note       to_enum<SlaveId, std::string>(std::string value)
   * @see        enum_template.h 참조 
   */
  template<>
  inline SlaveId to_enum<SlaveId, std::string>(const std::string& str)
  {
    if(str == "None")     return SlaveId::None;
    if(str == "Thrust") return SlaveId::Thrust;
    if(str == "Steer") return SlaveId::Steer;
    if(str == "End")      return SlaveId::End;

    return SlaveId::End;
  }

  /**
   * @brief      int => string 변환
   * @note       to_string<SlaveId, int32_t>(int32_t value)
   * @see        enum_template.h 참조 
   */
  template<>
  inline std::string to_string<SlaveId, int32_t>(int32_t value)
  {
    return to_string<SlaveId>(to_enum<SlaveId>(value));
  }

  /**
   * @brief      string => int 변환
   * @note       to_enum<SlaveId, std::string>(std::string value)
   * @see        enum_template.h 참조 
  */
  template<>
  inline int32_t to_int<SlaveId, std::string>(const std::string& str)
  {
    return to_int(to_enum<SlaveId>(str));
  }
}