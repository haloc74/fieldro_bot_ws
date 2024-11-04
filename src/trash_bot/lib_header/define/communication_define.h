
#pragma once

namespace fieldro_bot
{
  enum class CommStatus
  {
    None,           // 없음
    Connect,        // 접속
    Disconnect,     // 연결 끊김
    Reconnect,      // 재접속 시도
    Error,          // 에러 (완전 끊김, 복구 불가)
    END,
  };

}