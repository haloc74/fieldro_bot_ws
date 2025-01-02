std_msgs/Header header


string UNKNOWN = unknown
string PPS_O = pps_o
string PPS_C = pps_c
string VL = vl
string type

uint8 START_MODE = 0
uint8 STOP_MODE = 1
uint8 PAUSE_MODE = 2
# uint8 ERROR_MODE = 3
uint8 mode

#uint8 DISABLE_STATE = 0
#uint8 ENABLE_STATE = 1
#uint8 WARNING_STATE = 2
#uint8 PROCESSING_STATE = 3
 
uint8 READY_STATE = 10 #구동중이 아닐때, (STOP이거나 PAUSE mode일시에는 이걸로 고정)
uint8 PROCESSING_STATE = 11 #DISABLE_STATE, PROCESSING_STATE, 아직 스테이션을 못찾음
uint8 FOUND_STATE = 12 # 스테이션을 찾았음
uint8 LOST_STATE = 13 # 스테이션을 찾았었으나(FOUND_STATE), 도중에 실패함. 이때 station_pose는 가장 마지막에 찾은 스테이션 정보가 입력됨.
#uint8 FOUND_STABLE_STATE = 12 #ENABLE_STATE 스테이션을 잘 찾았음
#uint8 FOUND_UNSTABLE_STATE = 13 #WARNING_STATE 스테이션을 찾았는데 좀 불안한 경우
uint8 ERROR_STATE = 15 # 언제나 존재, 알고리즘 내부에서 문제갸 터진 경우. 초기화 필요/
uint8 state

geometry_msgs/Pose2D station_pose
geometry_msgs/Pose2D reliability # station_pose의 +- 오차 범위를 나타낸다. 알 수 없는 경우 -1.0

string extra_field
