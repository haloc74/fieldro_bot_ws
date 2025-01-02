Header header

int32 command_id

int32 READY = 1
int32 RUNNING = 2
int32 ERROR = -99
int32 state

int32 NO_EVENT = 0
int32 GET_START = 1
int32 GET_STOP = 2

int32 FIND_STATION = 11
int32 FINISHED = 21

int32 BUMPER_ACTIVATED = 31
int32 BUMPER_RELEASED = 32

int32 RECOVERY_WORKING = 41

int32 FAIL_DUETO_NO_STATION = -1
int32 FAIL_DUETO_OVER_RECOVERY = -2
int32 FAIL_DUETO_LENGTH_ERROR = -3
int32 FAIL_DUETO_ANGLE_ERROR = -4

int32 ERROR_OCCUR = -99

int32 last_event

float64 final_x_error
float64 final_y_error
float64 final_theta_error