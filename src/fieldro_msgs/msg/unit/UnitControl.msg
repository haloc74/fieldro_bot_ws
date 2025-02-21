

# 각 Unit에게 동작 요청하는 메세지 

time  time_stamp        # 발행 시간 

##uint32 sequence         # 메세지 시퀀스 번호 - 0=응답필요없음,  0!=응답필요

int32 target_object     # 대상 객체 (H/W Index Enum, unit_index.h)
int32 action            # 명령 동작 Action Index , unit_action_index.h
string command          # 명령 문자열 (ex. "start", "stop", "reset", "pause", "resume")
