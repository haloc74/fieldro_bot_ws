
#pragma once

#include <functional>
#include <cstdint>
#include "zlb_resisters.h"

namespace frb
{
  // class ZlbTraction
  // {
  // public:
  //   ZlbTraction(std::function<int32_t(int32_t, int32_t, MODBUS_FUNC_CODE)> traction_callback);
  //   virtual ~ZlbTraction();

  //   void quick_stop();
  //   void stop();
  //   void reset();
  //   void set_velocity_mode(const std::string& direction = "forward");
  //   void set_velocity(int32_t rpm);
  //   void run_velocity();

  //   int32_t get_velocity();
  //   int32_t get_position();

  // protected:
  //   void        traction_init();

  //   int32_t     _current_rpm;
  //   int32_t     _current_position;
  //   std::string _opmode;

  //   std::function<int32_t(int32_t, int32_t, MODBUS_FUNC_CODE)> traction_notify;
  //   int32_t notify_function(int32_t value1, int32_t value2, MODBUS_FUNC_CODE code);
  // };  
}