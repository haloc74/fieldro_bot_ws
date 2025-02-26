
#include "lift.h"

#include <fieldro_lib/helper/helper.h>
#include <fieldro_msgs/UnitActionComplete.h>
#include "unit_io/digital_in_define.h"

namespace frb
{
  Lift::Lift(std::string msg_space, std::string config_file, std::string session) 
          : Unit(msg_space, config_file, session)
  {
    load_option(config_file);           // option load     
    //initialize_signal_data();           // signal data 초기화

    // position data 초기화
    _fall_position   = INT32_MAX;
    _raise_position  = INT32_MAX;
    _middle_position = INT32_MAX;

    // sensor data중 loader와 관련된 곳만 마스킹
    // digital_in_define.h 참조
    _sensor_data_update_mask = 0x00;
    _sensor_data_update_mask |= (1 << (int)DISignal::LiftBottomSafe);
    _sensor_data_update_mask |= (1 << (int)DISignal::LiftTopSafe);


    //_name   = UnitName::Lift;
    _name = frb::to_string(frb::UnitName::Lift);
    _unit_index = to_int(UnitName::Lift);

    _action = UnitAction::None;
    _state  = frb::UnitState::Created;

    // unit action message 수신을 위한 subscriber 생성 및 link
    _subscribe_unit_action =
    _node_handle->subscribe(msg_space+"/unit_control", 100, &Lift::subscribe_unit_action, this);

    // unit action message 처리 결과 발송을 위한 publisher 생성 및 link
    _publish_unit_action_complete =
    _node_handle->advertise<fieldro_msgs::UnitActionComplete>(msg_space+"/action_complete", 10);

    // io signal message 수신을 위한 subscriber 생성 및 link
    // fieldro_msgs::IOSignal
    _subscribe_iosignal =
    _node_handle->subscribe(msg_space+"/io_signal", 10, &Lift::subscribe_iosignal, this);

    _subscribe_manual_control =
    _node_handle->subscribe(msg_space+"/manual_control", 10, &Lift::subscribe_manual_control, this);

    // spinn 구동 (생성은 Unit Class 담당)
    _spinner->start();
 
    // motor 객체 생성
    _motor = new ELD2_RS7020B(std::bind(&Lift::action_complete_notify, 
                                        this, 
                                        std::placeholders::_1),
                              std::bind(&Unit::log_msg, 
                                        this, 
                                        std::placeholders::_1, 
                                        std::placeholders::_2,
                                        std::placeholders::_3),
                              "config/lift.yaml");    

    // main update thread
    _update_thread = new ThreadActionInfo("config/lift.yaml", "main");
    _update_thread->_thread = std::thread(std::bind(&Lift::update, this));   
  }

  Lift::~Lift()
  {
    // motor 해제
    safe_delete(_motor);

    // main update thread 종료
    _update_thread->_active = false;
    safe_delete(_update_thread);
  }

