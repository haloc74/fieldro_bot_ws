#pragma once

#include <ros/ros.h>
#include <mutex>
#include <map>


#include "define/unit_define.h"
#include "define/unit_state.h"
#include "define/unit_action_define.h"
#include "helper/thread_action_info.h"
#include "log/log.h"

#include "trash_bot/UnitControl.h"
  
namespace fieldro_bot
{
  class Unit
  {
  public:
    Unit(std::string config_file, std::string session);		            // 생성자  
    virtual ~Unit();		                                              // 소멸자

    ros::NodeHandle* get_node_handle();                               // 노드 핸들러 반환
    virtual bool is_shutdown();		                                    // 종료 여부
    virtual void update()                                        {}   // 업데이트
    virtual bool control(std::vector<std::string> command_list)  {}   // 컨트롤 함수(consol input을 이용한 control)

  private:
    ThreadActionInfo* _alive_thread;                                        // alive  thread 동작 정보
    bool              _shut_down;                                           // 종료 flag
    int32_t           _spinner_count;                                       // spinner count
    void load_unit_option(std::string config_file, std::string session);    // parent class(Unit) option load

  protected:
    std::mutex        _lock;		                      // 뮤텍스
    ros::NodeHandle*   _node_handle;                                        // 노드 핸들러
    ros::AsyncSpinner* _spinner;                      // 비동기 스피너
    ros::Subscriber   _subscribe_unit_action;         // unit action 명령을 수신하는 subscriber
    ros::Publisher    _publish_unit_action_complete;  // unit action 수행 완료를 publish 하는   publisher
    ros::Publisher    _publish_unit_alive;            // unit alive publish

    UnitName          _name;                          // unit 이름
    UnitState         _state;                         // unit 상태
    UnitAction        _action;                        // unit action

    ThreadActionInfo* _update_thread;                 // update thread 동작 정보
    std::map<int32_t, int32_t, std::string> _command; // command map

  protected:
    void publish_unit_alive();                                                      // unit alive publish
    void destroy();                                                                 // 객체 소멸 예약
    void log_msg(LogLevel level, int32_t error_code, const std::string& msg);       // 로그 메시지 출력

    virtual void publish_unit_action_complete(int32_t action, int32_t error_code);  // unit action complete publish
    virtual void subscribe_unit_action(const trash_bot::UnitControl& msg) {}        // unit action subscribe
    virtual void load_option(std::string config_file)                     {}        // unit child option load
  };



}