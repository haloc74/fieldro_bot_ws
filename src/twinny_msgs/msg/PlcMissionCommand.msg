Header header

uint8 mission_mode

uint8 NO_COMMAND = 0
uint8 LOAD = 1
uint8 UNLOAD = 2
uint8 BATTERY_CHANGE = 3
uint8 PLC_RESET = 4

string workspace
string magazine_id

uint8 workspace_direction

uint8 LEFT = 1
uint8 RIGHT = 2

uint16 in_out_num

bool arm_move_flag