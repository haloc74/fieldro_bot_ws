Header header

float64 current_factor=0.1

uint8 ALARM=0
uint8 CTRL_FAIL=1
uint8 OVER_VOLT=2
uint8 OVER_TEMP=3
uint8 OVER_LOAD=4
uint8 HALL_FAIL=5
uint8 INV_VEL=6
uint8 STALL=7

uint16 motor_driver_mode

uint16 left_status
uint16 right_status
uint8 left_NMT_status
uint8 right_NMT_status

int16 left_current
int16 right_current
int16 left_peak_current
int16 right_peak_current

uint8 motor_error_flag

string left_drive_bridge_status
string left_drive_protection_status
string left_system_protection_status
string left_drive_system_status1

string right_drive_bridge_status
string right_drive_protection_status
string right_system_protection_status
string right_drive_system_status1

bool drive_fault_flag

uint16 DRIVE_INTERNAL_ERROR = 1
uint16 SHORT_CIRCUIT = 2
uint16 CURRENT_OVERSHOOT = 4
uint16 UNDER_VOLTAGE = 8
uint16 OVER_VOLTAGE = 16
uint16 DRIVE_OVER_TEMPERATURE = 32
uint16 INVALID_HALL_STATE = 64
uint16 MOTOR_OVER_TEMPERATURE = 128
uint16 PHASE_DECTION_FAULT = 256
uint16 FEEDBACK_SENSOR_ERROR = 512
uint16 NODE_GUARDING = 1024

uint16 drive_fault_status