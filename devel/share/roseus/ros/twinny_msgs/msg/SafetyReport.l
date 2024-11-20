;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::SafetyReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'SafetyReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::SAFETYREPORT")
  (make-package "TWINNY_MSGS::SAFETYREPORT"))

(in-package "ROS")
;;//! \htmlinclude SafetyReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_NORMAL*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MODE_NORMAL* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MODE_NORMAL* 0)
(intern "*MODE_OSSD_MUTE_MOVE*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MODE_OSSD_MUTE_MOVE* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MODE_OSSD_MUTE_MOVE* 1)
(intern "*MODE_MANUAL_MOVE*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MODE_MANUAL_MOVE* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MODE_MANUAL_MOVE* 2)
(intern "*MODE_EMERGENCY_STOP*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MODE_EMERGENCY_STOP* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MODE_EMERGENCY_STOP* -1)
(intern "*MODE_PROTECTIVE_STOP*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MODE_PROTECTIVE_STOP* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MODE_PROTECTIVE_STOP* -2)
(intern "*MODE_EXTERNAL_STOP*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MODE_EXTERNAL_STOP* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MODE_EXTERNAL_STOP* -3)
(intern "*MCU_WATCHDOG_NORMAL*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MCU_WATCHDOG_NORMAL* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MCU_WATCHDOG_NORMAL* 0)
(intern "*MCU_WATCHDOG_ALARM*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MCU_WATCHDOG_ALARM* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MCU_WATCHDOG_ALARM* 1)
(intern "*MCU_WATCHDOG_FAULT*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MCU_WATCHDOG_FAULT* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MCU_WATCHDOG_FAULT* 2)
(intern "*FAULT_EMERGENCY_SW_FAULT*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*FAULT_EMERGENCY_SW_FAULT* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*FAULT_EMERGENCY_SW_FAULT* 1)
(intern "*FAULT_STO_FAULT*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*FAULT_STO_FAULT* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*FAULT_STO_FAULT* 2)
(intern "*FAULT_OSSD_FRONT*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*FAULT_OSSD_FRONT* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*FAULT_OSSD_FRONT* 3)
(intern "*FAULT_OSSD_REAR*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*FAULT_OSSD_REAR* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*FAULT_OSSD_REAR* 4)
(intern "*FAULT_LIDAR_FRONT*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*FAULT_LIDAR_FRONT* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*FAULT_LIDAR_FRONT* 5)
(intern "*FAULT_LIDAR_REAR*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*FAULT_LIDAR_REAR* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*FAULT_LIDAR_REAR* 6)
(intern "*BOARD_FAULT_BIT_MCU_MASTER*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*BOARD_FAULT_BIT_MCU_MASTER* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*BOARD_FAULT_BIT_MCU_MASTER* 1)
(intern "*BOARD_FAULT_BIT_MCU_SLAVE*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*BOARD_FAULT_BIT_MCU_SLAVE* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*BOARD_FAULT_BIT_MCU_SLAVE* 2)
(intern "*BOARD_FAULT_BIT_CAN_MASTER*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*BOARD_FAULT_BIT_CAN_MASTER* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*BOARD_FAULT_BIT_CAN_MASTER* 3)
(intern "*BOARD_FAULT_BIT_CAN_SLAVE*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*BOARD_FAULT_BIT_CAN_SLAVE* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*BOARD_FAULT_BIT_CAN_SLAVE* 4)
(intern "*BOARD_FAULT_BIT_SYNC*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*BOARD_FAULT_BIT_SYNC* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*BOARD_FAULT_BIT_SYNC* 5)
(intern "*BOARD_FAULT_BIT_POWER_MASTER*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*BOARD_FAULT_BIT_POWER_MASTER* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*BOARD_FAULT_BIT_POWER_MASTER* 6)
(intern "*BOARD_FAULT_BIT_POWER_SLAVE*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*BOARD_FAULT_BIT_POWER_SLAVE* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*BOARD_FAULT_BIT_POWER_SLAVE* 7)
(intern "*MCU_FAULT_BIT_CPU*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MCU_FAULT_BIT_CPU* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MCU_FAULT_BIT_CPU* 1)
(intern "*MCU_FAULT_BIT_RAM*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MCU_FAULT_BIT_RAM* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MCU_FAULT_BIT_RAM* 2)
(intern "*MCU_FAULT_BIT_FLASH*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MCU_FAULT_BIT_FLASH* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MCU_FAULT_BIT_FLASH* 3)
(intern "*MCU_FAULT_BIT_GPIO*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MCU_FAULT_BIT_GPIO* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MCU_FAULT_BIT_GPIO* 4)
(intern "*MCU_FAULT_BIT_DMA*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MCU_FAULT_BIT_DMA* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MCU_FAULT_BIT_DMA* 5)
(intern "*MCU_FAULT_BIT_NVIC*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MCU_FAULT_BIT_NVIC* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MCU_FAULT_BIT_NVIC* 6)
(intern "*MCU_FAULT_BIT_WDG*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MCU_FAULT_BIT_WDG* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MCU_FAULT_BIT_WDG* 7)
(intern "*MCU_FAULT_BIT_CAN*" (find-package "TWINNY_MSGS::SAFETYREPORT"))
(shadow '*MCU_FAULT_BIT_CAN* (find-package "TWINNY_MSGS::SAFETYREPORT"))
(defconstant twinny_msgs::SafetyReport::*MCU_FAULT_BIT_CAN* 8)
(defclass twinny_msgs::SafetyReport
  :super ros::object
  :slots (_header _mode _estop_switch_status _sto_status _ossd_front_status _ossd_rear_status _reset_switch_toggle _manual_move_switch_status _external_stop_status _lidar_power_status _mcu_watchdog_status _fault_detected _fault_safety_function _fault_board _fault_mcu ))

(defmethod twinny_msgs::SafetyReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:estop_switch_status __estop_switch_status) nil)
    ((:sto_status __sto_status) nil)
    ((:ossd_front_status __ossd_front_status) nil)
    ((:ossd_rear_status __ossd_rear_status) nil)
    ((:reset_switch_toggle __reset_switch_toggle) nil)
    ((:manual_move_switch_status __manual_move_switch_status) nil)
    ((:external_stop_status __external_stop_status) nil)
    ((:lidar_power_status __lidar_power_status) nil)
    ((:mcu_watchdog_status __mcu_watchdog_status) 0)
    ((:fault_detected __fault_detected) nil)
    ((:fault_safety_function __fault_safety_function) 0)
    ((:fault_board __fault_board) 0)
    ((:fault_mcu __fault_mcu) (make-array 2 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _estop_switch_status __estop_switch_status)
   (setq _sto_status __sto_status)
   (setq _ossd_front_status __ossd_front_status)
   (setq _ossd_rear_status __ossd_rear_status)
   (setq _reset_switch_toggle __reset_switch_toggle)
   (setq _manual_move_switch_status __manual_move_switch_status)
   (setq _external_stop_status __external_stop_status)
   (setq _lidar_power_status __lidar_power_status)
   (setq _mcu_watchdog_status (round __mcu_watchdog_status))
   (setq _fault_detected __fault_detected)
   (setq _fault_safety_function (round __fault_safety_function))
   (setq _fault_board (round __fault_board))
   (setq _fault_mcu __fault_mcu)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:estop_switch_status
   (&optional __estop_switch_status)
   (if __estop_switch_status (setq _estop_switch_status __estop_switch_status)) _estop_switch_status)
  (:sto_status
   (&optional __sto_status)
   (if __sto_status (setq _sto_status __sto_status)) _sto_status)
  (:ossd_front_status
   (&optional __ossd_front_status)
   (if __ossd_front_status (setq _ossd_front_status __ossd_front_status)) _ossd_front_status)
  (:ossd_rear_status
   (&optional __ossd_rear_status)
   (if __ossd_rear_status (setq _ossd_rear_status __ossd_rear_status)) _ossd_rear_status)
  (:reset_switch_toggle
   (&optional __reset_switch_toggle)
   (if __reset_switch_toggle (setq _reset_switch_toggle __reset_switch_toggle)) _reset_switch_toggle)
  (:manual_move_switch_status
   (&optional __manual_move_switch_status)
   (if __manual_move_switch_status (setq _manual_move_switch_status __manual_move_switch_status)) _manual_move_switch_status)
  (:external_stop_status
   (&optional __external_stop_status)
   (if __external_stop_status (setq _external_stop_status __external_stop_status)) _external_stop_status)
  (:lidar_power_status
   (&optional __lidar_power_status)
   (if __lidar_power_status (setq _lidar_power_status __lidar_power_status)) _lidar_power_status)
  (:mcu_watchdog_status
   (&optional __mcu_watchdog_status)
   (if __mcu_watchdog_status (setq _mcu_watchdog_status __mcu_watchdog_status)) _mcu_watchdog_status)
  (:fault_detected
   (&optional __fault_detected)
   (if __fault_detected (setq _fault_detected __fault_detected)) _fault_detected)
  (:fault_safety_function
   (&optional __fault_safety_function)
   (if __fault_safety_function (setq _fault_safety_function __fault_safety_function)) _fault_safety_function)
  (:fault_board
   (&optional __fault_board)
   (if __fault_board (setq _fault_board __fault_board)) _fault_board)
  (:fault_mcu
   (&optional __fault_mcu)
   (if __fault_mcu (setq _fault_mcu __fault_mcu)) _fault_mcu)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _mode
    1
    ;; bool _estop_switch_status
    1
    ;; bool _sto_status
    1
    ;; bool _ossd_front_status
    1
    ;; bool _ossd_rear_status
    1
    ;; bool _reset_switch_toggle
    1
    ;; bool _manual_move_switch_status
    1
    ;; bool _external_stop_status
    1
    ;; bool _lidar_power_status
    1
    ;; uint8 _mcu_watchdog_status
    1
    ;; bool _fault_detected
    1
    ;; uint8 _fault_safety_function
    1
    ;; uint8 _fault_board
    1
    ;; uint8[2] _fault_mcu
    (* 1    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _mode
       (write-byte _mode s)
     ;; bool _estop_switch_status
       (if _estop_switch_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _sto_status
       (if _sto_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _ossd_front_status
       (if _ossd_front_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _ossd_rear_status
       (if _ossd_rear_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _reset_switch_toggle
       (if _reset_switch_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _manual_move_switch_status
       (if _manual_move_switch_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _external_stop_status
       (if _external_stop_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _lidar_power_status
       (if _lidar_power_status (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _mcu_watchdog_status
       (write-byte _mcu_watchdog_status s)
     ;; bool _fault_detected
       (if _fault_detected (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _fault_safety_function
       (write-byte _fault_safety_function s)
     ;; uint8 _fault_board
       (write-byte _fault_board s)
     ;; uint8[2] _fault_mcu
     (princ _fault_mcu s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; bool _estop_switch_status
     (setq _estop_switch_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sto_status
     (setq _sto_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ossd_front_status
     (setq _ossd_front_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ossd_rear_status
     (setq _ossd_rear_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reset_switch_toggle
     (setq _reset_switch_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _manual_move_switch_status
     (setq _manual_move_switch_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _external_stop_status
     (setq _external_stop_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lidar_power_status
     (setq _lidar_power_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _mcu_watchdog_status
     (setq _mcu_watchdog_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _fault_detected
     (setq _fault_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _fault_safety_function
     (setq _fault_safety_function (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _fault_board
     (setq _fault_board (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _fault_mcu
   (setq _fault_mcu (make-array 2 :element-type :char))
   (replace _fault_mcu buf :start2 ptr-) (incf ptr- 2)
   ;;
   self)
  )

(setf (get twinny_msgs::SafetyReport :md5sum-) "eda7dea195ffb58f6544c2c1d4766176")
(setf (get twinny_msgs::SafetyReport :datatype-) "twinny_msgs/SafetyReport")
(setf (get twinny_msgs::SafetyReport :definition-)
      "Header header

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

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :twinny_msgs/SafetyReport "eda7dea195ffb58f6544c2c1d4766176")


