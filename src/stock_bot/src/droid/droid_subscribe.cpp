

#include "droid.h"
#include <fieldro_lib/helper/helper.h>
#include <fieldro_lib/log/log.h>
#include "package/unit_define.h"
#include "unit_joystick/key_map.h"

namespace frb
{
  /**
  * @brief      unit의 상태를 subscribe하는 함수
  * @param[in]  const fieldro_msgs::UnitStateMsg &msg : unit의 상태 정보
  * @return     void
  * @see        fieldro_msgs::UnitStateMsg
  *             int32 alive
  *             int32 []
  */
  void Droid::subscribe_unit_state(const fieldro_msgs::UnitStateMsg &msg)
  {
    switch(_state)
    {
    case frb::UnitState::Created:
      start_initialize_process(msg.alive);
      break;
    case frb::UnitState::Active:    break;
    case frb::UnitState::Ready:     break;
    case frb::UnitState::Busy:      break;
    case frb::UnitState::Normal:    break;
    case frb::UnitState::Error:     break;
    case frb::UnitState::End:       break;
    default:                                break;
    }

    return;
  }  

  /**
  /* @brief  		각 Unit의 동작 완료 상태를 받기 위한 callback 함수
  /* @param  		const omnibot_carry::UnitActionComplete : 동작 완료 message	
  /* @note      pending_sequence에 저장된 message는 action_complete message를 받아서 삭제된다. 
  /*            1. action_complete_msg의 action_object와 pending_sequence의 target_object가 일치할 경우
  /*            2. action_complete_msg의 action과 pending_sequence의 action이 일치할 경우
  /*            두 조건이 모두 만족할 경우 pending_sequence에서 삭제한다.

  /* @attention sequence번호를 이용한 처리를 생각해보자 병렬 프로그래밍시 문제가 발생 할 수 있다.
  */
  void Droid::subscribe_action_complete(const fieldro_msgs::UnitActionComplete &action_complete_msg)
  {
    std::lock_guard<std::mutex> lock(_lock);
    
    if(_pending_sequence.empty())    
    {
        log_msg(LogInfo, 0, "action_complete (extend) :" 
                + to_string(to_enum<frb::UnitName>(action_complete_msg.action_object)) 
                + " - "
                + to_string<frb::UnitAction>(action_complete_msg.complete_action));
      return;
    }

    for(auto it=_pending_sequence.begin(); it!=_pending_sequence.end(); it++)
    {
      if((*it)->target_object != action_complete_msg.action_object)   continue;
      if((*it)->action != action_complete_msg.complete_action)        continue;

      if(action_complete_msg.error_code != frb::to_int(Error::None))
      {
        log_msg(LogError, 
                action_complete_msg.error_code, 
                "action_fail : "+ 
                to_string(to_enum<frb::UnitName>((*it)->target_object)) + 
                " - " +
                to_string<frb::UnitAction>((*it)->action));

        // todo : action fail 처리
      }
      else
      {
        log_msg(LogInfo, 0, "action_complete : "+
        to_string<frb::UnitName>((*it)->target_object) + " - " +
        to_string<frb::UnitAction>((*it)->action));
        //unit_action_to_string(int_to_unit_action((*it)->action)));
      }
      _pending_sequence.erase(it);
      break;
    }

    // 모든 unit의 초기화가 완료되었을 경우 준비 상태로 전환 시킨다.
    all_unit_initialize_complete();
    return;
  }

  /**
  * @brief      switch report message를 수신하는 callback 함수
  * @param      const twinny_msgs::SwitchReport : switch report message
  * @return     void
  */
  void Droid::subscribe_switch_report(const twinny_msgs::SwitchReport Switch_Check)
  {
    if(Switch_Check.E_STOP_button == true)
    {
      // todo : E_STOP_button 이 눌렸을 때의 처리
    }
    else
    {
      // todo : E_STOP_button 이 눌리지 않았을 때의 처리
    }
  }

  /**
  * @brief      속도 제어 message를 수신하는 callback 함수
  * @param      const geometry_msgs::Twist& twist_msg : 속도 제어 message
  * @return     void
  * @attention  Motor의 회전은 RPM으로 제어가 되므로 
  *             속도를 rmp으로 변환 해야 하는 작업이 필요하다.       
  *             수동 모드 일 경우 자동제어 하면 안된다.
  */
  void Droid::subscribe_velocity_control(const geometry_msgs::Twist &twist_msg)
  {
    // 조이스틱 컨트롤 중에는 자동제어 하면 안된다.
    if(_joystick_control == 1)            return; 
    
    // todo : 자동 제어에서 Twinny message를 받아서 주행 처리 하자...
    
    return;
  }
  
