#pragma once

#include <cstdint>
#include <chrono>

namespace frb
{
  /**
  * @brief		  traction, steering을 동시에 사용하는 motor의 
  *             encoder 변화를 추적하기 위한 class
  */
  class DoubleEncoderTracker
  {
  public:
    DoubleEncoderTracker();
    virtual ~DoubleEncoderTracker();

    void    reset();                         // 데이터 초기화         
    double* get_velocity();                  // 현재 속도 반환

    void update_traction(int32_t encoder);   // traction encoder 업데이트
    void update_steering(int32_t encoder);   // steering encoder 업데이트
    
  protected:
    int32_t _prev_encoder[2];     // 이전 encoder 값
    double  _prev_time[2];        // 이전 측정 시간
    double  _velocity[2];         // 현재 속도
  };
}