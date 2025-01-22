
#include <fieldro_lib/controller/unit_joy_stick_xbox.h>
#include <fieldro_lib/helper/helper.h>
 
namespace frb
{
  /**
  * @brief      기본 설정 로드 및 초기화
  * @note       생성자가 호출된 시점에서는 조이스틱 연결을 시도하지 않는다.
  */
  JoyStickXbox::JoyStickXbox(std::string config_file, std::string session) 
          : Unit(config_file, session)
  {
    _connected    = false;
  //  _should_run   = false;
    _file_discriptor       = -1;         // 파일 디스크립터 : 장치가 열리지 않는 상태로 초기화

    load_option(config_file);   // 옵션 로드

    //load_parameters();           // 파라미터 로드
    validate_parameters();       // 파라미터 유효성 검사

    _publish_joystick = _node_handler.advertise<sensor_msgs::Joy>("joy", 1);

//    _should_run = true;
    _update_thread  = new ThreadActionInfo(config_file, "main");
    _update_thread->_thread = std::thread(std::bind(&JoyStickXbox::update, this));

  }

  /**
  * @brief      소멸자
  * @note       실행중인 thread를 정상적으로 종료하고 열려있는 파일 디스크립터를 닫는다.
  */
  JoyStickXbox::~JoyStickXbox()
  {
    //stop();
    close_discriptor();

    _update_thread->_active = false;
    safe_delete(_update_thread);
  }

  void JoyStickXbox::update()
  {
    while(ros::ok() && _update_thread->_active)
    {
      // todo : 

      // 조이스틱 이벤트 처리 루프
      //event_process();
      read_file_discriptor();

      // joystick_msg 발행
      publish_joystick_msg();

      // thread Hz 싱크 및 독점 방지를 위한 sleep
      std::this_thread::sleep_for(std::chrono::milliseconds(_update_thread->_sleep));
    }
  }

  // /**
  // * @brief      조이스틱 노드 실행 시작
  // * @param[in]  void
  // * @return     void
  // * @attention  쓰레드를 생성하고 조이스틱 이벤트 처리를 시작한다.
  // *             Timer Event를 이용한 비동기 함수 이므로 사용에 주의
  // *             추후 이 부분에 대한 Refactoring이 필요하다.
  // */
  // void JoyStickXbox::start()
  // {
  //   _should_run = true;
    
  //   // 주기적인 상태 발행을 위한 타이머 설정
  //   _publish_timer = _node_handler.createTimer(
  //       ros::Duration(1.0/_autorepeat_rate),
  //       &JoyStickXbox::publish_timer_callback,
  //       this
  //   );

  //   // 비동기 이벤트 처리를 위한 쓰레드 시작
  //   _joystick_thread = std::thread(&JoyStickXbox::event_process, this);
  // }

  // /**
  // * @brief      조이스틱 노드 실행 종료
  // * @param[in]  void
  // * @return     void
  // * @note       실행중인 timer와 thread를 정상적으로 종료하고 파일 디스크립터를 닫는다.
  // */
  // void JoyStickXbox::stop()
  // {
  //   //_should_run = false;
  //   // if(_joystick_thread.joinable())
  //   // {
  //   //   _joystick_thread.join();
  //   // }

  //   if(_file_discriptor >= 0)
  //   {
  //     close(_file_discriptor);
  //     _file_discriptor = -1;
  //   }
  //   _connected = false;

  //   //_publish_timer.stop();
  // }

  

  /**
  * @brief      로드된 파라미터들을 확인하고 필요한 경우 보정
  * @return     void
  * @note       조이스틱 장치 경로, 데드존, 발행주기등의 설정값을 ROS 파라미터 서버에서 로드한다.
  *             launch 파일에서 다음과 같이 설정할 수 있다.
  *             <param name="dev" value="/dev/input/js1"/>
  *             <param name="deadzone" value="0.1"/>
  *             <param name="autorepeat_rate" value="30.0"/>
  */
  // void JoyStickXbox::load_parameters()
  // {
  //   // 함수 내에서만 사용할 node handler 생성
  //   ros::NodeHandle private_nh("~");

