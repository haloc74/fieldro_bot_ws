
#pragma once

#include <functional>
#include <cstdint>
#include "zlb_resisters.h"

namespace frb
{
  class ZlbSteer
  {
  public:
    ZlbSteer(std::function<int32_t(int32_t, int32_t, MODBUS_FUNC_CODE)> steer_callback, std::string config_file);
    virtual ~ZlbSteer();

    void    quick_stop();
    void    stop();
    void    reset();
    void    homing();
    void    move_to_origin();
    void    set_position_mode();
    void    set_position(int32_t position);
    void    set_degree(double degree);
    void    set_radian(double radian);
    void    set_position_speed(int32_t rpm);
    void    run_incremental_position();
    void    run_absolute_position();
    void    set_velocity_mode(const std::string& direction = "forward");
    void    set_velocity(int32_t rpm);
    void    run_velocity();
    int32_t get_velocity();
    int32_t get_position();
    double  get_radian();
    double  get_degree();

  protected:
    void        set_din();
    void        load_option(std::string file_name);
    void        steer_init();

    int32_t     _current_position;
    int32_t     _set_position;
    int32_t     _current_rpm;
    int32_t     _origin_position;
    int32_t     _positive_limit;
    int32_t     _negative_limit;
    std::string _opmode;

    std::function<int32_t(int32_t, int32_t, MODBUS_FUNC_CODE)> steer_notify;
    int32_t steer_function(int32_t value1, int32_t value2, MODBUS_FUNC_CODE code);
  };
}