
#pragma once

#include <cstdint>

namespace frb
{
  class MotorRuntimeState
  {
  public:
    MotorRuntimeState()
    {
      _state        = 0;
      _position     = 0;
      _destionation = 0;
    }

    virtual ~MotorRuntimeState()
    {

    }

    int16_t _state;         // 상태
    int32_t _position;      // 현재 위치
    int32_t _destionation;  // 목표 위치
  };
}