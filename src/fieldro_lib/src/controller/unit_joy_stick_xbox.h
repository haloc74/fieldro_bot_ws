
#include "controller/unit_joy_stick_xbox.h"

namespace frb
{
  /**
   * @brief 생성자: 기본 설정 로드 및 초기화
   * 
   * ROS 파라미터를 로드하고, Publisher를 초기화합니다.
   * 이 시점에서는 아직 조이스틱 연결을 시도하지 않습니다.
   **/
  JoystickXbox::JoystickXbox() : is_connected_(false), should_run_(false), joy_fd_(-1)
  {
    loadParameters();
    validateParameters();
    joy_pub_ = nh_.advertise<sensor_msgs::Joy>("joy", 1);
  }

  /**
   * @brief 소멸자: 모든 리소스 정리
   * 
   * 실행 중인 쓰레드를 정상적으로 종료하고
   * 열려있는 파일 디스크립터를 닫습니다.
  **/
  JoystickXbox::~JoystickXbox()
  {
    stop();
  }

  /**
   * @brief 조이스틱 노드 실행 시작
   * 
   * 타이머를 시작하고 조이스틱 이벤트 처리 쓰레드를 생성합니다.
   * 이 시점부터 실제 조이스틱 입력 처리가 시작됩니다.
   */
  void JoystickXbox::start()
  {
    should_run_ = true;
    
    // 주기적인 상태 발행을 위한 타이머 설정
    publish_timer_ = nh_.createTimer(
        ros::Duration(1.0/autorepeat_rate_),
        &JoystickXbox::publishTimerCallback,
        this
    );

    // 비동기 이벤트 처리를 위한 쓰레드 시작
    joystick_thread_ = std::thread(&JoystickXbox::joystickEventLoop, this);
  }

  /**
   * @brief 조이스틱 노드 실행 종료
   * 
   * 실행 중인 쓰레드를 안전하게 종료하고
   * 모든 리소스를 정리합니다.
   */
  void JoyStickXbox::stop()
  {
    should_run_ = false;
    if(joystick_thread_.joinable())
    {
      joystick_thread_.join();
    }
    if(joy_fd_ >= 0)
    {
      close(joy_fd_);
      joy_fd_ = -1;
    }
    publish_timer_.stop();
  }

  /**
   * @brief ROS 파라미터 로드
   * 
   * 조이스틱 장치 경로, 데드존, 발행 주기 등의
   * 설정값을 ROS 파라미터 서버에서 로드합니다.
   */
  void JoystickXbox::loadParameters()
  {
    ros::NodeHandle private_nh("~");
    private_nh.param<std::string>("dev", joy_dev_, "/dev/input/js0");
    private_nh.param<double>("deadzone", deadzone_, 0.05);
    private_nh.param<double>("autorepeat_rate", autorepeat_rate_, 20.0);
  }

  /**
   * @brief 파라미터 유효성 검사
   * 
   * 로드된 파라미터들이 유효한 범위 내에 있는지 확인하고,
   * 필요한 경우 자동으로 보정합니다.
   */  
  void JoystickXbox::validateParameters()
  {
    if(deadzone_ >= 1.0)
    {
      ROS_WARN("데드존 값이 1.0 이상입니다. 0.9로 제한합니다.");
      deadzone_ = 0.9;
    }
    if(deadzone_ < 0)
    {
      ROS_WARN("데드존 값이 음수입니다. 0으로 설정합니다.");
      deadzone_ = 0;
    }
    if(autorepeat_rate_ < 0)
    {
      ROS_WARN("자동반복 주기가 음수입니다. 0으로 설정합니다.");
      autorepeat_rate_ = 0;
    }
  }

  /**
   * @brief 데드존 적용
   * 
   * @param value 원래 축 값 (-32767 ~ 32767)
   * @return double 데드존이 적용된 정규화된 값 (-1.0 ~ 1.0)
   * 
   * 조이스틱 축 값에 데드존을 적용하여 미세한 떨림을 제거하고
   * -1.0에서 1.0 사이의 값으로 정규화합니다.
   */
  void JoystickXbox::applyDeadzone(double value)
  {
    double normalized = value / 32767.0;
    
    if(fabs(normalized) < deadzone_)
    {
      return 0.0;
    }
    
    return (normalized - (normalized > 0 ? deadzone_ : -deadzone_)) / (1.0 - deadzone_);
  }

