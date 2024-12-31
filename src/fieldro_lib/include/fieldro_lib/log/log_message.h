

#pragma once

#include <ctime>
#include <cstdint>
#include <string>
#include <memory>
#include <cstring>

//#include "define/unit_define.h"
#include <fieldro_lib/define/unit_define.h>

namespace frb
{
  enum class LogLevel
  {
    Debug,
    Info, 
    Warning,
    Error,
  };

  inline std::string log_level_to_string(LogLevel level)
  {
    switch(level)
    {
      case LogLevel::Debug:     return "Debug";
      case LogLevel::Info:      return "Info";
      case LogLevel::Warning:   return "Warning";
      case LogLevel::Error:     return "Error";
      default:                  return "Unknown";
    }
    return "Unknown";
  }

  class LogMessage
  {
  public:
    LogMessage(LogLevel level, UnitName unit, int32_t error, std::string msg);
              //:_error(error), _msg(std::move(msg));
    // {
    //   std::memset(_file_name, 0, sizeof(_file_name));
    //   std::memset(_info_time, 0, sizeof(_info_time));

    //   time_t  curtime = time(nullptr);
    //   tm      timeinfo; 
    //   localtime_r(&curtime, &timeinfo);

    //   snprintf(_file_name, sizeof(_file_name), "%02d%02d%02d-%02d", 
    //             (timeinfo.tm_year+1900)%100, 
    //             timeinfo.tm_mon+1, 
    //             timeinfo.tm_mday,
    //             timeinfo.tm_hour);

    //   snprintf(_info_time, sizeof(_file_name), "%02d:%02d-%03d", 
    //             timeinfo.tm_min,
    //             timeinfo.tm_sec,
    //             (int)(curtime%1000));

    //   _unit       = unit_to_string(unit);
    //   _log_level  = log_level_to_string(level);
    // }

    LogMessage(const LogMessage& log);
    // {
    //   _unit = log._unit;
    //   _error= log._error;
    //   _msg  = log._msg;
    //   _log_level = log._log_level;

    //   std::memset(_file_name, 0, sizeof(_file_name));
    //   std::memset(_info_time, 0, sizeof(_info_time));

    //   std::strncpy(_file_name, log._file_name, sizeof(_file_name));
    //   std::strncpy(_info_time, log._info_time, sizeof(_info_time));
    // }

    LogMessage& operator=(const LogMessage& log);
    // {
    //   if(this == &log) return *this;
    //   _unit = log._unit;
    //   _error= log._error;
    //   _msg  = log._msg;
    //   _log_level = log._log_level;

    //   std::memset(_file_name, 0, sizeof(_file_name));
    //   std::memset(_info_time, 0, sizeof(_info_time));
      
    //   std::strncpy(_file_name, log._file_name, sizeof(_file_name));
    //   std::strncpy(_info_time, log._info_time, sizeof(_info_time));

    //   return *this;
    // }

    ~LogMessage(){};

  protected:
    LogMessage(){};

  public:
    std::string   _unit;
    int32_t       _error; 
    std::string   _msg;
    std::string   _log_level;
    char          _file_name[16];
    char          _info_time[16];
  };
}