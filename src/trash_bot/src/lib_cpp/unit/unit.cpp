#include "unit/unit.h"
#include "helper/helper.h"
#include <trash_bot/UnitActionComplete.h>
#include <trash_bot/UnitAliveMsg.h>


namespace fieldro_bot
{
  Unit::Unit(std::string config_file, std::string session)
  {
    // main option 로드
    load_unit_option(config_file, session);

    // command map 초기화
    _command.clear();

    // node handler 생성
    _node_handle = new ros::NodeHandle();

    // spinner 설정
    _spinner = new ros::AsyncSpinner(_spinner_count);

    // action complete publish 생성
    _publish_unit_action_complete =
    _node_handle->advertise<trash_bot::UnitActionComplete>("trash_bot/action_complete", 10);
  
    // alive publish 생성
    _publish_unit_alive =
    _node_handle->advertise<trash_bot::UnitAliveMsg>("trash_bot/UnitAliveMsg", 10);

    // alive thread 정보 생성
    _alive_thread = new ThreadActionInfo(config_file, "alive");
    _alive_thread->_active = true;
    _alive_thread->_thread = std::thread(std::bind(&Unit::publish_unit_alive, this));


    _update_thread  = nullptr;
    _shut_down      = false;

    // child class에서 해야 할일
    // 1. subscriber 생성
    // 2. update thread 생성
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

    if(_name == UnitName::System)
    {
      ros::shutdown();
      ros::waitForShutdown();      
    }
  }

  /**
  * @brief      객체 소멸 예약
  * @note       예약이 되면 object를 소유하고 있는 쪽에서 is_shutdown()을 확인하여 소멸시킨다.
  */
  void Unit::destroy()
  {
    _shut_down = true;
    return;
  }
  bool Unit::is_shutdown()
  {
    return _shut_down;
  }

  

  /**
  * @brief      unit action complete publish
  * @param[in]  int32_t action : 동작 완료된 action
  * @param[in]  int32_t error_code : 에러 코드
  * @param[out] void
  * @note       동작 완료 이후 별도의 처리가 필요할 경우 chile class에서 Unit::publish_unit_action_complete()
  *             를 명시적으로 호출 하고 추가 처리를 하자 !!!
  */
  void Unit::publish_unit_action_complete(int32_t action, int32_t error_code)
  {
    trash_bot::UnitActionComplete msg;

    msg.time_stamp      = ros::Time::now();
    msg.receive_object  = to_int(fieldro_bot::UnitName::System);
    msg.action_object   = to_int(_name);
    msg.complete_action = action;
    msg.error_code      = error_code;

    _publish_unit_action_complete.publish(msg);

    return;
  }

  
  void Unit::publish_unit_alive()
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

  void Unit::log_msg(LogLevel level, int32_t error_code, std::string msg)
  {
    LOG->add_log(_name, level, error_code, msg);
    return;
  }

  ros::NodeHandle* Unit::get_node_handle()
  {
    return _node_handle;
  }

  void Unit::load_unit_option(std::string config_file, std::string session)
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
}