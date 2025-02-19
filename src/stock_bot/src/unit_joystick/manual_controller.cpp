
#include "manual_controller.h"
#include "unit_joystick/key_map.h"

namespace frb
{
  ManualController::ManualController(std::function<void(const sensor_msgs::Joy msg)> joystick_publish_callback)
  {
    notify_joystick_msg = joystick_publish_callback;

    // button, axis 갯수 설정 : 매번 조회하는 overhead 피하기 위해서
    _button_count = to_int(JoyButton::End);
    _axis_count   = to_int(JoyStick::End);
  }

  ManualController::~ManualController() 
  { 

  }

  /**
  * @brief      sensor_msgs::Joy 메시지 초기화
  * @param[in]  sensor_msgs::Joy 초기화 시킬 메시지
  * @return     void
  * @note       timestamp, frame_id, axes, buttons 초기화
  * @attention  LeftTrigger, RightTrigger 값은 -1.0으로 초기화 해야 한다.
  *             XBOX Joystick 기본값
  */
  void ManualController::initialize_msg(sensor_msgs::Joy& msg)
  {
    msg.header.stamp    = ros::Time::now();
    msg.header.frame_id = "joy";
    msg.axes.resize(_axis_count, 0.0);         // 모든 축 값을 0.0으로 초기화
    msg.buttons.resize(_button_count, 0);       // 모든 버튼값을 0.0으로 초기화

    msg.axes[JoyKey::LeftTrigger] = -1.0;
    msg.axes[JoyKey::RightTrigger] = -1.0;

    return;
  }

  /**
  * @brief      주행 데이터 복사
  * @param[in]  const sensor_msgs::Joy& : 수신된 Joy 메시지 (원본)
  * @param[out] sensor_msgs::Joy&       : 복사할 Joy 메시지 (복사본)
  * @return     void
  * @note       
  */
  void ManualController::copy_driving_data(const sensor_msgs::Joy& msg, sensor_msgs::Joy& info)
  {
    info.axes[to_int(JoyStick::LeftVertical)] = msg.axes[to_int(JoyStick::LeftVertical)];
    if(info.axes[to_int(JoyStick::LeftVertical)] < -0.9)
    {
      info.axes[to_int(JoyStick::LeftVertical)] = -0.9;
    }
    else if(info.axes[to_int(JoyStick::LeftVertical)] > 0.9)
    {
      info.axes[to_int(JoyStick::LeftVertical)] = 0.9;
    }


    info.axes[to_int(JoyStick::LeftHorizontal)] = msg.axes[to_int(JoyStick::LeftHorizontal)];
    if(info.axes[to_int(JoyStick::LeftHorizontal)] < -0.9)
    {
      info.axes[to_int(JoyStick::LeftHorizontal)] = -0.9;
    }
    else if(info.axes[to_int(JoyStick::LeftHorizontal)] > 0.9)
    {
      info.axes[to_int(JoyStick::LeftHorizontal)] = 0.9;
    }


    return;
  }

  /**
  * @brief      조향 데이터 복사
  * @param[in]  const sensor_msgs::Joy& : 수신된 Joy 메시지 (원본)
  * @param[out] sensor_msgs::Joy&       : 복사할 Joy 메시지 (복사본)
  * @return     void
  * @note       
  */
  void ManualController::copy_streering_data(const sensor_msgs::Joy& msg, sensor_msgs::Joy& info)
  {
    // info.buttons[to_int(JoyButton::FaceX)] = msg.buttons[to_int(JoyButton::FaceX)];
    // info.buttons[to_int(JoyButton::FaceB)] = msg.buttons[to_int(JoyButton::FaceB)];
    return;
  }

  /**
  * @brief      리프팅 데이터 복사
  * @param[in]  const sensor_msgs::Joy& : 수신된 Joy 메시지 (원본)
  * @param[out] sensor_msgs::Joy&       : 복사할 Joy 메시지 (복사본)
  * @return     void
  * @note       
  */
  void ManualController::copy_lifting_data(const sensor_msgs::Joy& msg, sensor_msgs::Joy& info)
  {
    info.axes[to_int(JoyStick::RightVertical)] = msg.axes[to_int(JoyStick::RightVertical)];
    return;
  }



  /**
  * @brief      수신된 Joy 메시지 처리
  * @param[in]  const sensor_msgs::Joy 수신된 Joy 메시지
  * @return     int32_t : 처리 결과
  * @note       JoyStickXbox::publish_joystick_msg() callback을 통해 message publish 해야 한다.
  */
  int32_t ManualController::receive_data(const sensor_msgs::Joy msg)
  {
    if(notify_joystick_msg == nullptr) return -1;

    // joystick msg 선언 및 초기화.
    sensor_msgs::Joy info;
    initialize_msg(info);
    
    switch(get_control_type(msg))
    {
      case ManualControlType::Duplicate:                                  break;    // safety button 중복
      case ManualControlType::Driving:    copy_driving_data(msg, info);   break;    // 주행 처리
      case ManualControlType::Steering:   copy_streering_data(msg, info); break;    // Steering 처리
      case ManualControlType::Lifting:    copy_lifting_data(msg, info);   break;    // Lifting 처리
      case ManualControlType::None:                                       break;    // 아무런 동작이 없다.
      default:                                                            break;     
    }

    notify_joystick_msg(info);
    
    return 0;
  }

  /**
  * @brief      조이스틱 제어 타입 확인
  * @param[in]  const sensor_msgs::Joy : 수신된 Joy 메시지
  * @return     ManualControlType : 조이스틱 제어 타입
  * @note       
  */
  ManualControlType ManualController::get_control_type(const sensor_msgs::Joy& msg)
  {
    if(check_duplicate(msg))
    {
      return ManualControlType::Duplicate;
    }
    
    if(msg.buttons[JoyKey::LeftBumper] == 1)
    {
      return ManualControlType::Driving;
    }
    else if(msg.buttons[JoyKey::RightBumper] == 1)
    {
      return ManualControlType::Steering;
    }
    else if(msg.axes[JoyKey::LeftTrigger] == 1.0 && msg.axes[JoyKey::RightTrigger] == 1.0)
    {
      return ManualControlType::Lifting;
    }
    else
    {
      return ManualControlType::None;
    }
  }

  /**
  * @brief      안전을 위해 중복 조작이 들어가지 않는지 체크
  * @param[in]  const sensor_msgs::Joy : 수신된 Joy 메시지
  * @return     bool : 중복 조작 여부
  * @attention  Trigger버튼의 경우 양쪽 모두가 눌려야 Lift 조작을 하므로 카운팅에 조심       
  */
  bool ManualController::check_duplicate(const sensor_msgs::Joy& msg)
  {
    int safety_count = 0;
    if(msg.buttons[JoyKey::LeftBumper] == 1)  safety_count++;
    if(msg.buttons[JoyKey::RightBumper] == 1) safety_count++;
    if(msg.axes[JoyKey::LeftTrigger] == 1.0 || msg.axes[JoyKey::RightTrigger] == 1.0) safety_count++;

    if(safety_count > 1)
    {
      return true;
    }
    return false;
  }
}