
#include "unit/unit.h"
#include "helper/helper.h"

#include <trash_bot/UnitActionComplete.h>
#include <trash_bot/UnitAliveMsg.h>

namespace fieldro_bot
{
  Unit::Unit(std::string config_file, std::string session) 
            : _thread_info(nullptr)
  {
    // main option 로드
    load_option(config_file, session);

    // command map 초기화
    _command.clear();

    // node handler 생성
    _node_handle = new ros::NodeHandle();

    // spinner 설정
    _spinner = new ros::AsyncSpinner(_spinner_count);

    // action complete publish 생성
    _publish_unit_action_complete =
    _node_handle->advertise<trash_bot::UnitActionComplete>("trash_bot/UnitActionComplete", 20);
  
    // alive publish 생성
    _publish_unit_alive =
    _node_handle->advertise<trash_bot::UnitAliveMsg>("trash_bot/UnitAliveMsg", 10);

    // alive thread 정보 생성
    _alive_thread = new ThreadActionInfo(config_file, "alive");
    _alive_thread->_active = true;
    _alive_thread->_thread = std::thread(std::bind(&Unit::publish_unit_alive, this));
   

    // child class에서 해야 할일
    // 1. subscriber, publisher 생성
    // 2. thread 생성
    // 3. spinner 시작
    // 4. thread 시작
    // 5. name, state, action 설정
  }

  Unit::~Unit()
  {
    // alive thread 해제
    _alive_thread->_active = false;
    safe_delete(_alive_thread);

    // spinner 정지
    _spinner->stop();
    safe_delete(_spinner);

    // node handler 해제
    _node_handle->shutdown();
    safe_delete(_node_handle);
  }

  void Unit::publish_unit_action_complete(int32_t action, int32_t error_code) override
  {
    trash_bot::UnitActionComplete msg;
    msg.index     = to_int(_name);
    msg.action    = action;
    msg.error_code = error_code;

    _publish_unit_action_complete.publish(msg);

    return;
  }

  void Unit::publish_unit_alive() override
  {
    while(_alive_thread->_active)
    {
      // unit alive publish
      trash_bot::UnitAliveMsg msg;
      msg.index = to_int(_name);
      msg.state = to_int(_state);
      _publish_unit_alive.publish(msg);

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_alive_thread->_sleep));
    }
  }

  ros::NodeHandle* Unit::get_node_handle()
  {
    return _node_handle;
  }

  void Unit::load_option(std::string config_file, std::string session) override
  {
    try
    {
      std::ifstream yaml_file(config_file);
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      _spinner_count        = yaml["main"]["spinner_count"].as<int32_t>();
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
  } 

  class Unit
  {
  public:
    virtual void publish_unit_action_complete(int32_t action, int32_t error_code) = 0;
    virtual void publish_unit_alive() = 0;
    virtual void load_option(std::string config_file, std::string session) = 0;
    // ...existing code...
  };
}