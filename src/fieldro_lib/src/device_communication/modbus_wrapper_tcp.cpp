//#include "communication/modbus_wrapper.h"
#include <fieldro_lib/device_communication/modbus_wrapper.h>
#include <fstream>
#include "yaml-cpp/yaml.h"
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <arpa/inet.h>

namespace frb
{
  /**
  * @brief      modbus 연결 옵션 Load
  * @param      std::string : config.yaml 파일 안에서의 session 명
  * @return     
  * @note       
  */
  void ModbusWrapper::load_option_tcp()
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
        LOG->add_log("Signal", frb::LogLevel::Error, 0, "Unable to open the YAML file");
        return; 
      }

      YAML::Node    yaml = YAML::Load(yaml_file);
      yaml_file.close();

      // modbus tcp ip, port 정보
      _ip          = yaml[_session_name]["ip"].as<std::string>();
      _port        = yaml[_session_name]["port"].as<int32_t>();
      _retry_count = yaml[_session_name]["retry_count"].as<int32_t>();
      _retry_turm  = yaml[_session_name]["retry_turm"].as<int32_t>();
      debug       = yaml[_session_name]["debug"].as<int32_t>();
      _remaining_retry_count = _retry_count;
    }
    catch(YAML::Exception& e)
    {
      std::string error_msg = "YAML Exception : " + _session_name + "    " + e.what();
      LOG->add_log("Signal", frb::LogLevel::Error, 0, error_msg);
    }
    catch(std::exception& e)
    {
      std::string error_msg = "Exception : " + _session_name + "    " + e.what();
      LOG->add_log("Signal", frb::LogLevel::Error, 0, error_msg);
    }
    catch(...)
    {
      std::string error_msg = "Unknown Exception : " + _session_name;
      LOG->add_log("Signal", frb::LogLevel::Error, 0, error_msg);
    }

    // todo : option을 log file로 저장 (Debugging 용도) 
    if(debug != 0)
    {
      LOG->add_log("Signal", frb::LogLevel::Info, 0, "ModbusWrapper::load_option_tcp() : ");
      LOG->add_log("Signal", frb::LogLevel::Info, 0, "  ip          : " + _ip);
      LOG->add_log("Signal", frb::LogLevel::Info, 0, "  port        : " + std::to_string(_port));
      LOG->add_log("Signal", frb::LogLevel::Info, 0, "  retry_count : " + std::to_string(_retry_count));
      LOG->add_log("Signal", frb::LogLevel::Info, 0, "  retry_turm  : " + std::to_string(_retry_turm));
    }
  }

  /**
  * @brief      실제 modbus object 연결
  * @return     연결 성공 여부
  * @todo       log 기록을 session_name으로 구분을 해서 처리 해보도록 하자
  */
  bool ModbusWrapper::connect_modbus_tcp()
  {
    // 1. modbus context 생성
    _modbus = modbus_new_tcp(_ip.c_str(), _port);
    if(_modbus == nullptr)
    {
      LOG->add_log("Signal", frb::LogLevel::Error, 0, "modbus_new_tcp context fail !!!");
      _status = CommStatus::Disconnect;
      return false;
    }
    else
    {
      LOG->add_log("Signal", frb::LogLevel::Info, 0, "context success");
    }

    // 2. modbus slave 번호 설정
    // 직렬 통신의 경우 slave 번호를 설정해야 하지만
    // TCP 통신의 경우 slave 번호를 설정하지 않아도 된다.
    if(-1 == modbus_set_slave(_modbus, 0))
    {
      LOG->add_log("Signal", frb::LogLevel::Error, 0, "modbus_set_slave fail !!!");
      LOG->add_log("Signal", frb::LogLevel::Error, 0, std::string("Error Number : ") + modbus_strerror(errno));

      disconnect_modbus_tcp();
      return false;
    }
    else
    {
      LOG->add_log("Signal", frb::LogLevel::Info, 0, "modbus_set_slave success !!!");
    }

    // 3. modbus 연결
    if(modbus_connect(_modbus) == -1)
    {
      LOG->add_log("Signal", frb::LogLevel::Error, 0, "modbus_connect fail !!!");
      LOG->add_log("Signal", frb::LogLevel::Error, 0, std::string("Error Number : ") + modbus_strerror(errno));

      disconnect_modbus_tcp();

      return false;
    }
    else
    {
      modbus_set_response_timeout(_modbus, 0, 500000);
      //modbus_set_debug(_modbus, ON); // 디버그 모드 활성화

      LOG->add_log("Signal", frb::LogLevel::Info, 0, "connect success");
      _status = CommStatus::Connect;
    }


    // 4. socket option 설정
    int socket = modbus_get_socket(_modbus);
    if(-1 == socket)
    {
      LOG->add_log("Signal", frb::LogLevel::Error, 0, "socket set fail !!!");
      disconnect_modbus_tcp();
      return false;
    }
    else
    {
      // socket buffer size 설정
      int buffer_size = 65536;  // 64KB
      setsockopt(socket, SOL_SOCKET, SO_RCVBUF, &buffer_size, sizeof(buffer_size));
      setsockopt(socket, SOL_SOCKET, SO_SNDBUF, &buffer_size, sizeof(buffer_size));
      
      // TCP_NODELAY 설정
      int flag = 1;
      setsockopt(socket, IPPROTO_TCP, TCP_NODELAY, &flag, sizeof(flag));
    }

    return true;
  }


  /**
  * @brief      modbus tcp 연결 해제
  * @note       
  */
  void ModbusWrapper::disconnect_modbus_tcp()
  {
    if(_modbus == nullptr) return;

    modbus_close(_modbus);
    modbus_flush(_modbus);
    modbus_free(_modbus);

    _modbus = nullptr;
    _status = CommStatus::Disconnect;

     _remaining_retry_count = _retry_count;
  }

  /**
  * @brief      modbus_tcp 연결 체크 함수
  * @return     연결 또는 연결 성공 여부
  * @note       
  */
  CommStatus ModbusWrapper::connect_check_modbus_tcp()
  {
    std::lock_guard<std::mutex> lock(_lock);

    if(is_connect() == CommStatus::Connect) return _status;
    if(!is_reconnect_possible())            return _status;   

    _last_try_connect_time = std::time(nullptr);
     _remaining_retry_count--;

    if(connect_modbus_tcp() == false)
    {
      LOG->add_log("Signal", frb::LogLevel::Error, 0, "modbus_connect fail !!!");
      LOG->add_log("Signal", frb::LogLevel::Error, 0, std::string("Error Number : ") + modbus_strerror(errno));

      if( _remaining_retry_count <= 0)  _status = CommStatus::Error;
      else                              _status = CommStatus::Reconnect;

      return _status;
    }
    else
    {
      LOG->add_log("Signal", frb::LogLevel::Info, 0, "try_connect_modbus_tcp success !!! \n");
      
      // 연결이 되었으므로 retry count 초기화
       _remaining_retry_count = _retry_count;
      _status       = CommStatus::Connect;
    }
  }
}