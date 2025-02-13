
#pragma once

#include <stdint.h>
#include <fieldro_lib/helper/enum_template.h>

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
    JoyKey_Axis_End,

    FaceA = 0,
    FaceB,
    Button2,
    FaceX,
    FaceY,
    Button5,
    LeftBumper,       // 왼쪽   상단 Turn 버튼
    RightBumper,      // 오른쪽 상단 Turn 버튼
    Button8,
    Button9,
    Btn_Back,
    Btn_Start,
    JoyKey_Button_End,
  };

  enum class JoyStick
  {
    LeftHorizontal = 0,
    LeftVertical,

    RightHorizontal,
    RightVertical,

    RightTrigger,
    LeftTrigger,

    DPadHorizontal,
    DPadVertical,

    End,
  };

  enum class JoyButton
  {
    FaceA = 0,
    FaceB,
    Push2,
    FaceX,
    FaceY,
    Push5,

    LeftBumper,
    RightBumper,
    Push8,
    Push9,    
    Back,
    Start,
    End,
  };
}