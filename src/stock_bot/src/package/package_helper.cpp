
#include "package/package_helper.h"

namespace frb
{
  std::tuple<int32_t, int32_t, int32_t, std::string> interpret_command(std::vector<std::string> command_list)
  {
    int32_t     size    = command_list.size();
    int32_t     unit    = frb::to_int(frb::Error::ParseFail);
    int32_t     action  = frb::to_int(frb::Error::ParseFail);
    std::string cmd     = "";

    for(int i = 0; i < command_list.size(); i++)
    {
      if     (i == 0)   unit  = to_int<UnitName, std::string>(command_list[i]);
      else if(i == 1)   action= to_int<UnitAction, std::string>(command_list[i]);
      else              cmd   = command_list[i];
    }
    return std::make_tuple(size, unit, action, cmd);    
  }  
}