  /**
  * @brief      IO signal message를 수신하는 callback 함수
  * @param[in]  const fieldro_msgs::IOSignal& msg : IO signal message
  * @return     void
  * @note       Droid object에서는 manual control을 위한 signal을 받아야 한다.
  * @attention  option을 통해 주행모드 변경을 할 수없다고 하면 변경 불가능
  */
  void Droid::subscribe_iosignal(const fieldro_msgs::IOSignal& msg)
  {
    if(!_is_driving_mode_changeable)    return;

    int32_t flag = (msg.signal_bit & 0x20);

    if(_joystick_control != flag)
    {
      _joystick_control = flag;
      log_msg(LogInfo, 0, "Driving Mode Changed : " + std::to_string(_joystick_control));
    }
    return;
  }

  /**
  * @brief      조이스틱 message를 수신하는 callback 함수
  * @param[in]  const sensor_msgs::Joy &joy_msg : 조이스틱 message
  * @return     void
  * @note       조이스틱 메세지는 발행전 복합동작에 대한 판단을 해서 보내주게 된다
  *             그래서 이곳에서는 안전장치 및 복합 동작에 대한 구분을 할 필요는 없다.
  * @attention  옵션을 통해 수동 조작 가능 여부 판단 해야 한다.
  *             수동 조작이 불가능하면 아무런 처리를 하지 않는다.  
  */
  void Droid::subscribe_joystick(const sensor_msgs::Joy &joy_msg)
  {
    if(_is_driving_mode_changeable == 0)  return;
    if(_joystick_control == 0)            return; 
    if(_state != frb::UnitState::Ready)   return;

    double propulsion_velocity = joy_msg.axes[to_int(JoyStick::LeftVertical)]*1.5;
    double steer_velocity      = joy_msg.axes[to_int(JoyStick::DPadHorizontal)]*0.6;
    double lift_velocity       = joy_msg.axes[to_int(JoyStick::RightVertical)];

    // 수동조작 message 발행
    publish_manual_control(propulsion_velocity, steer_velocity, lift_velocity);
    log_msg(LogInfo, 0, "Joystick Control : " + 
                        std::to_string(propulsion_velocity) + " - " + 
                        std::to_string(steer_velocity) + " - " +
                        std::to_string(lift_velocity));

    // 브레이크 버튼 처리                        
    int32_t cur_brake_button = joy_msg.buttons[to_int(JoyButton::FaceB)];   
    if(_prev_brake_button == 1 && cur_brake_button == 0)
    {
      _prev_brake ^= true;
      if(_prev_brake)
      {
        add_sequence(to_int(frb::UnitName::Driving), to_int(frb::UnitAction::Break), 0, "on");
        add_sequence(to_int(frb::UnitName::Signal), to_int(frb::UnitAction::Break), 0, "on");
      }
      else
      {
        add_sequence(to_int(frb::UnitName::Driving), to_int(frb::UnitAction::Break), 0, "off");
        add_sequence(to_int(frb::UnitName::Signal), to_int(frb::UnitAction::Break), 0, "off");
      }
      log_msg(LogInfo, 0, "Braking Changee : " + std::to_string(_prev_brake));
    }
    _prev_brake_button = cur_brake_button;

    // Brake Reset 처리
    int32_t cur_brake_reset_button = joy_msg.buttons[to_int(JoyButton::Back)];
    if(_prev_brake_reset_button == 1 && cur_brake_reset_button == 0)
    {
      add_sequence(to_int(frb::UnitName::Driving), to_int(frb::UnitAction::Reset), 0);
      log_msg(LogInfo, 0, "Brake Reset");
    }
    _prev_brake_reset_button = cur_brake_reset_button;
    
    // Light Button 처리
    int32_t cur_light_button = joy_msg.buttons[to_int(JoyButton::FaceY)];
    if(_prev_light_button == 1 && cur_light_button == 0)
    {
      _prev_light ^= true;
      if(_prev_light)
      {
        add_sequence(to_int(frb::UnitName::Signal), to_int(frb::UnitAction::Light), 0, "on");
      }
      else
      {
        add_sequence(to_int(frb::UnitName::Signal), to_int(frb::UnitAction::Light), 0, "off");
      }
      log_msg(LogInfo, 0, "Light Change : " + std::to_string(_prev_light));
    }
    _prev_light_button = cur_light_button;
                        
    return;
  }
}