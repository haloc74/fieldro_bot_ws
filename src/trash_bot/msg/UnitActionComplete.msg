
## 각 구성 unit이 요청된 동작을 완료 시킨면 발생되는 메세지

time  time_stamp        # 발행시간
int32 receive_object    # 수신객체    (unit_index.h)
int32 action_object     # 동작 객체   (unit_index.h)
int32 complete_action   # 완료 동작   (unit_action_index.h)
int32 error_code        # Error-Code  (error_code.h) 