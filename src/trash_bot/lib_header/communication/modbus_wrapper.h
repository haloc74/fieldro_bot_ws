
#pragma once

#include <modbus/modbus.h>
#include <string>
#include <ctime>
#include <functional>
#include <mutex>
#include "define/error_code.h"
#include "define/communication_define.h"
#include "log/log.h"
#include "modbus_define.h"

namespace frb
{
  /**
  * @author		  FieldRo
  * @date				2024.07.22
  * @brief    	Modbus 통신을 위한 Wrapper 클래스
  * @note  			
  * @details  	
  * @see				
  */
  class ModbusWrapper
  {
  public:
    ModbusWrapper(ModbusType type, 
                  std::string config_file,
                  std::string session_name,
                  std::function<void(frb::CommStatus)> notify_callback);
    ~ModbusWrapper();

  private:
    ModbusWrapper(){};

  public:
    CommStatus connect_check();
    void disconnect();
    
    frb::Error read_data_bits(int32_t address, int32_t read_len, uint8_t* dest);
    frb::Error read_data_registers(int32_t address, int32_t read_len, uint16_t* dest);

    frb::Error write_data_bits(int32_t address, int32_t status);
    frb::Error write_data_register(int32_t address, uint16_t value);
    frb::Error write_data_registers(int32_t address, int16_t len, uint16_t* value);

  protected:
    std::string _config_file;
    std::string _session_name;
    std::function<void(frb::CommStatus)>   state_notify;
    modbus_t*   _modbus;
    std::mutex  _lock;
    
    std::string _ip;
    std::string _device;
    int32_t     _port;
    int32_t     _baud;
    int32_t     _slave_id;
    ModbusType  _type;

    CommStatus _status;
    std::time_t _last_try_connect_time;     
    int32_t     _remaining_retry_count;     // 잔여 재시도 횟수
    int32_t     _retry_count;
    int32_t     _retry_turm;


    CommStatus is_connect();
    bool is_reconnect_possible();

  protected:
    // Modbus TCP : modbus_wrapper_tcp.cpp
    void load_option_tcp();
    CommStatus connect_check_modbus_tcp();
    //bool try_connect_modbus_tcp();
    bool connect_modbus_tcp();
    void disconnect_modbus_tcp();
    

    // Modbus RTU (485) : modbus_wrapper_485.cpp
    void load_option_485();
    CommStatus connect_check_modbus_485();    

    //bool try_connect_modbus_485();
    bool connect_modbus_485();
    void disconnect_modbus_485();
    
  };
} // namespace frb