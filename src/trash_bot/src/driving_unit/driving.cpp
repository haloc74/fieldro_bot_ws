
#include "driving.h"
#include "helper/helper.h"
#include <trash_bot/UnitActionComplete.h>
 
namespace frb
{
  Driving::Driving(std::string config_file, std::string session) 
          : Unit(config_file, session)
  {
    load_option(config_file);           // option load     

    _name   = UnitName::Driving;
    _action = UnitAction::None;
    _state  = frb::UnitState::Created;

    // unit action message 수신을 위한 subscriber 생성 및 link
    _subscribe_unit_action =
    _node_handle->subscribe("trash_bot/unit_control", 100, &Driving::subscribe_unit_action, this);

    // unit action message 처리 결과 발송을 위한 publisher 생성 및 link
    _publish_unit_action_complete =
    _node_handle->advertise<trash_bot::UnitActionComplete>("trash_bot/action_complete", 10);

    // 속도제어 subscriber 생성 및 link
    _subscribe_velocity_control =
    _node_handle->subscribe("twinny_robot/VelControl", 100, &Driving::subscribe_velocity_control, this);

    // 속도제어 publisher 생성 및 link
    _publish_act_velocity =
    _node_handle->advertise<geometry_msgs::Twist>("twinny_robot/ActVel", 100);

    // spinn 구동 (생성은 Unit Class 담당)
    _spinner->start();

    // main update thread
    _update_thread  = new ThreadActionInfo("config/driving.yaml", "main");
    _update_thread->_thread = std::thread(std::bind(&Driving::update, this));
    _update_thread->_active = true;
  }

  Driving::~Driving()
  {
    // 객체 소멸 topic 메세지 전송을 위한 약간의 시간 대기
    _update_thread->_active = false;
    safe_delete(_update_thread);
  }

  void Driving::update()
  {
    while(_update_thread->_active)
    {
      // todo : 

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_update_thread->_sleep));
    }
  }

  void Driving::load_option(std::string config_file)
  {
    try
    {
      // file open
      std::ifstream yaml_file(config_file);
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      // todo 
      //int32_t     value = yaml["session"]["key"].as<int32_t>();
      //std::string value = yaml["session"]["key"].as<std::string>();
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

  void Driving::subscribe_unit_action(const trash_bot::UnitControl& msg)
  {
    // todo : 
  }

}
