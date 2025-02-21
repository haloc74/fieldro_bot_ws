

#include "droid.h"

#include <fieldro_lib/helper/helper.h>
#include <fieldro_lib/log/log.h>
//#include <fieldro_lib/define/unit_define.h>
#include <fieldro_lib/define/unit_action_define.h>
#include <fieldro_lib/define/error_code.h>
#include <fieldro_msgs/UnitAliveMsg.h>

#include "package/package_helper.h"
#include "package/unit_define.h"
 
namespace frb
{
  Droid::Droid(std::string msg_space, std::string config_file, std::string session) 
        : Unit(msg_space, config_file, session)
  {
    // 관련 옵션 로드
    load_option(config_file);

    // 현재 상태를 _state값중 system에 해당하는 값으로 연결
    //_name   = UnitName::System;
    _name = frb::to_string(frb::UnitName::System);
    _unit_index = frb::to_int(frb::UnitName::System);

    _action = UnitAction::None;
    _state  = UnitState::Created;
    _all_unit_initialize_complete = false;

    _subscribe_switch_report =
    _node_handle->subscribe("twinny_robot/SwitchReport", 10, &Droid::subscribe_switch_report, this);

    _subscribe_velocity_control =
    _node_handle->subscribe("twinny_robot/VelControl", 100, &Droid::subscribe_velocity_control, this);

    _subscribe_iosignal = 
    _node_handle->subscribe(msg_space + "/io_signal", 10, &Droid::subscribe_iosignal, this);

    _subscribe_action_complete = 
    _node_handle->subscribe(msg_space + "/action_complete", 10, &Droid::subscribe_action_complete, this);

    _subscribe_unit_state = 
    _node_handle->subscribe(msg_space + "/UnitStateMsg", 100, &Droid::subscribe_unit_state, this);

    _subscribe_joystick =
    _node_handle->subscribe(msg_space + "/joy", 20, &Droid::subscribe_joystick, this);

    _publish_unit_control = 
    _node_handle->advertise<fieldro_msgs::UnitControl>(msg_space + "/unit_control", 10);

    _publish_driving_control =
    _node_handle->advertise<geometry_msgs::Twist>(msg_space + "/driving_control", 100);    

    _publish_manual_control =
    _node_handle->advertise<fieldro_msgs::ManualControl>(msg_space + "/manual_control", 10);

    _control_sequence.clear();
    _pending_sequence.clear();
    _command_map.clear();

    // spinner 시작
    _spinner->start();

    // thread
    _update_thread  = new ThreadActionInfo("config/droid.yaml", "main");
    _update_thread->_thread = std::thread(std::bind(&Droid::update, this));  
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
    _update_thread->_active = false;
    safe_delete(_update_thread);

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
  }

  void Droid::update()
  {
    while(_update_thread->_active)
    {
      // topic message 발송
      //log_msg(LogInfo, 0, "message_publish !!!");
      message_publish();

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_update_thread->_sleep));
    }  
  }


  /**
  * @brief      control sequence에 unit control message를 추가하는 함수
  * @param[in]  unit : 명령어가 전달 되어야 하는 unit index
  * @param[in]  command_type : 명령어 타입
  * @param[in]  action : 명령어 index
  * @param[in]  command : 명령어
  * @return     void
  * @attention  action이 finish일 경우 명령 list를 무시하고 최우선 전송 후 종료 
  * @note       
  */
  void Droid::add_sequence(int32_t unit, int32_t action, std::string command)
  {
    auto start = std::chrono::steady_clock::now();
    std::lock_guard<std::mutex> lock(_lock);
    auto end = std::chrono::steady_clock::now();
    auto diff = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
    if(diff.count() > 100) 
    { // 락 획득이 100ms 이상 걸린 경우
        log_msg(LogInfo, 0, "Lock acquisition took " + std::to_string(diff.count()) + "ms");
    }

    if(unit == to_int(frb::UnitName::All) && 
      action == to_int(frb::UnitAction::Finish))
    {
      //publish_unit_control(unit, action, "");
      publish_all_destroy();
      delay_call(3000, std::bind(&Droid::destroy, this));
    }
    else
    {
      std::unique_ptr<fieldro_msgs::UnitControl> 
      unit_control_msg = std::make_unique<fieldro_msgs::UnitControl>();

      unit_control_msg->time_stamp     = ros::Time(0);
      unit_control_msg->target_object  = unit;
      unit_control_msg->action         = action;
      unit_control_msg->command        = command;

      _control_sequence.push_back(std::move(unit_control_msg));
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
    if(command_list.size() < 2 || command_list.size() > 3)              return false;

    // command 분석
    std::tuple<int32_t, int32_t, int32_t, std::string> cmd_data = interpret_command(command_list);

    if(std::get<1>(cmd_data) == to_int(frb::UnitName::End))     return false;
    if(std::get<2>(cmd_data) == to_int(frb::UnitAction::None))  return false;

    if(std::get<2>(cmd_data) == to_int(frb::UnitAction::EStop))
    {
      // EStop일 경우 unit에 즉시 EStop 전송
      //publish_unit_control(std::get<1>(cmd_data), std::get<2>(cmd_data), std::get<3>(cmd_data));
    }
    else
    {
      // 요청 list에 등록
      add_sequence(std::get<1>(cmd_data), std::get<2>(cmd_data), std::get<3>(cmd_data));
    }

    return true;
  }

  /**
  * @brief      Droid 관련 option 로드
  * @note       
  */
  void Droid::load_option(std::string config_file)
  {
    try
    {
      // file open
      std::ifstream yaml_file(config_file);
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      // 여러개의 object처리 할 필요가 있어 session_name으로 구분한다.
      //_alive_publish_interval = yaml["main"]["alive_publish_interval"].as<int32_t>();
      _is_driving_mode_changeable = yaml["main"]["driving_mode_changeable"].as<int32_t>();
      _joystick_control = yaml["main"]["joystick_control"].as<int32_t>();
      
      _propulsion_scale_factor = yaml["main"]["propulsion_scale_factor"].as<double>();
      _steer_scale_factor = yaml["main"]["steer_scale_factor"].as<double>();

      log_msg(LogInfo, 0, "Driving Mode : " + std::to_string(_is_driving_mode_changeable));
      log_msg(LogInfo, 0, "Joystick Control : " + std::to_string(_joystick_control));
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