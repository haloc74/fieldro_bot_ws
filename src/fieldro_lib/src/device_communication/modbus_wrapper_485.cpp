
//#include "communication/modbus_wrapper.h"
#include <fieldro_lib/device_communication/modbus_wrapper.h>
#include <fstream>
#include "yaml-cpp/yaml.h"


namespace frb
{
  /**
  * @brief      modbus 485 연결 시도
  * @return     연결 여부
  * @note       
  * @attention  연결 상태에서 이 Method가 호출 되면 안되며 호출하는 측에서 연결 </br>
  *             상태를 확인 후 호출해야 한다.  
  * @todo       log 기록을 session_name으로 구분을 해서 처리 해보도록 하자
  */
  // bool ModbusWrapper::try_connect_modbus_485()
  // {
  //   if(!is_reconnect_possible())  return false;   // 재연결 할 수 없음 (turm or count 초과)

  //   _last_try_connect_time = std::time(nullptr);
  //   _retry_count--;

  //   if(connect_modbus_485() == false)
  //   {
  //     LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_connect fail !!!");
  //     LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, std::string("Error Number : ") + modbus_strerror(errno));

  //     _is_connected = false;

  //     return false;
  //   }
  //   else
  //   {
  //     LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "try_connect_modbus_485 success !!!");
      
  //     // 연결이 되었으므로 retry count 초기화
  //     _retry_count  = 0;
  //     _is_connected = true;
  //   }

  //   return true;
  // }
  

  /**
  * @brief      실제 modbus object 연결
  * @return     연결 성공 여부
  * @todo       log 기록을 session_name으로 구분을 해서 처리 해보도록 하자
  * @note       modbus_connect error code 구분
  *            1. "permission denied" : serial port 권한 문제
  *               - 현재 유저의 그룹 확인               : id -Gn                  
  *               - idalout 그룹에 현재 유저그룹 추가   : sudo adduser $USER dialout
  *               - system reboot                     : sudo reboot 
  *            2. "no such device" : serial port 장치가 없는 경우
  *            3. "input/output error" : serial port 장치가 사용중인 경우
  */
  bool ModbusWrapper::connect_modbus_485()
  {
    // 1. modbus context 생성
    _modbus = modbus_new_rtu(_device.c_str(), _baud, 'N', 8, 1);
    if(_modbus == nullptr)
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_new_rtu context fail !!!");
      return false;
    }
    else
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "modbus contex success !!!");
    }

    // 2. modbus rtu mode 설정
    modbus_rtu_set_serial_mode(_modbus, MODBUS_RTU_RS485);

    // 3. modbus rtu RTS 설정
    modbus_rtu_set_rts(_modbus, MODBUS_RTU_RTS_UP);

    // 4. modbus slave 번호 설정
    // if(!set_slave_id(_last_slave_id))
    // {
    //   LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_set_slave fail !!!");
    //   return false;
    // }
    if(modbus_set_slave(_modbus, _last_slave_id) == -1)
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_set_slave fail !!!");
      return false;
    }
    else
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "modbus_set_slave success !!!");
    }

    // 5. modbus 연결
    if(modbus_connect(_modbus) == -1)
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_connect fail !!!");
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, std::string("Error Number : ") + modbus_strerror(errno));

      modbus_free(_modbus);
      _modbus       = nullptr;
      return false;
    }
    else
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "modbus_connect success !!!");
    }


    return true;
  }
  
  /**
  * @brief      modbus 485 연결 해제
  * @note       
  */
  void ModbusWrapper::disconnect_modbus_485()
  {
    if(_modbus == nullptr) return;

    modbus_close(_modbus);
    modbus_flush(_modbus);
    modbus_free(_modbus);

    _modbus = nullptr;
    _status = CommStatus::Disconnect;
  }

    /**
  * @brief      modbus_485 연결 체크 함수
  * @return     연결 또는 연결 성공 여부
  * @note       
  */
  CommStatus ModbusWrapper::connect_check_modbus_485()
  {
    // if(is_connect())  return true;

    // if(!try_connect_modbus_485())  
    // {
    //   std::this_thread::sleep_for(std::chrono::milliseconds(1000));
    //   return false;
    // }
    // return true;

    if(is_connect() == CommStatus::Connect) return _status;
    if(!is_reconnect_possible())              return _status;

    _last_try_connect_time = std::time(nullptr);
     _remaining_retry_count--;

    if(connect_modbus_485() == false)
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_connect fail !!!");
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, std::string("Error Number : ") + modbus_strerror(errno));

      if( _remaining_retry_count <= 0)   _status = CommStatus::Error;
      else                    _status = CommStatus::Reconnect;

      if(state_notify != nullptr) state_notify(_status);
      return _status;
    }
    else
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "try_connect_modbus_485 success !!!");
      
      // 연결이 되었으므로 retry count 초기화
       _remaining_retry_count = _retry_count;
      _status = CommStatus::Connect;

      if(state_notify != nullptr) state_notify(_status);
    }    
  }

  /**
  * @brief      modbus485 연결 옵션 Load
  * @param      std::string : config.yaml 파일 안에서의 session 명
  */
  void ModbusWrapper::load_option_485()
  {
    int32_t debug = 0;
    try
    {
      // file open
      std::ifstream yaml_file(_config_file);

      //
      if(!yaml_file.is_open()) 
      {
        // todo : error log 추가      
        LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "Unable to open the YAML file");
        return; 
      }

      YAML::Node    yaml = YAML::Load(yaml_file);
      yaml_file.close();

      // modbus tcp ip, port 정보
      _device         = yaml[_session_name]["device"].as<std::string>();
      _port           = yaml[_session_name]["port"].as<int32_t>();
      _baud           = yaml[_session_name]["baud"].as<int32_t>();
      _last_slave_id  = yaml[_session_name]["slave_id"].as<int32_t>();

      _retry_count = yaml[_session_name]["retry_count"].as<int32_t>();
      _retry_turm  = yaml[_session_name]["retry_turm"].as<int32_t>();

      debug       = yaml[_session_name]["debug"].as<int32_t>();
      _remaining_retry_count = _retry_count;
    }
    catch(YAML::Exception& e)
    {
      std::string error_msg = "YAML Exception : " + _session_name + "    " + e.what();
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, error_msg);
    }
    catch(std::exception& e)
    {
      std::string error_msg = "Exception : " + _session_name + "    " + e.what();
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, error_msg);
    }
    catch(...)
    {
      std::string error_msg = "Unknown Exception : " + _session_name;
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, error_msg);
    }

    // todo : option을 log file로 저장 (Debugging 용도) 
    if(debug != 0)
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "ModbusWrapper::load_option_485() : ");
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "  session     : " + _session_name);
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "  device      : " + _device);
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "  baud        : " + std::to_string(_baud)); 
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "  port        : " + std::to_string(_port));
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "  slave_id    : " + std::to_string(_last_slave_id));
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "  retry_count : " + std::to_string(_retry_count));
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Info, 0, "  retry_turm  : " + std::to_string(_retry_turm));
    }    
  }
}