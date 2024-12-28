
#pragma once

namespace frb
{
  enum class ModbusType
  {
    RS232,
    RS485,
    TCP,
    END,
  };

  //enum class SlaveId
  enum SlaveId
  {
    None    = 0,
    Traction,
    Steer,
    End,
  };
}