
#pragma once

#include <fieldro_lib/helper/helper.h>
#include "unit_define.h"

namespace frb
{
  // 분해된 command list를 해석하여 unit, action, parameter를 추출
  std::tuple<int32_t, int32_t, int32_t, std::string> interpret_command(std::vector<std::string> command_list);  

}