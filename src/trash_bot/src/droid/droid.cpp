

#include "droid.h"
#include "helper/helper.h"
#include "log/log.h"
#include <trash_bot/UnitAliveMsg.h>

#include "define/unit_define.h"
#include "define/unit_action_define.h"
#include "define/error_code.h"
 
namespace fieldro_bot
{
  Droid::Droid() : _lock()
  {
    // 관련 옵션 로드
    load_option();

    // 현재 상태를 _state값중 system에 해당하는 값으로 연결
    _action = _state+static_cast<int>(Unit::System);
    

    _node_handle = new ros::NodeHandle();       // node handler 생성

    for(int i=0; i<(int)DISignal::END; i++)  
    {
      _sensor[i] = __INT8_MAX__;
    }
    _signal_bit = __INT64_MAX__;

    _subscribe_switch_report =
    _node_handle->subscribe("twinny_robot/SwitchReport", 100, &Droid::subscribe_switch_report, this);

    _subscribe_velocity_control =
    _node_handle->subscribe("twinny_robot/VelControl", 100, &Droid::subscribe_velocity_control, this);

    _subscribe_io_signal = _node_handle->subscribe("trash_bot/io_signal", 100, &Droid::subscribe_io_signal, this);

    _subscribe_action_complete = 
    _node_handle->subscribe("trash_bot/action_complete", 100, &Droid::subscribe_action_complete, this);

    _subscribe_unit_state = _node_handle->subscribe("trash_bot/UnitStateMsg", 100, &Droid::subscribe_unit_state, this);

    _publish_unit_control = 
    _node_handle->advertise<trash_bot::UnitControl>("trash_bot/unit_control", 100);

    _publish_unit_alive =
    _node_handle->advertise<trash_bot::UnitAliveMsg>("trash_bot/UnitAliveMsg", 100);

    _control_sequence.clear();
    _pending_sequence.clear();
    _command_map.clear();

    _spinner = new ros::AsyncSpinner(5);        // spinner 생성
    _spinner->start();

    // thread
    _thread_info  = new ThreadActionInfo("config/droid.yaml", "main");
    _thread_info->_active = true;
    _thread_info->_thread = std::thread(std::bind(&Droid::update, this));  

    // 변수 초기화
    _last_io_update_time = ros::TIME_MAX;
    
    // 각 unit 상태 초기화
    for(int i=0; i<(int)Unit::End; i++)
    {
      _state[i] = UnitState::End;
    }
    //*_action = fieldro_bot::UnitState::Created;
    _state[to_int(Unit::System)] = UnitState::Created;

    // 마지막 상태 보고 시간
    _last_alive_publish_time = ros::Time::now();
  }

  /**
  * @brief      Droid 소멸자
  * @note       
  * @attention  Robot의 Main Controller이므로 객체 소멸시 ROS 시스템을 종료한다.
  */
  Droid::~Droid()
  {
    // 객체 소멸 topic 메세지 전송을 위한 약간의 시간 대기
    usleep(1000000);

    // thread 해제
    _thread_info->_active = false;
    safe_delete(_thread_info);

    // user 입력 command 해제
    _command_map.clear();

    // control_sequence 해제
    while(!_control_sequence.empty())
    {
      _control_sequence.pop_front();
    }

    // pending_sequence 해제
    while(!_pending_sequence.empty())
    {
      _pending_sequence.pop_front();
    }

    // ros 해제
    ros::shutdown();
    ros::waitForShutdown();
    safe_delete(_node_handle);
  }

  void Droid::system_finish()
  {
    ros::shutdown();
    ros::waitForShutdown();
  }

  void Droid::update()
  {
    while(_thread_info->_active)
    {
      // topic message 발송
      message_publish();

      // unit의 상태를 publish
      publish_unit_alive();

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_thread_info->_sleep));
    }  
  }


  /**
  * @brief      log기록 하기위한 wrapper 함수
  * @param[in]  LogLevel level      : log level
  * @param[in]  int32_t error_code  : error code
  * @param[in]  std::string log     : log message
  * @return     
  * @note       
  */
  void Droid::log_msg(LogLevel level, int32_t error_code, std::string log)
  {
    LOG->add_log(fieldro_bot::Unit::System, level, error_code, log);
    return;
  }


  /**
  * @brief      control sequence에 unit control message를 추가하는 함수
  * @param[in]  unit : 명령어가 전달 되어야 하는 unit index
  * @param[in]  command_type : 명령어 타입
  * @param[in]  action : 명령어 index
  * @param[in]  command : 명령어
  * @return     void
  * @note       
  */
  void Droid::add_sequence(uint32_t unit, uint32_t action, std::string command)
  {
    std::lock_guard<std::mutex> lock(_lock);

    std::unique_ptr<trash_bot::UnitControl> unit_control_msg = std::make_unique<trash_bot::UnitControl>();
    unit_control_msg->time_stamp     = ros::Time(0);
    unit_control_msg->target_object  = unit;
    unit_control_msg->action         = action;
    unit_control_msg->command        = command; 
    _control_sequence.push_back(std::move(unit_control_msg));

    if(unit == to_int(fieldro_bot::Unit::All) && 
      action == to_int(fieldro_bot::UnitAction::Finish))
    {
      delay_call(3000, std::bind(&Droid::system_finish, this));
    }
    
    return;
  }

  /**
  * @brief      user cmd 입력을 통한 unit 제어 함수
  * @param[in]  command : user cmd
  * @return     void  
  * @note       
  * @see        interpret_command
  */

  bool Droid::control(std::vector<std::string> command_list)
  {
    if(command_list.size() < 2 || command_list.size() > 3)                        return false;

    // command 분석
    std::tuple<int32_t, int32_t, int32_t, std::string> cmd_data = interpret_command(command_list);

    if(std::get<1>(cmd_data) == to_int(fieldro_bot::Unit::End))               return false;
    if(std::get<2>(cmd_data) == to_int(fieldro_bot::UnitAction::None))  return false;

    // 요청 list에 등록
    add_sequence(std::get<1>(cmd_data), std::get<2>(cmd_data), std::get<3>(cmd_data));

    return true;
  }

  /**
  * @brief      sensor data가 update 되었는지 확인 (기존과 달라졌는지)
  * @param[in]  sensor      : sensor index
  * @param[in]  signal_bit  : topic으로 전달 된 sensor data
  * @return     
  * @note       
  */
  bool Droid::update_sensor_data(DISignal sensor, int64_t signal_bit)
  {
    if(check_io_sensor((int)sensor, signal_bit) != _sensor[(int)sensor])
      {
        _sensor[(int)sensor] = check_io_sensor((int)sensor, signal_bit);       
        return true;
      }
      return false;
  }  

  /**
  * @brief      Droid 관련 option 로드
  * @note       
  */
  void Droid::load_option()
  {
    try
    {
      // file open
      std::ifstream yaml_file("config/droid.yaml");
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      // 여러개의 object처리 할 필요가 있어 session_name으로 구분한다.
      _alive_publish_interval = yaml["main"]["alive_publish_interval"].as<int32_t>();
    }
    catch(YAML::Exception& e)
    {
      std::cout << "YAML Exception : " << e.what() << std::endl;
    }
    catch(std::exception& e)
    {
      std::cout << "Exception : " << e.what() << std::endl;
    }
    catch(...)
    {
      std::cout << "Unknown Exception" << std::endl;
    }  

    return;
  }
}