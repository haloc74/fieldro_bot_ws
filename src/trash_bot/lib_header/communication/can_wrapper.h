
#pragma once

#include <string>

namespace frb
{
  enum class CanConnect
  {
    Disconnected = 0,
    connected,
    End,
  };

  class CanWrapper
  {
  public:
    CanWrapper(std::string session_name);
    ~CanWrapper();

  protected:
  


  protected:
    std::string _session_name;
    void load_option(std::string session_name);


  };



}

