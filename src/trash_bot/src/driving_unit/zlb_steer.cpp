
#include "zlb_steer.h"
#include <unistd.h>

namespace frb
{
  // ZlbSteer::ZlbSteer(std::function<int32_t(int32_t, int32_t, MODBUS_FUNC_CODE)> steer_callback, std::string file_name)
  // {
  //   steer_notify = std::move(steer_callback);
  //   load_option(file_name);
  //   steer_init();
  // }

  // ZlbSteer::~ZlbSteer()
  // {
  //   stop();
  // }

  // void ZlbSteer::steer_init()
  // {
  //   stop();
  //   _current_position = 0;
  //   _current_rpm      = 0;
  //   set_din();
  //   set_position_mode();
  // }

  // void ZlbSteer::quick_stop()
  // {
  //   steer_function(ServoFD1X5::CONTROL_REGISTER, 
  //                   ServoFD1X5::CONTROL_VALUES::QUICK_STOP, 
  //                   MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //   _opmode.clear();
  //   usleep(10000);
  // }

  // void ZlbSteer::stop()
  // {
  //   steer_function(ServoFD1X5::CONTROL_REGISTER, 
  //                         ServoFD1X5::CONTROL_VALUES::STOP, 
  //                         MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //   usleep(10000);
  // }

  // void ZlbSteer::reset()
  // {
  //   steer_function(ServoFD1X5::CONTROL_REGISTER, 
  //                           ServoFD1X5::CONTROL_VALUES::RESET, 
  //                           MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);

  //   _opmode.clear();
  //   usleep(10000);
  // }

  // void ZlbSteer::set_velocity_mode(const std::string& direction)
  // {    
  //   stop();

  //   steer_function(ServoFD1X5::OPMODE_REGISTER, 
  //                           ServoFD1X5::OPMODE_VALUES::VELOCITY, 
  //                           MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //   steer_function(ServoFD1X5::VELOCITY_DIRECTION_REGISTER, 
  //                           ServoFD1X5::VELOCITY_DIRECTION_VALUES.at(direction), 
  //                           MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //   _opmode = "velocity";
  //   usleep(10000);
  // }

  // void ZlbSteer::set_velocity(int32_t rpm) 
  // {
  //   steer_function(ServoFD1X5::VELOCITY_COMMAND_REGISTER, rpm, 
  //                           MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);
  //   usleep(10000);
  // }

  // void ZlbSteer::run_velocity()
  // {
  //   steer_function(ServoFD1X5::CONTROL_REGISTER, 
  //                           ServoFD1X5::CONTROL_VALUES::START, 
  //                           MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //   usleep(10000);
  // }

  // void ZlbSteer::homing()
  // {
  //   steer_function(ServoFD1X5::OPMODE_REGISTER, 
  //                           ServoFD1X5::OPMODE_VALUES::HOME, 
  //                           MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //   _opmode = "home";
  //   steer_function(ServoFD1X5::HOMING_METHOD_REGISTER, 
  //                           ServoFD1X5::HOMING_VALUES::POSITIVE, 
  //                           MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //   steer_function(ServoFD1X5::CONTROL_REGISTER, 
  //                           ServoFD1X5::CONTROL_VALUES::HOMING::SET1, 
  //                           MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //   steer_function(ServoFD1X5::CONTROL_REGISTER, 
  //                           ServoFD1X5::CONTROL_VALUES::HOMING::SET2, 
  //                           MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);

  //   usleep(10000);
  // }

  // void ZlbSteer::move_to_origin()
  // {
  //   set_position(_origin_position);
  //   run_absolute_position();
  // }

  // void ZlbSteer::set_position_mode()
  // {
  //   stop();
  //   steer_function(ServoFD1X5::OPMODE_REGISTER, 
  //                           ServoFD1X5::OPMODE_VALUES::POSITION, 
  //                           MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //   _opmode = "position";
  //   usleep(10000);
  // }

  // void ZlbSteer::set_position(int32_t position)
  // {
  //   _set_position = position;
  //   steer_function(ServoFD1X5::POSITION_COMMAND_REGISTER, position, 
  //                           MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);
  //   usleep(10000);
  // }

  // void ZlbSteer::set_position_speed(int32_t rpm)
  // {
  //   steer_function(ServoFD1X5::POSITION_SPEED_COMMAND_REGISTER, rpm, 
  //                           MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);

  //   usleep(10000);
  // }

  // void ZlbSteer::set_degree(double degree)
  // {
  //   set_position(degree_to_position(degree) + _origin_position);
  // }

  // void ZlbSteer::set_radian(double radian)
  // {
  //   set_position(radian_to_position(radian) + _origin_position);
  // }

