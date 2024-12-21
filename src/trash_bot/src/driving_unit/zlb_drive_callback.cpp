
// #include "zlb_drive.h"

// namespace frb
// {
//   int32_t ZlbDrive::traction_callback(int32_t address, int32_t value, MODBUS_FUNC_CODE function)
//   {
//     std::lock_guard<std::mutex> lock(_callback_lock);
//     if(_modbus->set_slave_id(TRACTION) == 0)
//     {
//       uint16_t  dest_buffer[2];
//       uint16_t* dest = dest_buffer;
//       int32_t  read_bit;
//       switch(function)
//       {
//         case MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER:
//           _modbus->write_data_rtu(address, value);
//           return 0;

//         case MODBUS_FUNC_CODE::READ_HOLDING_REGISTERS:
//           read_bit = _modbus->read_data_rtu(address, value, dest);

//           if (address == ServoFD1X5::POSITION_FEEDBACK_REGISTER)
//           {
//             return registers_to_position(dest);
//           }
//           else if (address == ServoFD1X5::VELOCITY_FEEDBACK_REGISTER)
//           {
//             return registers_to_rpm(dest);
//           }
//           return 0;

//         case MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS:
//           if(address == ServoFD1X5::POSITION_COMMAND_REGISTER)
//           {
//             dest = position_to_registers(value);
//             _modbus->write_datas_rtu(address, 2, dest);
//           }

//           else if(address == ServoFD1X5::POSITION_SPEED_COMMAND_REGISTER)
//           {
//             dest = rpm_to_registers(value);
//             _modbus->write_datas_rtu(address, 2, dest);
//           }

//           else if(address == ServoFD1X5::VELOCITY_COMMAND_REGISTER)
//           {
//             dest = rpm_to_registers(value);
//             _modbus->write_datas_rtu(address, 2, dest);
//           }
//           return 0;
        
//         default:
//           return 0;
//       } 
//     }
//   }

//   int32_t ZlbDrive::steer_callback(int32_t address, int32_t value, MODBUS_FUNC_CODE function)
//   {
//     std::lock_guard<std::mutex> lock(_callback_lock);
//     if(_modbus->set_slave_id(STEER) == 0)
//     {
//       uint16_t  dest_buffer[2];
//       uint16_t* dest = dest_buffer;
//       int32_t   read_bit;
//       switch(function)
//       {
//         case MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER:
//           _modbus->write_data_rtu(address, value);
//           return 0;

//         case MODBUS_FUNC_CODE::READ_HOLDING_REGISTERS:
//           read_bit = _modbus->read_data_rtu(address, value, dest);

//           if (address == ServoFD1X5::POSITION_FEEDBACK_REGISTER)
//           {
//             return registers_to_position(dest);
//           }
//           else if (address == ServoFD1X5::VELOCITY_FEEDBACK_REGISTER)
//           {
//             return registers_to_rpm(dest);
//           }
//           return 0;

//         case MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS:
//           if(address == ServoFD1X5::POSITION_COMMAND_REGISTER)
//           {
//             dest = position_to_registers(value);
//             _modbus->write_datas_rtu(address, 2, dest);
//           }

//           else if(address == ServoFD1X5::POSITION_SPEED_COMMAND_REGISTER)
//           {
//             dest = rpm_to_registers(value);
//             _modbus->write_datas_rtu(address, 2, dest);
//           }

//           else if(address == ServoFD1X5::VELOCITY_COMMAND_REGISTER)
//           {
//             dest = rpm_to_registers(value);
//             _modbus->write_datas_rtu(address, 2, dest);
//           }
//           return 0;
        
//         default:
//           return 0;
//       } 
//     }
//   }  
// }