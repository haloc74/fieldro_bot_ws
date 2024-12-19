
#pragma once
#include <cstdint>

namespace frb
{
  class MotionInfo
  {
  public:
    int32_t _mode;

    int32_t _fall_pos;
    int32_t _raise_pos;
    int32_t _middle_pos;
    int32_t _limit_gap;
    int16_t _rpm;
    int32_t _timeout;
    int32_t _init_timeout;

    MotionInfo()
    {
      _mode         = 0;
      
      _fall_pos     = INT32_MAX;
      _raise_pos    = INT32_MAX;
      _middle_pos   = INT32_MAX;

      _limit_gap    = 0;
      _rpm          = 0;
      _timeout      = 0;
      _init_timeout = 0;
    }

    bool is_valid()
    {
      if(_fall_pos == INT32_MAX ||
         _raise_pos == INT32_MAX ||
         _middle_pos == INT32_MAX)
        return false;

      return true;
    }
  };    
}