#pragma once

#include "helper/enum_template.h"

namespace fieldro_bot
{
  enum class UnitState : int32_t
  {
    Created = 0x00, // 생성됨
    Active,         // 활성화 (초기화 중)
    Idle,           // 대기 중
    Busy,           // 동작 중
    Error,          // 에러
    End,
  };

  template<>
  inline std::string to_string<UnitState>(UnitState value)
  {
    switch(value)
    {
      case UnitState::Created:  return "Created";
      case UnitState::Active:   return "Active";
      case UnitState::Idle:     return "Idle";
      case UnitState::Busy:     return "Busy";
      case UnitState::Error:    return "Error";
      case UnitState::End:      return "End";
    }
    return "UnKnown";
  }
}    