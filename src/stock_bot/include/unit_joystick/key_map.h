
#pragma once

#include <stdint.h>

namespace frb
{
  enum JoyKey
  {
    LeftStick_Horizontal = 0,
    LeftStick_Vertical,
    RightStick_Horizontal,
    RightStick_Vertical,
    RightTrigger,
    LeftTrigger,
    DPad_Horizontal,
    DPad_Vertical,
    JoyKey_Axix_End,

    FaceA = 0,
    FaceB,
    Button2,
    FaceX,
    FaceY,
    Button5,
    LeftBunmper,     // 왼쪽   상단 Turn 버튼
    RightBumper,     // 오른쪽 상단 Turn 버튼
    Button8,
    Button9,
    Btn_Back,
    Btn_Start,
    JoyKey_Button_End,
  };

  // class KeyMap
  // {
  // public:
  //   KeyMapping() {}
  //   ~KeyMapping() {}

  // protected:
  //   double  _axis[JoyKey_Axix_End];
  //   int32_t _buttons[JoyKey_Button_End];

  //   void initialize();

  //   bool is_action_possible();
    

  // };
}