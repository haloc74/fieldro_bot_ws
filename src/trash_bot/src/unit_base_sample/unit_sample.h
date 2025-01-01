
#pragma once

#include <fieldro_lib/unit/unit.h>

namespace frb
{
  class UnitSample : public Unit
  {
  public:
    UnitSample(std::string config_file, std::string session);
    virtual ~UnitSample();

  protected:
    virtual void update();                                                  // object main loop
    virtual void load_option(std::string config_file);                      // option load
    virtual void subscribe_unit_action(const fieldro_msgs::UnitControl& msg);  // unit action subscribe
  };
}