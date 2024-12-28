
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

  enum class SlaveId
  {
    Traction = 1,
    Steer,
    End,
  };
}