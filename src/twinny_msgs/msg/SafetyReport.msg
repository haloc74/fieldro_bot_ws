Header header

int8 MODE_NORMAL=0
int8 MODE_OSSD_MUTE_MOVE=1
int8 MODE_MANUAL_MOVE=2
int8 MODE_EMERGENCY_STOP=-1
int8 MODE_PROTECTIVE_STOP=-2
int8 MODE_EXTERNAL_STOP=-3

int8 mode

bool estop_switch_status
bool sto_status
bool ossd_front_status
bool ossd_rear_status
bool reset_switch_toggle
bool manual_move_switch_status
bool external_stop_status
bool lidar_power_status

uint8 MCU_WATCHDOG_NORMAL=0
uint8 MCU_WATCHDOG_ALARM=1
uint8 MCU_WATCHDOG_FAULT=2

uint8 mcu_watchdog_status

bool fault_detected

uint8 FAULT_EMERGENCY_SW_FAULT=1
uint8 FAULT_STO_FAULT=2
uint8 FAULT_OSSD_FRONT=3
uint8 FAULT_OSSD_REAR=4
uint8 FAULT_LIDAR_FRONT=5
uint8 FAULT_LIDAR_REAR=6
uint8 fault_safety_function

uint8 BOARD_FAULT_BIT_MCU_MASTER=1
uint8 BOARD_FAULT_BIT_MCU_SLAVE=2
uint8 BOARD_FAULT_BIT_CAN_MASTER=3
uint8 BOARD_FAULT_BIT_CAN_SLAVE=4
uint8 BOARD_FAULT_BIT_SYNC=5
uint8 BOARD_FAULT_BIT_POWER_MASTER=6
uint8 BOARD_FAULT_BIT_POWER_SLAVE=7
uint8 fault_board

uint8 MCU_FAULT_BIT_CPU=1
uint8 MCU_FAULT_BIT_RAM=2
uint8 MCU_FAULT_BIT_FLASH=3
uint8 MCU_FAULT_BIT_GPIO=4
uint8 MCU_FAULT_BIT_DMA=5
uint8 MCU_FAULT_BIT_NVIC=6
uint8 MCU_FAULT_BIT_WDG=7
uint8 MCU_FAULT_BIT_CAN=8
uint8[2] fault_mcu
