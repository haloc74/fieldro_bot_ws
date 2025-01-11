
#include "zlb_drive.h"
#include "zlb_resisters.h"
#include <fieldro_lib/helper/helper.h>
#include <bitset>

namespace frb
{
  /**
  * @brief      
  * @param[in]  
  * @return     
  * @note       
  */
  ZlbDrive::ZlbDrive(std::function<void(int32_t, frb::Error)> action_result_callback, 
                 std::function<void(int32_t, frb::WheelControlValue)> actual_velocity_callback,
                 std::function<void(frb::LogLevel, int32_t, const std::string&)> log_callback,
                 std::string config_file, int32_t wheel)
  {
    // callback 함수 등록 
    notify_action_result    = action_result_callback;
    notify_actual_velocity  = actual_velocity_callback;
    notify_log_msg          = log_callback;
    _wheel_index            = wheel;

    // encoder tracker 객체 생성
    _encoder_tracker = new DoubleEncoderTracker();

    // steering position 객체 생성
    _steer_position = new SteeringPosition();

    std::string session = get_wheel_name(wheel);

    // config 파일에서 설정값 로드
    load_option(config_file, session);

    _comm_state   = CommStatus::Disconnect;
    _motor_status = to_int(ZlbStatus::Fault);
    _servo_power  = false;

    // modbus 통신 객체 생성
    _modbus = new ModbusWrapper(ModbusType::RS485,
                              config_file, 
                              session,
                              std::bind(&ZlbDrive::receive_modbus_state, this, std::placeholders::_1));

    // object main thread 연결
    _thread = new ThreadActionInfo(config_file, session);
    _thread->_thread = std::thread(std::bind(&ZlbDrive::update, this));
  }

  ZlbDrive::~ZlbDrive()
  {
    stop(true);

    usleep(5000000);

    std::this_thread::sleep_for(std::chrono::seconds(1));

    safe_delete(_modbus);
    safe_delete(_steer_position);
    safe_delete(_encoder_tracker);

    _thread->_active = false;
    safe_delete(_thread);
  }

  /**
  * @brief      ZlbDrive 객체의 main thread
  * @note       
  */
  void ZlbDrive::update()
  {
    while(_thread->_active)
    {
      if(_modbus->connect_check() != CommStatus::Connect)   continue;

      packet_process();

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_thread->_sleep));
    }
  }

  /**
  * @brief      modbus 객체에서 상태변경시 callback으로 호출되는 함수
  * @param[in]  const CommStatus notify : 변경된 상태
  * @note       
  */
  void ZlbDrive::receive_modbus_state(const CommStatus notify)
  {
    if(notify == _comm_state)     return;

    _comm_state = notify;

    switch(_comm_state)
    {
    case CommStatus::Connect:
      notify_log_msg(frb::LogLevel::Info, 0, "ZlbDrive::modbus_state_receive : modbus connect");
      confirm_motor_connection();
      break;
    }

    return;
  }

  /**
  * @brief      zlb drive 설정값 로드
  * @param[in]  std::string config_file : 설정 파일
  * @return     void
  * @attention  주행모드 object가 이곳에서 생성이 되므로 주의해야 한다.       
  */
  void ZlbDrive::load_option(std::string config_file, std::string session)
  {
    // slave id 초기화
    for(int i=0; i<to_int(frb::SlaveId::End); i++)
    {
      _slave_id[i] = i;
    }

    try
    {
      // file open
      std::ifstream yaml_file(config_file);
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      _slave_id[to_int(frb::SlaveId::Traction)] = yaml[session]["traction_id"].as<int32_t>();
      _slave_id[to_int(frb::SlaveId::Steering)] = yaml[session]["steering_id"].as<int32_t>();

      _steer_position->_left_limit  = yaml[session]["left_limit"].as<int32_t>();
      _steer_position->_right_limit = yaml[session]["right_limit"].as<int32_t>();
      _steer_position->_home        = yaml[session]["home_position"].as<int32_t>();

      // todo 
      //int32_t     value = yaml["session"]["key"].as<int32_t>();
      //std::string value = yaml["session"]["key"].as<std::string>();
    }
    catch(YAML::Exception& e)
    {
      std::cout << "YAML Exception : " << e.what() << std::endl;
      assert(false);
    }
    catch(std::exception& e)
    {
      std::cout << "Exception : " << e.what() << std::endl;
      assert(false);
    }
    catch(...)
    {
      std::cout << "Unknown Exception" << std::endl;
      assert(false);
    }  
    return;
  }
}