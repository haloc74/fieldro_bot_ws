
#pragma once

#include <cstdint>
#include <chrono>

namespace frb
{
  class DoubleEncoderTracker
  {
  public:
    DoubleEncoderTracker();
    virtual ~DoubleEncoderTracker();

    void update_traction(int32_t encoder);
    void update_steering(int32_t encoder);

    double get_traction_velocity();
    double get_steering_velocity();

  protected:
    int32_t _prev_encoder[2];
    double  _prev_time[2];
    double  _velocity[2];
  };
}