  // void ZlbSteer::run_incremental_position()
  // {
  //   if(_positive_limit <= (_current_position + _set_position))
  //   {
  //     LOGGER->push_log_format("ERROR", "PROC", "Positive limit over.", "positive limit : " + std::to_string(_positive_limit));
  //     return;
  //   }
  //   else if(_negative_limit >= (_current_position +_set_position))
  //   {
  //     LOGGER->push_log_format("ERROR", "PROC", "Negative limit over.", "negative limit : " + std::to_string(_negative_limit));
  //     return;
  //   }
  //   else
  //   {
  //     if (_opmode != "position") set_position_mode();
  //     steer_function(ServoFD1X5::CONTROL_REGISTER, 
  //                             ServoFD1X5::CONTROL_VALUES::INCREMENT_POSITION::SET1, 
  //                             MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //     usleep(10000);
  //     steer_function(ServoFD1X5::CONTROL_REGISTER, 
  //                             ServoFD1X5::CONTROL_VALUES::INCREMENT_POSITION::SET2, 
  //                             MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //     usleep(10000);
  //   }
  // }

  // void ZlbSteer::run_absolute_position()
  // {
  //   if(_positive_limit <= _set_position)
  //   {
  //     LOGGER->push_log_format("ERROR", "PROC", "Positive limit over.", "positive limit : " + std::to_string(_positive_limit));
  //     return;
  //   }
  //   else if(_negative_limit >= _set_position)
  //   {
  //     LOGGER->push_log_format("ERROR", "PROC", "Negative limit over.", "negative limit : " + std::to_string(_negative_limit));
  //     return;
  //   }
  //   else
  //   {
  //     if(_opmode != "position") set_position_mode();
  //     steer_function(ServoFD1X5::CONTROL_REGISTER, 
  //                             ServoFD1X5::CONTROL_VALUES::ABSOLUTE_POSITION::SET1, 
  //                             MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //     usleep(10000);
  //     steer_function(ServoFD1X5::CONTROL_REGISTER, 
  //                             ServoFD1X5::CONTROL_VALUES::ABSOLUTE_POSITION::SET2, 
  //                             MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //     usleep(10000);
  //   }
  // }

  // int32_t ZlbSteer::get_velocity()
  // {
  //   _current_rpm = steer_function(ServoFD1X5::VELOCITY_FEEDBACK_REGISTER, 2, 
  //                                         MODBUS_FUNC_CODE::READ_HOLDING_REGISTERS);
  //   return _current_rpm;
  // }

  // int32_t ZlbSteer::get_position()
  // {
  //   _current_position = steer_function(ServoFD1X5::POSITION_FEEDBACK_REGISTER, 2, 
  //                                               MODBUS_FUNC_CODE::READ_HOLDING_REGISTERS);
  //   return _current_position;
  // }

  // double ZlbSteer::get_radian()
  // {
  //   double radian = position_to_radian(get_position() - _origin_position);
  //   std::cout << radian << std::endl;
  //   return radian;
  // }

  // double ZlbSteer::get_degree()
  // {
  //   double degree = position_to_degree(get_position() - _origin_position);
  //   std::cout << degree << std::endl;
  //   return degree;
  // }

  // void ZlbSteer::set_din()
  // {
  //   _current_position = steer_function(ServoFD1X5::DIN1_REGISTER, 
  //                                               ServoFD1X5::LIMIT_MODE::POSITIVE, 
  //                                               MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //   _current_position = steer_function(ServoFD1X5::DIN3_REGISTER, 
  //                                               ServoFD1X5::LIMIT_MODE::NEGATIVE, 
  //                                               MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  //   usleep(10000);
  // }

  // int32_t ZlbSteer::steer_function(int32_t value1, int32_t value2, MODBUS_FUNC_CODE code)
  // {
  //   if(steer_notify == nullptr)      return 0;

  //   int32_t ret = steer_notify(value1, value2, code);

  //   return ret;
  // }

  // void ZlbSteer::load_option(std::string file_name)
  // {
  //   try
  //   {
  //     // file open
  //     std::ifstream yaml_file(file_name);
  //     YAML::Node    yaml = YAML::Load(yaml_file);
  //     yaml_file.close();

  //     // data read
  //     std::string config_name = yaml["config_name"].as<std::string>();
  //     std::cout << config_name << std::endl;

  //     // modbus rtu 정보
  //     _origin_position = yaml["steer"]["origin"].as<int32_t>();
  //     _positive_limit = yaml["steer"]["positive_limit"].as<int32_t>();
  //     _negative_limit = yaml["steer"]["negative_limit"].as<int32_t>();
  //   }
  //   catch(YAML::Exception& e)
  //   {
  //     LOGGER->push_log_format("ERROR", "PROC", "YAML Exception", e.what());
  //   }
  //   catch(std::exception& e)
  //   {
  //     LOGGER->push_log_format("ERROR", "PROC", "Standard Exception", e.what());
  //   }
  //   catch(...)
  //   {
  //     LOGGER->push_log_format("ERROR", "PROC", "Unknown Exception", "");
  //   }
  // }

}