  // virtual 
  void Lift::update()
  {
    while(_update_thread->_active)
    {
      // todo : motor update
      
      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_update_thread->_sleep));
    }
  }

  /**
  * @brief      lift 가동 범위 설정
  * @return     bool : 모든 가동 범위가 설정 되었는지 여부
  * @note       모든 가동 범위가 설정 되었다면 _state를 변경해서 실제 구동이 가능하도록 한다.
  */
  bool Lift::confirm_active_position()
  {
    if(_action == UnitAction::Fall && _fall_position == INT32_MAX)
    {
      _fall_position = _motor->get_motor_position() + _safety_distance;
    }
    else if(_action == UnitAction::Raise && _raise_position == INT32_MAX)
    {
      _raise_position = _motor->get_motor_position() - _safety_distance;
    }
    else
    {
      log_msg(LogWarning, 0, "Warning : position initialize failed"+
                            std::to_string(to_int(_action))+
                            " - " + std::to_string(_fall_position) +
                            " - " + std::to_string(_raise_position)+
                            + " - " + __FILE__);
    }

    if(_fall_position != INT32_MAX && _raise_position != INT32_MAX)
    {
      _middle_position  = (_fall_position + _raise_position) / 2;     // 중간 위치 설정
      _state = frb::UnitState::Normal;                        // lift 상태 변경
      return true;
    }
    return false;
  }

  /**
  * @brief      fall limit sensor가 on 되었을 경우 처리
  * @note       초기화 상태와 일반 상태를 구분해서 처리.
  * @attention  초기화 상태에서는 각 limit sensor를 가지고 위치를 인식하게 되므로 
  *             sensor가 on 되어도 에러 처리를 하지 않는다.
  */
  void Lift::fall_limit_sensor_on()
  {
    _motor->stop_motor();                                 // motor stop                       

    log_msg(LogInfo, 0, "fall limit sensor on");
    log_msg(LogInfo, 0, "state : " + to_string(_state) + " action : " + to_string(_action));

    if(_state == UnitState::Created && _action == UnitAction::Fall)
    {
      publish_unit_action_complete(to_int(_action), 0);   // 동작 완료 보고
      confirm_active_position();                          // 위치 설정 보고 
      _action = UnitAction::None;                         // action release
    }
    else
    {
      if(_state != UnitState::Created)
      {
        log_msg(LogError, 0, "Error : fall limit sensor on" + std::to_string(__LINE__));
        _state = frb::UnitState::Error;
      }      
    }
    return;
  }

  /**
  * @brief      raise limit sensor가 on 되었을 경우 처리
  * @note       초기화 상태와 일반 상태를 구분해서 처리.
  * @attention  초기화 상태에서는 각 limit sensor를 가지고 위치를 인식하게 되므로
  *             sensor가 on 되어도 에러 처리를 하지 않는다.
  */
  void Lift::raise_limit_sensor_on()
  {
    _motor->stop_motor();

    log_msg(LogInfo, 0, "raise limit sensor on");
    log_msg(LogInfo, 0, "state : " + to_string(_state) + " action : " + to_string(_action));

    if(_state == UnitState::Created && _action == UnitAction::Raise)
    {
      Unit::publish_unit_action_complete(to_int(_action), 0); // 동작 완료 보고
      confirm_active_position();                              // 위치 설정 보고 
      _action = frb::UnitAction::None;                // action release         
    }
    else
    {
      if(_state != UnitState::Created)
      {
        log_msg(LogError, 0, "Error : raise limit sensor on" + std::to_string(__LINE__));
        _state = frb::UnitState::Error;
      }
    }
    return;
  }

  /**
  * @brief      sensor data가 update 되었고 On 되었는지 확인
  * @param[in]  int32_t index : sensor index
  * @param[in]  int64_t update_bit : 사전 체크된 update flag bit
  * @param[in]  int64_t sensor_bit : topic으로 전달 된 sensor data
  * @return     해당 bit가 update 되었고 On 되었는지 여부
  * @attention  update되었으나 Off 되는건 의미가 없음       
  */
  bool Lift::is_sensor_update_and_on(int32_t index, int64_t sensor_bit)
  {
    // 이전 sensor data와 비교하여 변동된 비트만 추출
    int64_t changed_bits = sensor_bit ^ _prev_sensor_data;

    return (changed_bits & (1 << index)) && (sensor_bit & (1 << index));
  }  

  /**
  * @brief      loader의 동작 가능 여부 확인
  * @return     bool : 동작 가능 여부
  */
  bool Lift::is_controlable()
  {
    bool ret = true;
    
    if(_action != frb::UnitAction::None)  ret = false;  // 동작 상태
    if(_state == frb::UnitState::Error)   ret = false;  // 에러 상태

    if(!ret)
    {
      log_msg(LogInfo, 0, std::string("Lift is not controlable : ") + 
                          std::string("state : ") + frb::to_string(_state) + 
                          std::string("action :") + frb::to_string(_action) +
                          std::string("code line : ") + std::to_string(__LINE__));      
    }

    return ret;
  }  

  /**
  * @brief      lift option load
  * @param[in]  std::string config_file : lift option 설정 파일
  * @note       
  */
  void Lift::load_option(std::string config_file)
  {
    try
    {
      std::ifstream yaml_file(config_file);
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      _safety_distance  = yaml["main"]["safety_distance"].as<int32_t>();
      _action_rpm       = yaml["main"]["action_rpm"].as<int32_t>();
      _action_timeout   = yaml["main"]["action_timeout"].as<int32_t>();
      _joystick_scale   = yaml["main"]["joystick_scale"].as<double>();
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

    if(_action_rpm < 50 || _action_rpm > 500)
    {
      log_msg(LogWarning, 0, "Warning : action rpm is out of range"+
                            std::to_string(_action_rpm)+
                            " - " + __FILE__);
      _action_rpm = 100;
    }

    log_msg(LogInfo, 0, "Lift : option load complete");
    log_msg(LogInfo, 0, "_safety_distance : "+std::to_string(_safety_distance));
    log_msg(LogInfo, 0, "_action_rpm : "+std::to_string(_action_rpm));
    log_msg(LogInfo, 0, "_action_timeout : "+std::to_string(_action_timeout));
    log_msg(LogInfo, 0, "---");    
    log_msg(LogInfo, 0, "");    
    return;
  }
}