  /**
   * @brief 조이스틱 장치 열기
   * 
   * @return bool 연결 성공 여부
   * 
   * 조이스틱 장치를 비동기 모드로 열고,
   * 연결 상태를 관리합니다.
   */
  bool JoystickXbox::openJoystick()
  {
      joy_fd_ = open(joy_dev_.c_str(), O_RDONLY | O_NONBLOCK);
      if(joy_fd_ == -1)
      {
        if(is_connected_)
        {
          ROS_ERROR("조이스틱 연결이 끊어졌습니다: %s", joy_dev_.c_str());
          is_connected_ = false;
        }
        return false;
      }

      if(!is_connected_)
      {
        ROS_INFO("조이스틱이 연결되었습니다: %s", joy_dev_.c_str());
        ROS_INFO("설정: 데드존=%f, 자동반복률=%fHz", deadzone_, autorepeat_rate_);
        is_connected_ = true;
      }
      return true;
  }  

  /**
   * @brief 조이스틱 이벤트 처리 루프
   * 
   * 별도의 쓰레드에서 실행되며, 조이스틱 이벤트를
   * 지속적으로 감지하고 처리합니다.
   */
  void JoyStickXbox::joystickEventLoop()
  {
    while(should_run_ && ros::ok())
    {
      if(joy_fd_ < 0 && !openJoystick())
      {
        ros::Duration(1.0).sleep();
        continue;
      }

      js_event event;
      int bytes = read(joy_fd_, &event, sizeof(event));

      if(bytes == sizeof(event))
      {
        processJoystickEvent(event);
      }
      else if(bytes == -1 && errno != EAGAIN)
      {
        close(joy_fd_);
        joy_fd_ = -1;
        is_connected_ = false;
      }

      std::this_thread::sleep_for(std::chrono::milliseconds(1));
    }
  }

  /**
   * @brief 조이스틱 이벤트 처리
   * 
   * @param event 조이스틱 이벤트
   * 
   * 버튼 또는 축 이벤트를 구분하여 적절한 처리 함수로 전달합니다.
   */
  void JoyStickXbox::processJoystickEvent(const js_event& event)
  {
    if(event.type & JS_EVENT_BUTTON)
    {
      processButtonEvent(event);
    }
    else if(event.type & JS_EVENT_AXIS)
    {
      processAxisEvent(event);
    }
  }

  /**
   * @brief 버튼 이벤트 처리
   * 
   * @param event 조이스틱 이벤트
   * 
   * 버튼 상태를 업데이트하고, 필요한 경우 버튼 배열을 확장합니다.
   */
  void JoyStickXbox::processButtonEvent(const js_event& event)
  {
    if(event.number >= joy_msg_.buttons.size())
    {
      joy_msg_.buttons.resize(event.number + 1, 0);
    }
    joy_msg_.buttons[event.number] = event.value;
  }

  /**
   * @brief 축 이벤트 처리
   * 
   * @param event 조이스틱 이벤트
   * 
   * 축 값을 업데이트하고, 데드존을 적용합니다.
   * 필요한 경우 축 배열을 확장합니다.
   */
  void JoyStickXbox::processAxisEvent(const js_event& event)
  {
    if(event.number >= joy_msg_.axes.size())
    {
      joy_msg_.axes.resize(event.number + 1, 0);
    }
    joy_msg_.axes[event.number] = applyDeadzone(event.value);
  }

  /**
   * @brief 타이머 콜백 - 조이스틱 상태 발행
   * 
   * @param event 타이머 이벤트 (사용하지 않음)
   * 
   * 설정된 주기로 현재 조이스틱 상태를 ROS 메시지로 발행합니다.
   */
  void JoyStickXbox::publishTimerCallback(const ros::TimerEvent&)
  {
    if(is_connected_)
    {
      joy_msg_.header.stamp = ros::Time::now();
      joy_pub_.publish(joy_msg_);
    }
  }          

}