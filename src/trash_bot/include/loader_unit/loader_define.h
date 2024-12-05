
#pragma once

namespace fieldro_bot
{
  enum class LoaderInit
  {
    None,
    WaitingForSignals,        // 초기 상태: 모든 센서 신호를 기다리는 중
    Ready,                    // 초기 센서 신화 수신 완료. 초기화 준비 완료
    LowLimitActiton,          // 하강 Limit 동작
    HighLimitActiton,         // 상승 Limit 동작
    HomeAction,               // 초기 위치로 이동
    Complete,                 // 초기화 완료
  };
}