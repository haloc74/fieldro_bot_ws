
#include "double_encoder_tracker.h"
#include <float.h>

namespace frb
{
  DoubleEncoderTracker::DoubleEncoderTracker()
  {
    reset();
  }

  DoubleEncoderTracker::~DoubleEncoderTracker()
  {
  }

  double* DoubleEncoderTracker::get_velocity()
  {
    return _velocity;
  }

  /**
  * @brief      data reset
  * @attention  _prev_time[0] == DBL_MAX
  */
  void DoubleEncoderTracker::reset()
  {
    _prev_time[0] = DBL_MAX;
    _prev_time[1] = DBL_MAX;

    _prev_encoder[0] = 0;
    _prev_encoder[1] = 0;

    _velocity[0] = 0;
    _velocity[1] = 0;    
  }

  /**
  * @brief      update traction velocity
  * @param[in]  int32_t encoder : 현재 traction encoder 값
  * @return     void
  * @note       _prev_time[0] == DBL_MAX 판정으로 최초 데이터인지 확인
  */
  void DoubleEncoderTracker::update_traction(int32_t encoder)
  {
    auto current_time = std::chrono::steady_clock::now();
    double current_time_ms = std::chrono::duration<double, std::milli>(current_time.time_since_epoch()).count();
 
    if(_prev_time[0] == DBL_MAX)
    {
      _velocity[0] = 0.0;
    }
    else
    {
      double delta_time = current_time_ms - _prev_time[0];
      _velocity[0] = static_cast<double>(encoder - _prev_encoder[0]) / delta_time;
    }

    // 최신 데이터로 update
    _prev_time[0]     = current_time_ms;
    _prev_encoder[0]  = encoder;

    return;
  }

  /**
  * @brief      update steering velocity
  * @param[in]  int32_t encoder : 현재 steering encoder 값
  * @return     void
  * @note       _prev_time[1] == DBL_MAX 판정으로 최초 데이터인지 확인
  */
  void DoubleEncoderTracker::update_steering(int32_t encoder)
  {
    auto current_time = std::chrono::steady_clock::now();
    double current_time_ms = std::chrono::duration<double, std::milli>(current_time.time_since_epoch()).count();
 
    if(_prev_time[1] == DBL_MAX)
    {
      _velocity[1] = 0.0;
    }
    else
    {
      double delta_time = current_time_ms - _prev_time[1];
      _velocity[1] = static_cast<double>(encoder - _prev_encoder[1]) / delta_time;
    }

    // 최신 데이터로 update
    _prev_time[1]     = current_time_ms;
    _prev_encoder[1]  = encoder;

    return;
  }
}