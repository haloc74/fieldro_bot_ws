#pragma once

//#include "helper/enum_template.h"
#include <fieldro_lib/helper/enum_template.h>

namespace frb
{
  // Active, Idle, Busy 삭제
  // Normal 추가 
  enum class UnitState : int32_t
  {
    Created = 0x00, // 생성됨
    Active,         // 활성화 (초기화 중)
    Ready,          // 동작 대기
    Busy,           // 동작 중
    Normal,         // 정상
    Error,          // 에러
    End,
  };

  /**
  * @brief      enum => string 변환
  * @see        enum_template.h 참조 
  */  
  template<>
  inline std::string to_string<UnitState>(UnitState value)
  {
    switch(value)
    {
      case UnitState::Created:  return "Created";
      case UnitState::Active:   return "Active";
      case UnitState::Ready:    return "Ready";
      case UnitState::Busy:     return "Busy";
      case UnitState::Normal:   return "Normal";
      case UnitState::Error:    return "Error";
      case UnitState::End:      return "End";
    }
    return "UnKnown";
  }

  /**
  * @brief      string => enum 변환
  * @note       to_enum<UnitState, std::string>(std::string value)
  * @see        enum_template.h 참조 
  */  
  template<>
  inline UnitState to_enum<UnitState, std::string>(const std::string& str)
  {
    if(str == "Created")  return UnitState::Created;
    if(str == "Active")   return UnitState::Active;
    if(str == "Ready")    return UnitState::Ready;
    if(str == "Busy")     return UnitState::Busy;
    if(str == "Normal")   return UnitState::Normal;
    if(str == "Error")    return UnitState::Error;
    if(str == "End")      return UnitState::End;

    return UnitState::End;
  }

  /**
  * @brief      int => string 변환
  * @note       to_string<UnitState, int32_t>(int32_t value)
  * @see        enum_template.h 참조 
  */
  template<>
  inline std::string to_string<UnitState, int32_t>(int32_t value)
  {
    return to_string<UnitState>(to_enum<UnitState>(value));
  }

  /**
  * @brief      string => int 변환
  * @note       to_int<UnitState, std::string>(std::string value)
  * @see        enum_template.h 참조 
  */
  template<>
  inline int32_t to_int<UnitState, std::string>(const std::string& str)
  {
    return to_int(to_enum<UnitState>(str));
  }
}    