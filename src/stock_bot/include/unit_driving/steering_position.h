
#pragma once

#include <stdint.h>

namespace frb
{
  /**
  * @author		Fieldro : haloc@fieldro.tech
  * @date			25-01-01
  * @brief		Steering motor의 위치 제어를 위한 클래스
  * @note			
  * @details	
  * @see			
  */
  class SteeringPosition
  {
  public:
    SteeringPosition()
    {
      _left_limit   = 0;
      _right_limit  = 0;
      _home         = 0;
    }
    SteeringPosition(int32_t left_limit, int32_t right_limit, int32_t home)
    {
      _left_limit   = left_limit;
      _right_limit  = right_limit;
      _home         = home;
    }
    virtual ~SteeringPosition()
    {
    }

    /**
    * @brief      멤버 변수가 모두 설정 되었는지 확인하는 함수
    * @return     bool : 설정되었으면 true, 아니면 false
    * @note       
    */
    bool is_initialized()
    {
      if(_left_limit == 0 && _right_limit == 0 && _home == 0)
      {
        return false;
      }
      return true;
    }

    /**
    * @brief      인자로 주어지는 목적지 좌표가 이동 가능한 범위인지 확인
    * @param[in]  int32_t target_position : 목적지 좌표
    * @return     bool : 이동 가능하면 true, 아니면 false
    * @note       
    */
    bool is_valid_position(int32_t target_position)
    {
      // if(target_position < _left_limit || target_position > _right_limit)    
      // {
      //   return false;
      // }

      if(target_position > _left_limit || target_position < _right_limit)    
      {
        return false;
      }

      return true;
    }

    int32_t _left_limit;        // 좌측 한계 위치
    int32_t _right_limit;       // 우측 한계 위치
    int32_t _home;              // home 위치
  };
}