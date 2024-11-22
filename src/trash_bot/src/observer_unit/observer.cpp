
#include "observer_unit/observer.h"
#include "helper/helper.h"
#include "log/log.h"
#include <trash_bot/UnitActionComplete.h>

namespace fieldro_bot
{
  Observer::Observer()
  {
    _state              = fieldro_bot::UnitState::InitReady;  // unit 현재 상태  
    _node_handle        = new ros::NodeHandle();              // node handler 생성
    _shut_down          = false;                              // node 종료 flag
    _last_publish_time  = ros::Time::now();                   // 마지막 업데이트 시간
    _publish_interval   = 20;                                 // publish 주기 (20 ms)
    load_option();                                            // 옵션 로드

    // unit_alive_info 초기화 
    _unit_alive_info = std::vector<AliveInfo*>();
    _unit_alive_info.clear();
    for(int i = 0; i < static_cast<int>(fieldro_bot::Unit::End); i++)
    {
      _unit_alive_info.push_back(new AliveInfo(i));
    }

    // unit alive subscribing
    _subscribe_unit_alive = _node_handle->subscribe("trash_bot/UnitAliveMsg", 100, &Observer::subscribe_unit_alive, this);

    // unit control message 수신을 위한 subscriber 생성 및 link
    _subscribe_unit_control = _node_handle->subscribe("trash_bot/unit_control", 100, &Observer::subscribe_unit_control, this);    

    // unit state publishing
    _publish_units_state = _node_handle->advertise<trash_bot::UnitStateMsg>("trash_bot/UnitStateMsg", 100);

    // unit control message 처리 결과 발송을 위한 publisher 생성 및 link
    _publish_unit_action_complete = _node_handle->advertise<trash_bot::UnitActionComplete>("trash_bot/action_complete", 100);    

    // spinner 생성 및 구동
    _spinner = new ros::AsyncSpinner(1);
    _spinner->start();

    // main thread
    _thread_info = new ThreadActionInfo("config/observer.yaml", "main");
    _thread_info->_active = true;
    _thread_info->_thread = std::thread(std::bind(&Observer::update, this));    
  }

  Observer::~Observer()
  {
    // main thread 해제
    _thread_info->_active = false;
    safe_delete(_thread_info);

    // unit_alive_info 삭제
    for(auto &unit_alive_info : _unit_alive_info)
    {
      safe_delete(unit_alive_info);
    }
    _unit_alive_info.clear();

    // spinner 해제
    _spinner->stop();
    safe_delete(_spinner);

    // ros 해제
    _node_handle->shutdown();
    safe_delete(_node_handle);
  }

  /**
  * @brief      units의 상태를 업데이트 하는 함수
  * @note       unit들의 상태에 대하여 정기적인 update를 한다.
  */
  void Observer::update()
  {
    while(_thread_info->_active)
    {    
      // unit의 alive 상태를 업데이트
      update_units_alive_value();

      // unit 상태에 대한 정기적인 publishing
      publish_unit_state(true);

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_thread_info->_sleep));      
    }

    return;
  }

  /**
  * @brief      unit들의 alive 상태를 update
  * @return     변경된 상태가 있으면 true, 없으면 false
  */
  bool Observer::update_units_alive_value()
  {
    int32_t new_alive_state = 0;
    for(size_t i=0; i<_unit_alive_info.size(); i++) 
    {
      if(i == 0)    continue;     // None
      if(i == 2)    continue;     // Observer

      // alive 상태가 아니라면
      if (!_unit_alive_info[i]->alive_check()) 
      {
        new_alive_state |= (1 << i);
      }
    }

    if(_unit_alive != new_alive_state)
    {
      _unit_alive = new_alive_state;

      LOG->add_log(fieldro_bot::Unit::Observer, LogInfo, 0, "Unit Alive State Update : " + std::to_string(_unit_alive));

      return true;
    }
    return false;
  }

  /**
  * @brief  업데이트 주기를 확인하는 함수
  * @note   옵션으로 설정된 시간이 경과했는지 확인    
  */
  bool Observer::is_publish_interval()
  {
    if(((ros::Time::now() - _last_publish_time).toSec())*1000 < _publish_interval)
    {
      return false;
    }
    return true;
  }
  
  /**
  * @brief      옵션 로드 함수
  * @note       
  */
  void Observer::load_option()
  {
    try
    {
      // file open
      std::ifstream yaml_file("config/observer.yaml");
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      // 여러개의 object처리 할 필요가 있어 session_name으로 구분한다.
      _publish_interval = yaml["main"]["publish_interval"].as<int32_t>();
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