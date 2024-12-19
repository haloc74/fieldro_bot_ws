
#pragma once

#include "unit/unit.h"

namespace frb
{
  class Driving : public Unit
  {
  public:
    Driving(std::string config_file, std::string session);
    virtual ~Driving();

  protected:
    virtual void update();                                                  // object main loop
    virtual void load_option(std::string config_file);                      // option load
    virtual void subscribe_unit_action(const trash_bot::UnitControl& msg);  // unit action subscribe
  };
}