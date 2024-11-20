
#include "observer_unit/unit_observer.h"
#include "helper/helper.h"
#include "log/log.h"

namespace fieldro_bot
{
  UnitObserver::UnitObserver()
  {
    _shut_down = false;
    _node_handle = new ros::NodeHandle();       // node handler 생성

    // unit_alive_info 초기화 
    _unit_alive_info = std::vector<UnitAliveInfo*>();
    _unit_alive_info.clear();
    for(int i = 0; i < static_cast<int>(fieldro_bot::Unit::End); i++)
    {
      _unit_alive_info.push_back(new UnitAliveInfo(i));
    }

    // unit alive subscribing
    _subscribe_unit_alive = _node_handle->subscribe("trash_bot/UnitAliveMsg", 100, &UnitObserver::subscribe_unit_alive, this);

    // unit control message 수신을 위한 subscriber 생성 및 link
    _subscribe_unit_control = _node_handle->subscribe("trash_bot/unit_control", 100, &UnitObserver::subscribe_unit_control, this);    

    // unit state publishing
    _publish_units_state = _node_handle->advertise<trash_bot::UnitStateMsg>("trash_bot/UnitStateMsg", 100);

    // update timer 생성 (50 Hz로 update 함수 호출)
//    _update_interval = 1.0/50.0;
//    _update_timer = _node_handle->createTimer(ros::Duration(_update_interval), &UnitObserver::update, this);

    _last_update_time = ros::Time::now();

    // spinner 생성 및 구동
    _spinner = new ros::AsyncSpinner(1);
    _spinner->start();

    // main thread
    _thread_info = new ThreadActionInfo("config/observer.yaml", "main");
    _thread_info->_active = true;
    _thread_info->_thread = std::thread(std::bind(&UnitObserver::update, this));    

  }

  UnitObserver::~UnitObserver()
  {
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

  void UnitObserver::system_finish()
  {
    _shut_down = true;
    LOG->add_log(fieldro_bot::Unit::System, fieldro_bot::LogLevel::Info, 0, "Observer Finish Set");
  } 


  /**
  * @brief      units의 상태를 업데이트 하는 함수
  * @note       unit들의 상태에 대하여 정기적인 update를 한다.
  */
  void UnitObserver::update()
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
  bool UnitObserver::update_units_alive_value()
  {
    int32_t new_alive_state = 0;
    for(size_t i=0; i<_unit_alive_info.size(); i++) 
    {
      if (_unit_alive_info[i]->alive_check()) 
      {
        new_alive_state |= (1 << i);
      }
    }

    if(_unit_alive != new_alive_state)
    {
      _unit_alive = new_alive_state;
      return true;
    }
    return false;
  }

  /**
  * @brief      unit 상태를 수신하는 callback 함수
  * @param[in]  const trash_bot::UnitStateMsg &msg : unit 상태 메시지
  * @note       unit의 상태가 이전과 달라졌다면 즉시 update 한다.
  */
  void UnitObserver::subscribe_unit_alive(const trash_bot::UnitAliveMsg &msg)
  {
    int32_t index = msg.index;
    int32_t state = msg.state;

    if (index < 0 || index >= _unit_alive_info.size())
    {
      ROS_ERROR("Invalid unit index : %d", index);
      return;
    }

    // unit의 상태가 이전과는 뭔가 달라짐
    if(_unit_alive_info[index]->update(state))
    {
      // unit 상태 변경에 따른 즉각적인 publishing
      publish_unit_state(false);
    }
    return;
  }

  /**
  * @brief      unit의 상태를 publishing 하는 함수
  * @param[in]  bool time_check_flag : update interval을 체크할지 여부
  * @note       
  */
  void UnitObserver::publish_unit_state(bool time_check_flag)
  {
    if(time_check_flag && !is_update_interval())
    {
      return;
    }

    trash_bot::UnitStateMsg msg;

    msg.alive = _unit_alive;
    msg.states.clear();
    
    for(auto &unit_state_info : _unit_alive_info)
    {
      msg.states.push_back(unit_state_info->get_state());
    }
    _publish_units_state.publish(msg);
    _last_update_time = ros::Time::now();

    return;
  }

  /**
  * @brief      업데이트 주기를 확인하는 함수
  * @note       
  */
  bool UnitObserver::is_update_interval()
  {
    if((ros::Time::now() - _last_update_time).toSec() < _update_interval)
    {
      return false;
    }
    return true;
  }

/**
  * @brief      unit control message를 수신하는 callback 함수
  * @param[in]  unit_control_msg : main control node에서 전달되는 unit control message
  * @return     void
  * @attention  target이 signal이 아닌 메세지는 무시한다.
  * @note       
  */
  void UnitObserver::subscribe_unit_control(const trash_bot::UnitControl& unit_control_msg)
  {
    // target이 signal이 아닌 메세지는 무시한다. 
    fieldro_bot::Unit unit = int_to_unit(unit_control_msg.target_object);

    if(unit != fieldro_bot::Unit::Observer && 
       unit != fieldro_bot::Unit::All)      return;

    // 요청된 action에 따른 처리
    fieldro_bot::UnitAction action = int_to_unit_action(unit_control_msg.action);

    switch(action)
    {       
    case fieldro_bot::UnitAction::None:
      LOG->add_log(fieldro_bot::Unit::Signal, fieldro_bot::LogLevel::Error, 0, "Unit Action None");
      break;

    case fieldro_bot::UnitAction::Init:
//      _state =  static_cast<int>(fieldro_bot::UnitState::Ready);
//      publish_unit_action_complete(unit_action_to_int(action), error_to_int(fieldro_bot::Error::None));
      break;

    case fieldro_bot::UnitAction::Finish:  
      system_finish();
      break;

    case fieldro_bot::UnitAction::End:        
      break;

    default:                                  
      break;
    }
  }  
}