  //   // 파라미터 로드
  //   private_nh.param<std::string>("dev", _device_name, "/dev/input/js0");
  //   private_nh.param<double>("deadzone", _deadzone, 0.05);
  //   private_nh.param<double>("autorepeat_rate", _autorepeat_rate, 20.0);
  //   return;
  // }
  void JoyStickXbox::load_option(std::string config_file)
  {
    try
    {
      // file open
      std::ifstream yaml_file(config_file);
      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      // yaml 파일로부터 조이스틱 디바이스 이름 로드
      _device_name = yaml["device"].as<std::string>();

      // yaml 파일로부터 데드존 값 로드
      _deadzone = yaml["deadzone"].as<double>();

      // // yaml 파일로부터 자동반복 주기 로드
      // _autorepeat_rate = yaml["autorepeat_rate"].as<double>();
    }
    catch(const std::exception& e)
    {
      ROS_ERROR("JoyStickXbox::load_option() : %s", e.what());
    }
  }

  /**
  * @brief      로드된 파라미터들을 확인하고 필요한 경우 보정
  * @return     void
  * @note       
  */
  void JoyStickXbox::validate_parameters()
  {
    if(_deadzone >= 1.0)
    {
      //ROS_WARN("데드존 값이 1.0 이상입니다. 0.9로 제한합니다.");
      _deadzone = 0.9;
    }

    if(_deadzone < 0)
    {
      //ROS_WARN("데드존 값이 음수입니다. 0으로 설정합니다.");
      _deadzone = 0;
    }

    // if(_autorepeat_rate < 0)
    // {
    //   //ROS_WARN("자동반복 주기가 음수입니다. 0으로 설정합니다.");
    //   _autorepeat_rate = 0;
    // }
    return;
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
  double JoyStickXbox::apply_deadzone(double value)
  {
    double normalized = value / 32767.0;
    
    if(fabs(normalized) < _deadzone)
    {
      return 0.0;
    }
    
    return (normalized - (normalized > 0 ? _deadzone : -_deadzone)) / (1.0 - _deadzone);
  }

  /**
  * @brief      조이스틱 장치 열기
  * @param[in]  void
  * @return     bool : 연결 성공 여부
  * @note       조이스틱 장치를 비동기 모드로 열고, 연결 상태를 관리한다.
  */  
  bool JoyStickXbox::open_discriptor()
  {
    _file_discriptor = open(_device_name.c_str(), O_RDONLY | O_NONBLOCK);
    
    if(_file_discriptor == -1)
    {
      if(_connected)
      {
        ROS_ERROR("조이스틱 연결이 끊어졌습니다: %s", _device_name.c_str());
        _connected = false;
      }
      return false;
    }

    if(!_connected)
    {
      ROS_INFO("조이스틱이 연결되었습니다: %s", _device_name.c_str());
      //ROS_INFO("설정: 데드존=%f, 자동반복률=%fHz", _deadzone, _autorepeat_rate);
      _connected = true;
    }
    return true;
  }  

  /**
  * @brief      조이스틱 이벤트 처리 루프
  * @param[in]  void
  * @return     void
  * @note       별도의 thread에서 실행되며, 조이스틱 이벤트를 지속적으로 감지하고 처리한다.
  * @attention  EAGAIN 과 EWOULDBLOCK message가 동일한 system도 있고 아닌 경우도 있다.
  */  
  void JoyStickXbox::read_file_discriptor()
  {
    //while(_should_run && ros::ok())
    // while(ros::ok())
    // {
      if(_file_discriptor < 0 && !open_discriptor())
      {
        ros::Duration(1.0).sleep();
        return;
      }

      js_event event;
      int bytes = read(_file_discriptor, &event, sizeof(event));

      if(bytes == sizeof(event))
      {
        joystick_event(event);
      }
      else if(bytes == -1)
      {
        switch(errno)
        {
        case EAGAIN:                                                       break;
        case EIO:     ROS_ERROR("Joystick IO Error");            close_discriptor();  break;
        case EBADF:   ROS_ERROR("Joystick Bad File Descriptor"); close_discriptor();  break;
        case EINVAL:  ROS_ERROR("Joystick Invalid Argument");    close_discriptor();  break;
        default:      ROS_ERROR("Joystick Unknown Error");       close_discriptor();  break;
        }
      }
      else
      {
        ROS_WARN("조이스틱 이벤트 Read Fail : %d", bytes);
        close_discriptor();
      }
      std::this_thread::sleep_for(std::chrono::milliseconds(1));
    //}
  }

  /**
  * @brief      조이스틱 닫기
  * @param[in]  void
  * @return     void
  * @note       
  */
  void JoyStickXbox::close_discriptor()
  {
    if(_file_discriptor < 0)   return;

    close(_file_discriptor);

    _file_discriptor    = -1;
    _connected = false;

    return;
  }

  /**
  * @brief      조이스틱 이벤트 처리
  * @param[in]  const js_event& event : 조이스틱 이벤트
  * @return     void
  * @note       버튼 또는 축 이벤트를 구분하여 적절한 처리 함수로 전달
  */
  void JoyStickXbox::joystick_event(const js_event& event)
  {
    if(event.type & JS_EVENT_BUTTON)
    {
      button_event(event);
    }
    else if(event.type & JS_EVENT_AXIS)
    {
      axis_event(event);
    }
  }

  /**
  * @brief      버튼 이벤트 처리
  * @param[in]  const js_event& event : 조이스틱 이벤트
  * @return     void
  * @note       버튼 상태를 업데이트하고 필요한 경우 버튼 배열을 확장한다.
  *             버튼 배열의 크기가 이벤트 번호보다 작을 경우 확장한다.
  *             어떤 조이스틱이냐에 따라서 버튼 갯수는 제각각인데 이를 고려.
  */
  void JoyStickXbox::button_event(const js_event& event)
  {
    if(event.number >= _msg.buttons.size())
    {
      _msg.buttons.resize(event.number + 1, 0);
    }

    _msg.buttons[event.number] = event.value;
  }

  /**
   * @brief 축 이벤트 처리
   * 
   * @param event 조이스틱 이벤트
   * 
   * 축 값을 업데이트하고, 데드존을 적용합니다.
   * 필요한 경우 축 배열을 확장합니다.
   */
  /**
  * @brief      축 이벤트 처리 
  * @param[in]  const js_event& event : 조이스틱 이벤트
  * @return     void
  * @note       축값을 업데이트하고 데드존을 적용, 필요한 경우 축 배열을 확장
  */
  void JoyStickXbox::axis_event(const js_event& event)
  {
    if(event.number >= _msg.axes.size())
    {
      _msg.axes.resize(event.number + 1, 0);
    }
    _msg.axes[event.number] = apply_deadzone(event.value);
  }

  /**
  * @brief      타이머 콜백 - 조이스틱 상태 발행
  * @param[in]  const ros::TimerEvent& event : 타이머 이벤트 (사용하지 않음)
  * @return     void
  * @note       
  */
  // void JoyStickXbox::publish_timer_callback(const ros::TimerEvent&)
  // {
  //   if(!_connected)    return;
    
  //   _msg.header.stamp = ros::Time::now();
  //   _publish_joystick.publish(_msg);

  //   return;
  // }
  void JoyStickXbox::publish_joystick_msg()
  {
    if(!_connected)    return;

    _msg.header.stamp = ros::Time::now();
    _publish_joystick.publish(_msg);
    return;
  }          

}