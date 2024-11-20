; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude SafetyReport.msg.html

(cl:defclass <SafetyReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (estop_switch_status
    :reader estop_switch_status
    :initarg :estop_switch_status
    :type cl:boolean
    :initform cl:nil)
   (sto_status
    :reader sto_status
    :initarg :sto_status
    :type cl:boolean
    :initform cl:nil)
   (ossd_front_status
    :reader ossd_front_status
    :initarg :ossd_front_status
    :type cl:boolean
    :initform cl:nil)
   (ossd_rear_status
    :reader ossd_rear_status
    :initarg :ossd_rear_status
    :type cl:boolean
    :initform cl:nil)
   (reset_switch_toggle
    :reader reset_switch_toggle
    :initarg :reset_switch_toggle
    :type cl:boolean
    :initform cl:nil)
   (manual_move_switch_status
    :reader manual_move_switch_status
    :initarg :manual_move_switch_status
    :type cl:boolean
    :initform cl:nil)
   (external_stop_status
    :reader external_stop_status
    :initarg :external_stop_status
    :type cl:boolean
    :initform cl:nil)
   (lidar_power_status
    :reader lidar_power_status
    :initarg :lidar_power_status
    :type cl:boolean
    :initform cl:nil)
   (mcu_watchdog_status
    :reader mcu_watchdog_status
    :initarg :mcu_watchdog_status
    :type cl:fixnum
    :initform 0)
   (fault_detected
    :reader fault_detected
    :initarg :fault_detected
    :type cl:boolean
    :initform cl:nil)
   (fault_safety_function
    :reader fault_safety_function
    :initarg :fault_safety_function
    :type cl:fixnum
    :initform 0)
   (fault_board
    :reader fault_board
    :initarg :fault_board
    :type cl:fixnum
    :initform 0)
   (fault_mcu
    :reader fault_mcu
    :initarg :fault_mcu
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SafetyReport (<SafetyReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<SafetyReport> is deprecated: use twinny_msgs-msg:SafetyReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:mode-val is deprecated.  Use twinny_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'estop_switch_status-val :lambda-list '(m))
(cl:defmethod estop_switch_status-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:estop_switch_status-val is deprecated.  Use twinny_msgs-msg:estop_switch_status instead.")
  (estop_switch_status m))

(cl:ensure-generic-function 'sto_status-val :lambda-list '(m))
(cl:defmethod sto_status-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:sto_status-val is deprecated.  Use twinny_msgs-msg:sto_status instead.")
  (sto_status m))

(cl:ensure-generic-function 'ossd_front_status-val :lambda-list '(m))
(cl:defmethod ossd_front_status-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:ossd_front_status-val is deprecated.  Use twinny_msgs-msg:ossd_front_status instead.")
  (ossd_front_status m))

(cl:ensure-generic-function 'ossd_rear_status-val :lambda-list '(m))
(cl:defmethod ossd_rear_status-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:ossd_rear_status-val is deprecated.  Use twinny_msgs-msg:ossd_rear_status instead.")
  (ossd_rear_status m))

(cl:ensure-generic-function 'reset_switch_toggle-val :lambda-list '(m))
(cl:defmethod reset_switch_toggle-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:reset_switch_toggle-val is deprecated.  Use twinny_msgs-msg:reset_switch_toggle instead.")
  (reset_switch_toggle m))

(cl:ensure-generic-function 'manual_move_switch_status-val :lambda-list '(m))
(cl:defmethod manual_move_switch_status-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:manual_move_switch_status-val is deprecated.  Use twinny_msgs-msg:manual_move_switch_status instead.")
  (manual_move_switch_status m))

(cl:ensure-generic-function 'external_stop_status-val :lambda-list '(m))
(cl:defmethod external_stop_status-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:external_stop_status-val is deprecated.  Use twinny_msgs-msg:external_stop_status instead.")
  (external_stop_status m))

(cl:ensure-generic-function 'lidar_power_status-val :lambda-list '(m))
(cl:defmethod lidar_power_status-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:lidar_power_status-val is deprecated.  Use twinny_msgs-msg:lidar_power_status instead.")
  (lidar_power_status m))

(cl:ensure-generic-function 'mcu_watchdog_status-val :lambda-list '(m))
(cl:defmethod mcu_watchdog_status-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:mcu_watchdog_status-val is deprecated.  Use twinny_msgs-msg:mcu_watchdog_status instead.")
  (mcu_watchdog_status m))

(cl:ensure-generic-function 'fault_detected-val :lambda-list '(m))
(cl:defmethod fault_detected-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fault_detected-val is deprecated.  Use twinny_msgs-msg:fault_detected instead.")
  (fault_detected m))

(cl:ensure-generic-function 'fault_safety_function-val :lambda-list '(m))
(cl:defmethod fault_safety_function-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fault_safety_function-val is deprecated.  Use twinny_msgs-msg:fault_safety_function instead.")
  (fault_safety_function m))

(cl:ensure-generic-function 'fault_board-val :lambda-list '(m))
(cl:defmethod fault_board-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fault_board-val is deprecated.  Use twinny_msgs-msg:fault_board instead.")
  (fault_board m))

(cl:ensure-generic-function 'fault_mcu-val :lambda-list '(m))
(cl:defmethod fault_mcu-val ((m <SafetyReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fault_mcu-val is deprecated.  Use twinny_msgs-msg:fault_mcu instead.")
  (fault_mcu m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SafetyReport>)))
    "Constants for message type '<SafetyReport>"
  '((:MODE_NORMAL . 0)
    (:MODE_OSSD_MUTE_MOVE . 1)
    (:MODE_MANUAL_MOVE . 2)
    (:MODE_EMERGENCY_STOP . -1)
    (:MODE_PROTECTIVE_STOP . -2)
    (:MODE_EXTERNAL_STOP . -3)
    (:MCU_WATCHDOG_NORMAL . 0)
    (:MCU_WATCHDOG_ALARM . 1)
    (:MCU_WATCHDOG_FAULT . 2)
    (:FAULT_EMERGENCY_SW_FAULT . 1)
    (:FAULT_STO_FAULT . 2)
    (:FAULT_OSSD_FRONT . 3)
    (:FAULT_OSSD_REAR . 4)
    (:FAULT_LIDAR_FRONT . 5)
    (:FAULT_LIDAR_REAR . 6)
    (:BOARD_FAULT_BIT_MCU_MASTER . 1)
    (:BOARD_FAULT_BIT_MCU_SLAVE . 2)
    (:BOARD_FAULT_BIT_CAN_MASTER . 3)
    (:BOARD_FAULT_BIT_CAN_SLAVE . 4)
    (:BOARD_FAULT_BIT_SYNC . 5)
    (:BOARD_FAULT_BIT_POWER_MASTER . 6)
    (:BOARD_FAULT_BIT_POWER_SLAVE . 7)
    (:MCU_FAULT_BIT_CPU . 1)
    (:MCU_FAULT_BIT_RAM . 2)
    (:MCU_FAULT_BIT_FLASH . 3)
    (:MCU_FAULT_BIT_GPIO . 4)
    (:MCU_FAULT_BIT_DMA . 5)
    (:MCU_FAULT_BIT_NVIC . 6)
    (:MCU_FAULT_BIT_WDG . 7)
    (:MCU_FAULT_BIT_CAN . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SafetyReport)))
    "Constants for message type 'SafetyReport"
  '((:MODE_NORMAL . 0)
    (:MODE_OSSD_MUTE_MOVE . 1)
    (:MODE_MANUAL_MOVE . 2)
    (:MODE_EMERGENCY_STOP . -1)
    (:MODE_PROTECTIVE_STOP . -2)
    (:MODE_EXTERNAL_STOP . -3)
    (:MCU_WATCHDOG_NORMAL . 0)
    (:MCU_WATCHDOG_ALARM . 1)
    (:MCU_WATCHDOG_FAULT . 2)
    (:FAULT_EMERGENCY_SW_FAULT . 1)
    (:FAULT_STO_FAULT . 2)
    (:FAULT_OSSD_FRONT . 3)
    (:FAULT_OSSD_REAR . 4)
    (:FAULT_LIDAR_FRONT . 5)
    (:FAULT_LIDAR_REAR . 6)
    (:BOARD_FAULT_BIT_MCU_MASTER . 1)
    (:BOARD_FAULT_BIT_MCU_SLAVE . 2)
    (:BOARD_FAULT_BIT_CAN_MASTER . 3)
    (:BOARD_FAULT_BIT_CAN_SLAVE . 4)
    (:BOARD_FAULT_BIT_SYNC . 5)
    (:BOARD_FAULT_BIT_POWER_MASTER . 6)
    (:BOARD_FAULT_BIT_POWER_SLAVE . 7)
    (:MCU_FAULT_BIT_CPU . 1)
    (:MCU_FAULT_BIT_RAM . 2)
    (:MCU_FAULT_BIT_FLASH . 3)
    (:MCU_FAULT_BIT_GPIO . 4)
    (:MCU_FAULT_BIT_DMA . 5)
    (:MCU_FAULT_BIT_NVIC . 6)
    (:MCU_FAULT_BIT_WDG . 7)
    (:MCU_FAULT_BIT_CAN . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyReport>) ostream)
  "Serializes a message object of type '<SafetyReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'estop_switch_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sto_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ossd_front_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ossd_rear_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_switch_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual_move_switch_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'external_stop_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lidar_power_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_watchdog_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fault_detected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_safety_function)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_board)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'fault_mcu))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyReport>) istream)
  "Deserializes a message object of type '<SafetyReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'estop_switch_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sto_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ossd_front_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ossd_rear_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reset_switch_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'manual_move_switch_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'external_stop_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lidar_power_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_watchdog_status)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fault_detected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_safety_function)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_board)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fault_mcu) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'fault_mcu)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyReport>)))
  "Returns string type for a message object of type '<SafetyReport>"
  "twinny_msgs/SafetyReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyReport)))
  "Returns string type for a message object of type 'SafetyReport"
  "twinny_msgs/SafetyReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyReport>)))
  "Returns md5sum for a message object of type '<SafetyReport>"
  "eda7dea195ffb58f6544c2c1d4766176")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyReport)))
  "Returns md5sum for a message object of type 'SafetyReport"
  "eda7dea195ffb58f6544c2c1d4766176")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyReport>)))
  "Returns full string definition for message of type '<SafetyReport>"
  (cl:format cl:nil "Header header~%~%int8 MODE_NORMAL=0~%int8 MODE_OSSD_MUTE_MOVE=1~%int8 MODE_MANUAL_MOVE=2~%int8 MODE_EMERGENCY_STOP=-1~%int8 MODE_PROTECTIVE_STOP=-2~%int8 MODE_EXTERNAL_STOP=-3~%~%int8 mode~%~%bool estop_switch_status~%bool sto_status~%bool ossd_front_status~%bool ossd_rear_status~%bool reset_switch_toggle~%bool manual_move_switch_status~%bool external_stop_status~%bool lidar_power_status~%~%uint8 MCU_WATCHDOG_NORMAL=0~%uint8 MCU_WATCHDOG_ALARM=1~%uint8 MCU_WATCHDOG_FAULT=2~%~%uint8 mcu_watchdog_status~%~%bool fault_detected~%~%uint8 FAULT_EMERGENCY_SW_FAULT=1~%uint8 FAULT_STO_FAULT=2~%uint8 FAULT_OSSD_FRONT=3~%uint8 FAULT_OSSD_REAR=4~%uint8 FAULT_LIDAR_FRONT=5~%uint8 FAULT_LIDAR_REAR=6~%uint8 fault_safety_function~%~%uint8 BOARD_FAULT_BIT_MCU_MASTER=1~%uint8 BOARD_FAULT_BIT_MCU_SLAVE=2~%uint8 BOARD_FAULT_BIT_CAN_MASTER=3~%uint8 BOARD_FAULT_BIT_CAN_SLAVE=4~%uint8 BOARD_FAULT_BIT_SYNC=5~%uint8 BOARD_FAULT_BIT_POWER_MASTER=6~%uint8 BOARD_FAULT_BIT_POWER_SLAVE=7~%uint8 fault_board~%~%uint8 MCU_FAULT_BIT_CPU=1~%uint8 MCU_FAULT_BIT_RAM=2~%uint8 MCU_FAULT_BIT_FLASH=3~%uint8 MCU_FAULT_BIT_GPIO=4~%uint8 MCU_FAULT_BIT_DMA=5~%uint8 MCU_FAULT_BIT_NVIC=6~%uint8 MCU_FAULT_BIT_WDG=7~%uint8 MCU_FAULT_BIT_CAN=8~%uint8[2] fault_mcu~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyReport)))
  "Returns full string definition for message of type 'SafetyReport"
  (cl:format cl:nil "Header header~%~%int8 MODE_NORMAL=0~%int8 MODE_OSSD_MUTE_MOVE=1~%int8 MODE_MANUAL_MOVE=2~%int8 MODE_EMERGENCY_STOP=-1~%int8 MODE_PROTECTIVE_STOP=-2~%int8 MODE_EXTERNAL_STOP=-3~%~%int8 mode~%~%bool estop_switch_status~%bool sto_status~%bool ossd_front_status~%bool ossd_rear_status~%bool reset_switch_toggle~%bool manual_move_switch_status~%bool external_stop_status~%bool lidar_power_status~%~%uint8 MCU_WATCHDOG_NORMAL=0~%uint8 MCU_WATCHDOG_ALARM=1~%uint8 MCU_WATCHDOG_FAULT=2~%~%uint8 mcu_watchdog_status~%~%bool fault_detected~%~%uint8 FAULT_EMERGENCY_SW_FAULT=1~%uint8 FAULT_STO_FAULT=2~%uint8 FAULT_OSSD_FRONT=3~%uint8 FAULT_OSSD_REAR=4~%uint8 FAULT_LIDAR_FRONT=5~%uint8 FAULT_LIDAR_REAR=6~%uint8 fault_safety_function~%~%uint8 BOARD_FAULT_BIT_MCU_MASTER=1~%uint8 BOARD_FAULT_BIT_MCU_SLAVE=2~%uint8 BOARD_FAULT_BIT_CAN_MASTER=3~%uint8 BOARD_FAULT_BIT_CAN_SLAVE=4~%uint8 BOARD_FAULT_BIT_SYNC=5~%uint8 BOARD_FAULT_BIT_POWER_MASTER=6~%uint8 BOARD_FAULT_BIT_POWER_SLAVE=7~%uint8 fault_board~%~%uint8 MCU_FAULT_BIT_CPU=1~%uint8 MCU_FAULT_BIT_RAM=2~%uint8 MCU_FAULT_BIT_FLASH=3~%uint8 MCU_FAULT_BIT_GPIO=4~%uint8 MCU_FAULT_BIT_DMA=5~%uint8 MCU_FAULT_BIT_NVIC=6~%uint8 MCU_FAULT_BIT_WDG=7~%uint8 MCU_FAULT_BIT_CAN=8~%uint8[2] fault_mcu~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'fault_mcu) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyReport>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyReport
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':estop_switch_status (estop_switch_status msg))
    (cl:cons ':sto_status (sto_status msg))
    (cl:cons ':ossd_front_status (ossd_front_status msg))
    (cl:cons ':ossd_rear_status (ossd_rear_status msg))
    (cl:cons ':reset_switch_toggle (reset_switch_toggle msg))
    (cl:cons ':manual_move_switch_status (manual_move_switch_status msg))
    (cl:cons ':external_stop_status (external_stop_status msg))
    (cl:cons ':lidar_power_status (lidar_power_status msg))
    (cl:cons ':mcu_watchdog_status (mcu_watchdog_status msg))
    (cl:cons ':fault_detected (fault_detected msg))
    (cl:cons ':fault_safety_function (fault_safety_function msg))
    (cl:cons ':fault_board (fault_board msg))
    (cl:cons ':fault_mcu (fault_mcu msg))
))
