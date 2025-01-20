
#include "driving.h"
#include <fieldro_lib/define/driving_define.h>
#include <fieldro_msgs/UnitActionComplete.h>

#include "package/package_helper.h"
#include "package/unit_define.h"
  
 
namespace frb 
{
  Driving::Driving(std::string config_file, std::string session) 
          : Unit(config_file, session)
  {
    load_option(config_file);           // option load     

    _name       = frb::to_string(UnitName::Driving);
    _unit_index = frb::to_int(UnitName::Driving);

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

    _wait_actual_velocity = false;
    _prev_velocity_check_time = DBL_MAX;

    for(int i = 0; i < Wheel::End; i++)
    {
      _drive[i] = new ZlbDrive(std::bind(&Driving::action_complete_notify, 
                                          this, 
                                          std::placeholders::_1,
                                          std::placeholders::_2),
                                std::bind(&Driving::receive_actual_velocity,
                                          this,
                                          std::placeholders::_1,
                                          std::placeholders::_2),
                                std::bind(&Unit::log_msg, 
                                          this, 
                                          std::placeholders::_1, 
                                          std::placeholders::_2, 
                                          std::placeholders::_3),
                                config_file,
                                i);

      _actual_velocity[i].release();
    }

    // spinn 구동 (생성은 Unit Class 담당)
    _spinner->start();

    // main update thread
    _update_thread  = new ThreadActionInfo("config/driving.yaml", "main");
    _update_thread->_thread = std::thread(std::bind(&Driving::update, this));
  }

  Driving::~Driving()
  {
    // 객체 소멸 topic 메세지 전송을 위한 약간의 시간 대기
    
    for(int i = 0; i < Wheel::End; i++)
    {
      safe_delete(_drive[i]);
    }
    safe_delete(_driving_mode);

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

  /**
  * @brief      인자로 전달되는 Twist가 움직임이 있는지 없는지 확인하는 함수.
  * @param[in]  const geometry_msgs::Twist& twist_msg : 속도 제어 메세지
  * @return     bool : 움직임이 있는지 없는지 여부
  * @note       
  */
  bool Driving::has_movement(const geometry_msgs::Twist& twist_msg)
  {
    if(twist_msg.linear.x < frb::ThresHold::Movement)   return false;
    if(twist_msg.linear.y < frb::ThresHold::Movement)   return false;
    if(twist_msg.linear.z < frb::ThresHold::Movement)   return false;

    if(twist_msg.angular.x < frb::ThresHold::Rotation)  return false;
    if(twist_msg.angular.y < frb::ThresHold::Rotation)  return false;
    if(twist_msg.angular.z < frb::ThresHold::Rotation)  return false;

    return false;
  }

  void Driving::load_option(std::string config_file)
  {
    try
    {
      // file open
      std::ifstream yaml_file(config_file);
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      // 주행모드 객체 생성
      int32_t wheel_base  = yaml["motor"]["wheel_base"].as<int32_t>();
      int32_t track_width = yaml["motor"]["track_width"].as<int32_t>();

      _driving_mode = new AckermannDouble(wheel_base, track_width);

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

  void Driving::action_complete_notify(int32_t wheel, const Error error)
  {
    // wheel index에 해당하는 motor object로 부터 동작 완료 알림 콜백

    // wheel index < 0 
    // Driving 객체가 보내는것..

    // log_msg(LogInfo, 0, std::string("action complete notify : ") + 
    //                     frb::to_string(_action) + 
    //                     std::string(" - error code : ") + 
    //                     std::to_string(frb::to_int(error)));

    // if(error == Error::None)
    // {
    //   if(_action == UnitAction::None)   
    //   {
    //     // todo : action이 없는데 동작 완료가 되는 상황은 에러이다 !!!!!.
    //     log_msg(LogInfo, 0, "Loader : action is None !!! - What is this ???");
    //     return;
    //   }

    //   // 동작 완료 보고 (정상 완료)
    //   publish_unit_action_complete(to_int(_action), frb::to_int(Error::None));

    //   // action 초기화
    //   _action = frb::UnitAction::None;
    // }
    // else
    // {
    //   // 동작 완료 보고 (Error)
    //   publish_unit_action_complete(to_int(_action), frb::to_int(error));

    //   // error log 표기 
    //   log_msg(LogError, to_int(error), "Error : error code - " + std::to_string(to_int(error)));      

    //   // state 변경
    //   _state  = frb::UnitState::Error;
    // }    
  }

  /**
  * @brief      motor object로 부터 실제 속도 알림 콜백
  * @param[in]  int32_t wheel           : wheel index
  * @param[in]  WheelControlValue value : 실제 선속도, 각속도
  * @return     void
  * @note       
  */
  void Driving::receive_actual_velocity(int32_t wheel, WheelControlValue value)
  {
    if(!_wait_actual_velocity)            return;
    if(wheel < 0 || wheel >= Wheel::End)  return;
    // wheel index에 해당하는 motor object로 부터 제어 결과 알림 콜백
    // wheel index < 0 : 에러
    // wheel index >= Wheel::End : 

    // 1. Buffer에 저장
    _actual_velocity[wheel] = value;

    // 2. 4개가 모두 수신되지 않았다면 건너뛰기
    for(int i=0; i<Wheel::End; i++)
    {
      if(!_actual_velocity[i].has_value())  return;
    }

    double current_time = get_current_micro_time();
    double delta_time = current_time - _prev_velocity_check_time;


    // 3. 4개의 wheel에 모두 보고가 올라왔으면 
    //    - AckermannDouble::calculate_actual_twist() 로 실제 속도 계산
    //    - publish_act_velocity() 로 실제 속도 publish
    //    - Buffer 초기화
    geometry_msgs::Twist twist = _driving_mode->calculate_actual_twist(_actual_velocity, delta_time/1000.0);

    // 4. 마지막 속도 측정시간 업데이트
    _prev_velocity_check_time = current_time;

    // 5. 실제 속도 publish
    publish_act_velocity(twist);

    // 6. Buffer 초기화
    for(int i=0; i<Wheel::End; i++)
    {
      _actual_velocity[i].release();
    }
    _wait_actual_velocity = false;

    return;
  }
}
