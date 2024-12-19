
#include "communication/modbus_wrapper.h"
#include "ros/ros.h"
#include <sys/socket.h>  // SOL_SOCKET 정의를 위한 헤더
#include <netinet/in.h>  // 네트워크 관련 정의
#include <netinet/tcp.h> // TCP 관련 정의


namespace frb
{

  /**
  * @brief      ModbusWrapper 생성자
  * @param[in]  type  Modbus 타입
  * @param[in]  option_file 옵션 파일 이름
  * @note       note test
  * @todo       향후 RS232, RS485 지원 예정이며 지원 시점에 Disign Pattern 적용 예정
  */
  ModbusWrapper::ModbusWrapper(ModbusType type, 
                               std::string config_file,
                               std::string session_name,
                               std::function<void(frb::CommStatus)> notify_callback)
  {
    state_notify           = notify_callback;
    _type                   = type;
    _modbus                 = nullptr;
    _last_try_connect_time  = 0;
    _status                 = CommStatus::None;

    _retry_count  = 0;
    _retry_turm   = 3;

    _config_file = config_file;
    _session_name = session_name;

    switch (_type)
    {
    case ModbusType::TCP:       load_option_tcp();  break;
    case ModbusType::RS232:     break;
    case ModbusType::RS485:     load_option_485();  break;
    default:
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "Invalid ModbusType");
      break;
    }      
  }

  /**
  * @brief      ModbusWrapper 소멸자
  * @note       modbus 연결 종료 및 object 해제 
  */    
  ModbusWrapper::~ModbusWrapper()
  {
    //if(!is_connect())    return;
    if(is_connect() != CommStatus::Connect)    return;

    switch (_type)
    {
    case ModbusType::TCP:       disconnect_modbus_tcp();      break;
    case ModbusType::RS232:     break;
    case ModbusType::RS485:     disconnect_modbus_485();      break;

    default:                    
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "Invalid ModbusType");
      break;
    }      
  }

  /**
  * @brief      
  * @param      
  * @return     
  * @note       
  */
  CommStatus ModbusWrapper::connect_check()
  {
    switch (_type)
    {
    case ModbusType::TCP:       return connect_check_modbus_tcp();
    case ModbusType::RS232:     break;
    case ModbusType::RS485:     return connect_check_modbus_485();

    default:    
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "Invalid ModbusType");
      break;
    }
    return CommStatus::Error;
  }
  void ModbusWrapper::disconnect()
  {
    switch (_type)
    {
    case ModbusType::TCP:       return disconnect_modbus_tcp();
    case ModbusType::RS232:     break;
    case ModbusType::RS485:     return disconnect_modbus_485();

    default:    
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "Invalid ModbusType");
      break;
    }    
  }

  /**
  * @brief      modbus 연결 여부 확인
  * @return     연결 여부
  * @note       _modbus object가 nullptr인데 연결이 되지 않는 상황이 있는지 확인
  * @
  */
  CommStatus ModbusWrapper::is_connect()
  {
    return _status;
  }

  /**
  * @brief      modbus data 읽기
  * @param[in]  address  읽기 시작하는 주소
  * @param[in]  read_len 읽을 데이터 길이
  * @param[out] dest     읽은 데이터를 저장할 버퍼
  * @return     error code
  * @note       read fail시 기존 modbus 연결을 끊기.
  * @todo       log 기록을 session_name으로 구분을 해서 처리 해보도록 하자
  */    
  frb::Error ModbusWrapper::read_data_bits(int32_t address, int32_t read_len, uint8_t* dest)
  {
    std::lock_guard<std::mutex> lock(_lock);
    ros::Time current_time = ros::Time::now();

    if(!_modbus)
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_connect fail !!!");
      disconnect_modbus_tcp();
      return frb::Error::UnConnect;
    }

    int32_t socket = modbus_get_socket(_modbus);
    if(socket == -1)
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_connect fail !!!");
      disconnect_modbus_tcp();
      return frb::Error::UnConnect;
    }

    // modbus 연결 되어있지 않으면 return
    if(is_connect() != CommStatus::Connect)
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_connect fail !!!");
      disconnect_modbus_tcp();
      return frb::Error::UnConnect;
    }

    int32_t error = 0;
    socklen_t addrlen = sizeof(error);
    if(getsockopt(socket, SOL_SOCKET, SO_ERROR, &error, &addrlen) != 0)
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "getsockopt fail !!!");
      disconnect_modbus_tcp();
      return frb::Error::UnConnect;
    }
      

    // 실제 wago data 읽기
    // read_bits = modbus_read_bits(_modbus, 0, read_len, dest);
    std::this_thread::sleep_for(std::chrono::milliseconds(2));
    int32_t result = modbus_read_bits(_modbus, address, read_len, dest);

    if(result == -1)
    {
      std::string error_msg = modbus_strerror(errno);
      ros::Duration duration = ros::Time::now() - current_time;
        
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, 
                  "modbus_read_bits fail: " + error_msg + " (took " + 
                  std::to_string(duration.toSec()) + "s)");
        
      disconnect_modbus_tcp();
      return frb::Error::ReadFail;
    }

    if(result != read_len)
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, 
                    "Incomplete read: got " + std::to_string(result) + 
                    " bits, expected " + std::to_string(read_len));
        
        disconnect_modbus_tcp();
        return frb::Error::ReadFail;
    }

    // // 읽어들인 Data 길이 확인
    // if(read_bits != read_len)
    // {
    //   LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_read_bits fail !!!");

    //   disconnect_modbus_tcp();

    //   // error 내용 및 경과시간 log 기록
    //   std::string str = modbus_strerror(errno);
    //   ros::Duration duration = ros::Time::now() - current_time;
    //   LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "Error : "+ str + "   " + std::to_string(duration.toSec()));
      
    //   return frb::Error::ReadFail;
    // }

    return frb::Error::None;
  }

  // frb::Error ModbusWrapper::read_data_bits(int32_t address, int32_t read_len, uint8_t* dest)
  // {
  //   std::lock_guard<std::mutex> lock(_lock);

  //   ros::Time current_time = ros::Time::now();

  //   // modbus 연결 되어있지 않으면 return
  //   if(is_connect() != CommStatus::Connect || modbus_get_socket(_modbus) == -1)
  //   {
  //     LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_connect fail !!!");
  //     disconnect_modbus_tcp();
  //     return frb::Error::UnConnect;
  //   }

  //   int32_t error = 0;
  //   socklen_t addrlen = sizeof(error);
  //   if(getsockopt(modbus_get_socket(_modbus), SOL_SOCKET, SO_ERROR, &error, &addrlen) != 0)
  //   {
  //     LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "getsockopt fail !!!");
  //     disconnect_modbus_tcp();
  //     return frb::Error::UnConnect;
  //   }
      

  //   // 실제 wago data 읽기
  //   size_t read_bits = modbus_read_bits(_modbus, 0, read_len, dest);

  //   // 읽어들인 Data 길이 확인
  //   if(read_bits != read_len)
  //   {
  //     LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_read_bits fail !!!");

  //     disconnect_modbus_tcp();

  //     // error 내용 및 경과시간 log 기록
  //     std::string str = modbus_strerror(errno);
  //     ros::Duration duration = ros::Time::now() - current_time;
  //     LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "Error : "+ str + "   " + std::to_string(duration.toSec()));
      
  //     return frb::Error::ReadFail;
  //   }

  //   return frb::Error::None;
  // }

  /**
  * @brief      modbus data 쓰기
  * @param[in]  address 쓰기 시작하는 주소
  * @param[in]  status  쓰기할 데이터
  * @return     error code
  * @note       쓰기 실패시 기존 modbus 연결을 끊기
  * @todo       log 기록을 session_name으로 구분을 해서 처리 해보도록 하자
  */
  frb::Error ModbusWrapper::write_data_bits(int32_t address, int32_t status)
  {
    std::lock_guard<std::mutex> lock(_lock);

    // modbus 연결 되어있지 않으면 return
    //if(!_is_connected) return frb::Error::UnConnect;
    if(is_connect() != CommStatus::Connect)
      return frb::Error::UnConnect;

    // 실제 wago data 쓰기
    size_t write_bits = modbus_write_bit(_modbus, address, status);

    // 쓰기 성공 여부 확인
    if(write_bits != 1)
    {
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_write_bit fail !!!");
      disconnect_modbus_tcp();
      return frb::Error::WriteFail;
    }

    return frb::Error::None;
  }

  /**
  * @brief      연결 시도 시 turm을 지났는지 여부 체크
  * @return     연결 시도 turm을 지났는지 여부 
  * @note       _retry_count 변수 까지 포함하여 재연결 가능 여부를 판단하는
  *            함수로 Refactoring 필요
  *             reconnect_possible() 함수로 변경을 하자 
  */
  bool ModbusWrapper::is_reconnect_possible()
  {
    if(_last_try_connect_time + _retry_turm > std::time(nullptr)) 
    {   
      return false;
    }
    
    if(_retry_count <= 0)  
    {
      _status = CommStatus::Error;
      return false;
    }

    return true;
  }

  frb::Error ModbusWrapper::read_data_registers(int32_t address, int32_t read_len, uint16_t* dest)
  {
    std::lock_guard<std::mutex> lock(_lock);

    int32_t ret = modbus_read_registers(_modbus, address, read_len, dest);

    if(ret == -1)
    {
      std::string str = modbus_strerror(errno);
      LOG->add_log(frb::UnitName::Signal, frb::LogLevel::Error, 0, "modbus_read_registers fail : " + str);
      disconnect();
      return frb::Error::ReadFail;
    }

    return frb::Error::None;
  }

  frb::Error ModbusWrapper::write_data_register(int32_t address, int16_t len, uint16_t* value)
  {
    std::lock_guard<std::mutex> lock(_lock);
    
    int32_t ret = modbus_write_registers(_modbus, address, len, value);

    if(len != ret)
    {
      disconnect();
      return frb::Error::WriteFail;
    }

    return frb::Error::None;
  }
}