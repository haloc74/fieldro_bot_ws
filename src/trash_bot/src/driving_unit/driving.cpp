
#include "driving.h"
#include <fieldro_lib/helper/helper.h>
#include <fieldro_msgs/UnitActionComplete.h>
 
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
    _node_handle->advertise<fieldro_msgs::UnitActionComplete>("trash_bot/action_complete", 10);

    // 속도제어 subscriber 생성 및 link
    _subscribe_driving_control =
    _node_handle->subscribe("trash_bot/driving_control", 100, &Driving::subscribe_driving_control, this);

    // 속도제어 publisher 생성 및 link
    _publish_act_velocity =
    _node_handle->advertise<geometry_msgs::Twist>("twinny_robot/ActVel", 100);

    _drive = new ZlbDrive(std::bind(&Driving::action_complete_notify, 
                                    this, 
                                    std::placeholders::_1),
                          std::bind(&Unit::log_msg, 
                                    this, 
                                    std::placeholders::_1, 
                                    std::placeholders::_2, 
                                    std::placeholders::_3),
                          config_file);

    // spinn 구동 (생성은 Unit Class 담당)
    _spinner->start();

    // main update thread
    _update_thread  = new ThreadActionInfo("config/driving.yaml", "main");
    _update_thread->_thread = std::thread(std::bind(&Driving::update, this));
  }

  Driving::~Driving()
  {
    // 객체 소멸 topic 메세지 전송을 위한 약간의 시간 대기
    safe_delete(_drive);

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

  void Driving::action_complete_notify(const Error error)
  {
    log_msg(LogInfo, 0, std::string("action complete notify : ") + 
                        frb::to_string(_action) + 
                        std::string(" - error code : ") + 
                        std::to_string(frb::to_int(error)));

    if(error == Error::None)
    {
      if(_action == UnitAction::None)   
      {
        // todo : action이 없는데 동작 완료가 되는 상황은 에러이다 !!!!!.
        log_msg(LogInfo, 0, "Loader : action is None !!! - What is this ???");
        return;
      }

      // 동작 완료 보고 (정상 완료)
      publish_unit_action_complete(to_int(_action), frb::to_int(Error::None));

      // action 초기화
      _action = frb::UnitAction::None;
    }
    else
    {
      // 동작 완료 보고 (Error)
      publish_unit_action_complete(to_int(_action), frb::to_int(error));

      // error log 표기 
      log_msg(LogError, to_int(error), "Error : error code - " + std::to_string(to_int(error)));      

      // state 변경
      _state  = frb::UnitState::Error;
    }    

  }
}
