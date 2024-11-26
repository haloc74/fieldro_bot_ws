
#pragma once

#include "helper/enum_template.h"

namespace fieldro_bot
{
  enum class CommStatus
  {
    None,           // 없음
    Connect,        // 접속
    Disconnect,     // 연결 끊김
    Reconnect,      // 재접속 시도
    Error,          // 에러 (완전 끊김, 복구 불가)
    END,
  };

  /**
  * @brief      enum => string 변환
  * @see        enum_template.h 참조
  */
  template<>
  inline std::string to_string<CommStatus>(CommStatus value)
  {
    switch(value)
    {
      case CommStatus::None:        return "None";
      case CommStatus::Connect:     return "Connect";
      case CommStatus::Disconnect:  return "Disconnect";
      case CommStatus::Reconnect:   return "Reconnect";
      case CommStatus::Error:       return "Error";
    }
    return "UnKnown";
  }

  /**
  * @brief      string => enum 변환
  * @note       enum_template.h 참조
  */
  template<>
  inline CommStatus to_enum<CommStatus, std::string>(const std::string& str)
  {
    if(str == "None")         return CommStatus::None;
    if(str == "Connect")      return CommStatus::Connect;
    if(str == "Disconnect")   return CommStatus::Disconnect;
    if(str == "Reconnect")    return CommStatus::Reconnect;
    if(str == "Error")        return CommStatus::Error;

    return CommStatus::END;
  }

  /**
  * @brief      int => string 변환
  * @see        enum_template.h 참조
  */
  template<>
  inline std::string to_string<CommStatus, int32_t>(int32_t value)
  {
    return to_string<CommStatus>(to_enum<CommStatus>(value));
  }

  /**
  * @brief     string => int 변환
  * @see       enum_template.h 참조
  */
  template<>
  inline int32_t to_int<CommStatus, std::string>(const std::string& str)
  {
    return to_int(to_enum<CommStatus>(str));
  }

}