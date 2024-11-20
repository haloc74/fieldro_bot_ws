; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude SafetyReportV2.msg.html

(cl:defclass <SafetyReportV2> (roslisp-msg-protocol:ros-message)
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
   (sto_feedback_status
    :reader sto_feedback_status
    :initarg :sto_feedback_status
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
   (external_stop_status
    :reader external_stop_status
    :initarg :external_stop_status
    :type cl:boolean
    :initform cl:nil)
   (reset_switch_usable_flag
    :reader reset_switch_usable_flag
    :initarg :reset_switch_usable_flag
    :type cl:boolean
    :initform cl:nil)
   (reset_switch_toggle
    :reader reset_switch_toggle
    :initarg :reset_switch_toggle
    :type cl:boolean
    :initform cl:nil)
   (manual_move_switch_usable_flag
    :reader manual_move_switch_usable_flag
    :initarg :manual_move_switch_usable_flag
    :type cl:boolean
    :initform cl:nil)
   (manual_move_switch_status
    :reader manual_move_switch_status
    :initarg :manual_move_switch_status
    :type cl:boolean
    :initform cl:nil)
   (lidar_front_warn
    :reader lidar_front_warn
    :initarg :lidar_front_warn
    :type cl:boolean
    :initform cl:nil)
   (lidar_rear_warn
    :reader lidar_rear_warn
    :initarg :lidar_rear_warn
    :type cl:boolean
    :initform cl:nil)
   (lidar_power_status
    :reader lidar_power_status
    :initarg :lidar_power_status
    :type cl:boolean
    :initform cl:nil)
   (mcu_watchdog_status_master
    :reader mcu_watchdog_status_master
    :initarg :mcu_watchdog_status_master
    :type cl:fixnum
    :initform 0)
   (mcu_watchdog_status_slave
    :reader mcu_watchdog_status_slave
    :initarg :mcu_watchdog_status_slave
    :type cl:fixnum
    :initform 0)
   (fault_detected
    :reader fault_detected
    :initarg :fault_detected
    :type cl:boolean
    :initform cl:nil)
   (fault_inconsitent_sequence_two_mcu
    :reader fault_inconsitent_sequence_two_mcu
    :initarg :fault_inconsitent_sequence_two_mcu
    :type cl:boolean
    :initform cl:nil)
   (fault_different_data_two_mcu
    :reader fault_different_data_two_mcu
    :initarg :fault_different_data_two_mcu
    :type cl:boolean
    :initform cl:nil)
   (fault_safety_function
    :reader fault_safety_function
    :initarg :fault_safety_function
    :type cl:fixnum
    :initform 0)
   (fault_mcu
    :reader fault_mcu
    :initarg :fault_mcu
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SafetyReportV2 (<SafetyReportV2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyReportV2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyReportV2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<SafetyReportV2> is deprecated: use twinny_msgs-msg:SafetyReportV2 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:mode-val is deprecated.  Use twinny_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'estop_switch_status-val :lambda-list '(m))
(cl:defmethod estop_switch_status-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:estop_switch_status-val is deprecated.  Use twinny_msgs-msg:estop_switch_status instead.")
  (estop_switch_status m))

(cl:ensure-generic-function 'sto_status-val :lambda-list '(m))
(cl:defmethod sto_status-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:sto_status-val is deprecated.  Use twinny_msgs-msg:sto_status instead.")
  (sto_status m))

(cl:ensure-generic-function 'sto_feedback_status-val :lambda-list '(m))
(cl:defmethod sto_feedback_status-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:sto_feedback_status-val is deprecated.  Use twinny_msgs-msg:sto_feedback_status instead.")
  (sto_feedback_status m))

(cl:ensure-generic-function 'ossd_front_status-val :lambda-list '(m))
(cl:defmethod ossd_front_status-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:ossd_front_status-val is deprecated.  Use twinny_msgs-msg:ossd_front_status instead.")
  (ossd_front_status m))

(cl:ensure-generic-function 'ossd_rear_status-val :lambda-list '(m))
(cl:defmethod ossd_rear_status-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:ossd_rear_status-val is deprecated.  Use twinny_msgs-msg:ossd_rear_status instead.")
  (ossd_rear_status m))

(cl:ensure-generic-function 'external_stop_status-val :lambda-list '(m))
(cl:defmethod external_stop_status-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:external_stop_status-val is deprecated.  Use twinny_msgs-msg:external_stop_status instead.")
  (external_stop_status m))

(cl:ensure-generic-function 'reset_switch_usable_flag-val :lambda-list '(m))
(cl:defmethod reset_switch_usable_flag-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:reset_switch_usable_flag-val is deprecated.  Use twinny_msgs-msg:reset_switch_usable_flag instead.")
  (reset_switch_usable_flag m))

(cl:ensure-generic-function 'reset_switch_toggle-val :lambda-list '(m))
(cl:defmethod reset_switch_toggle-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:reset_switch_toggle-val is deprecated.  Use twinny_msgs-msg:reset_switch_toggle instead.")
  (reset_switch_toggle m))

(cl:ensure-generic-function 'manual_move_switch_usable_flag-val :lambda-list '(m))
(cl:defmethod manual_move_switch_usable_flag-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:manual_move_switch_usable_flag-val is deprecated.  Use twinny_msgs-msg:manual_move_switch_usable_flag instead.")
  (manual_move_switch_usable_flag m))

(cl:ensure-generic-function 'manual_move_switch_status-val :lambda-list '(m))
(cl:defmethod manual_move_switch_status-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:manual_move_switch_status-val is deprecated.  Use twinny_msgs-msg:manual_move_switch_status instead.")
  (manual_move_switch_status m))

(cl:ensure-generic-function 'lidar_front_warn-val :lambda-list '(m))
(cl:defmethod lidar_front_warn-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:lidar_front_warn-val is deprecated.  Use twinny_msgs-msg:lidar_front_warn instead.")
  (lidar_front_warn m))

(cl:ensure-generic-function 'lidar_rear_warn-val :lambda-list '(m))
(cl:defmethod lidar_rear_warn-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:lidar_rear_warn-val is deprecated.  Use twinny_msgs-msg:lidar_rear_warn instead.")
  (lidar_rear_warn m))

(cl:ensure-generic-function 'lidar_power_status-val :lambda-list '(m))
(cl:defmethod lidar_power_status-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:lidar_power_status-val is deprecated.  Use twinny_msgs-msg:lidar_power_status instead.")
  (lidar_power_status m))

(cl:ensure-generic-function 'mcu_watchdog_status_master-val :lambda-list '(m))
(cl:defmethod mcu_watchdog_status_master-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:mcu_watchdog_status_master-val is deprecated.  Use twinny_msgs-msg:mcu_watchdog_status_master instead.")
  (mcu_watchdog_status_master m))

(cl:ensure-generic-function 'mcu_watchdog_status_slave-val :lambda-list '(m))
(cl:defmethod mcu_watchdog_status_slave-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:mcu_watchdog_status_slave-val is deprecated.  Use twinny_msgs-msg:mcu_watchdog_status_slave instead.")
  (mcu_watchdog_status_slave m))

(cl:ensure-generic-function 'fault_detected-val :lambda-list '(m))
(cl:defmethod fault_detected-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fault_detected-val is deprecated.  Use twinny_msgs-msg:fault_detected instead.")
  (fault_detected m))

(cl:ensure-generic-function 'fault_inconsitent_sequence_two_mcu-val :lambda-list '(m))
(cl:defmethod fault_inconsitent_sequence_two_mcu-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fault_inconsitent_sequence_two_mcu-val is deprecated.  Use twinny_msgs-msg:fault_inconsitent_sequence_two_mcu instead.")
  (fault_inconsitent_sequence_two_mcu m))

(cl:ensure-generic-function 'fault_different_data_two_mcu-val :lambda-list '(m))
(cl:defmethod fault_different_data_two_mcu-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fault_different_data_two_mcu-val is deprecated.  Use twinny_msgs-msg:fault_different_data_two_mcu instead.")
  (fault_different_data_two_mcu m))

(cl:ensure-generic-function 'fault_safety_function-val :lambda-list '(m))
(cl:defmethod fault_safety_function-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fault_safety_function-val is deprecated.  Use twinny_msgs-msg:fault_safety_function instead.")
  (fault_safety_function m))

(cl:ensure-generic-function 'fault_mcu-val :lambda-list '(m))
(cl:defmethod fault_mcu-val ((m <SafetyReportV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fault_mcu-val is deprecated.  Use twinny_msgs-msg:fault_mcu instead.")
  (fault_mcu m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SafetyReportV2>)))
    "Constants for message type '<SafetyReportV2>"
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
    (:FAULT_EXTERNAL_STOP . 7)
    (:FAULT_PROGRAM_TIMING . 8)
    (:FAULT_PC_BOARD_CHECK . 9)
    (:MCU_FAULT_NO_ERROR . 0)
    (:MCU_FAULT_CORE_TEST_FAIL . 1)
    (:MCU_FAULT_RAM_TEST_FAIL . 2)
    (:MCU_FAULT_FLASH_TEST_FAIL . 3)
    (:MCU_FAULT_PWR_SETTING_MISMATCH . 4)
    (:MCU_FAULT_RCC_SETTING_MISMATCH . 5)
    (:MCU_FAULT_GPIO_SETTING_MISMATCH . 6)
    (:MCU_FAULT_SYSCFG_SETTING_MISMATCH . 7)
    (:MCU_FAULT_DMA_SETTING_MISMATCH . 8)
    (:MCU_FAULT_NVIC_SETTING_MISMATCH . 9)
    (:MCU_FAULT_ADC_SETTING_MISMATCH . 10)
    (:MCU_FAULT_VREFBUF_SETTING_MISMATCH . 11)
    (:MCU_FAULT_WDG_SETTING_MISMATCH . 12)
    (:MCU_FAULT_SPI_SETTING_MISMATCH . 13)
    (:MCU_FAULT_CAN_SETTING_MISMATCH . 14)
    (:MCU_FAULT_POWERING_ERROR . 15)
    (:MCU_FAULT_CLOCKING_ERROR . 16)
    (:MCU_FAULT_DIAGNOSTIC_ERROR . 17)
    (:MCU_FAULT_CAN_ERROR . 18)
    (:MCU_FAULT_RESET_OCCURED . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SafetyReportV2)))
    "Constants for message type 'SafetyReportV2"
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
    (:FAULT_EXTERNAL_STOP . 7)
    (:FAULT_PROGRAM_TIMING . 8)
    (:FAULT_PC_BOARD_CHECK . 9)
    (:MCU_FAULT_NO_ERROR . 0)
    (:MCU_FAULT_CORE_TEST_FAIL . 1)
    (:MCU_FAULT_RAM_TEST_FAIL . 2)
    (:MCU_FAULT_FLASH_TEST_FAIL . 3)
    (:MCU_FAULT_PWR_SETTING_MISMATCH . 4)
    (:MCU_FAULT_RCC_SETTING_MISMATCH . 5)
    (:MCU_FAULT_GPIO_SETTING_MISMATCH . 6)
    (:MCU_FAULT_SYSCFG_SETTING_MISMATCH . 7)
    (:MCU_FAULT_DMA_SETTING_MISMATCH . 8)
    (:MCU_FAULT_NVIC_SETTING_MISMATCH . 9)
    (:MCU_FAULT_ADC_SETTING_MISMATCH . 10)
    (:MCU_FAULT_VREFBUF_SETTING_MISMATCH . 11)
    (:MCU_FAULT_WDG_SETTING_MISMATCH . 12)
    (:MCU_FAULT_SPI_SETTING_MISMATCH . 13)
    (:MCU_FAULT_CAN_SETTING_MISMATCH . 14)
    (:MCU_FAULT_POWERING_ERROR . 15)
    (:MCU_FAULT_CLOCKING_ERROR . 16)
    (:MCU_FAULT_DIAGNOSTIC_ERROR . 17)
    (:MCU_FAULT_CAN_ERROR . 18)
    (:MCU_FAULT_RESET_OCCURED . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyReportV2>) ostream)
  "Serializes a message object of type '<SafetyReportV2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'estop_switch_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sto_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sto_feedback_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ossd_front_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ossd_rear_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'external_stop_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_switch_usable_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_switch_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual_move_switch_usable_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual_move_switch_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lidar_front_warn) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lidar_rear_warn) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lidar_power_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_watchdog_status_master)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_watchdog_status_slave)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fault_detected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fault_inconsitent_sequence_two_mcu) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fault_different_data_two_mcu) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_safety_function)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fault_safety_function)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'fault_mcu))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyReportV2>) istream)
  "Deserializes a message object of type '<SafetyReportV2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'estop_switch_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sto_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sto_feedback_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ossd_front_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ossd_rear_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'external_stop_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reset_switch_usable_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reset_switch_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'manual_move_switch_usable_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'manual_move_switch_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lidar_front_warn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lidar_rear_warn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lidar_power_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_watchdog_status_master)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_watchdog_status_slave)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fault_detected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fault_inconsitent_sequence_two_mcu) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fault_different_data_two_mcu) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_safety_function)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fault_safety_function)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fault_mcu) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'fault_mcu)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyReportV2>)))
  "Returns string type for a message object of type '<SafetyReportV2>"
  "twinny_msgs/SafetyReportV2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyReportV2)))
  "Returns string type for a message object of type 'SafetyReportV2"
  "twinny_msgs/SafetyReportV2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyReportV2>)))
  "Returns md5sum for a message object of type '<SafetyReportV2>"
  "29c0534163876600d31359fed6020e8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyReportV2)))
  "Returns md5sum for a message object of type 'SafetyReportV2"
  "29c0534163876600d31359fed6020e8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyReportV2>)))
  "Returns full string definition for message of type '<SafetyReportV2>"
  (cl:format cl:nil "Header header~%~%int8 MODE_NORMAL=0~%int8 MODE_OSSD_MUTE_MOVE=1~%int8 MODE_MANUAL_MOVE=2~%int8 MODE_EMERGENCY_STOP=-1~%int8 MODE_PROTECTIVE_STOP=-2~%int8 MODE_EXTERNAL_STOP=-3~%~%int8 mode~%~%bool estop_switch_status~%bool sto_status~%bool sto_feedback_status~%bool ossd_front_status~%bool ossd_rear_status~%bool external_stop_status~%~%bool reset_switch_usable_flag~%bool reset_switch_toggle~%bool manual_move_switch_usable_flag~%bool manual_move_switch_status~%bool lidar_front_warn~%bool lidar_rear_warn~%bool lidar_power_status~%~%uint8 MCU_WATCHDOG_NORMAL=0~%uint8 MCU_WATCHDOG_ALARM=1~%uint8 MCU_WATCHDOG_FAULT=2~%~%uint8 mcu_watchdog_status_master~%uint8 mcu_watchdog_status_slave~%~%bool fault_detected~%~%bool fault_inconsitent_sequence_two_mcu~%bool fault_different_data_two_mcu~%~%uint8 FAULT_EMERGENCY_SW_FAULT=1~%uint8 FAULT_STO_FAULT=2~%uint8 FAULT_OSSD_FRONT=3~%uint8 FAULT_OSSD_REAR=4~%uint8 FAULT_LIDAR_FRONT=5~%uint8 FAULT_LIDAR_REAR=6~%uint8 FAULT_EXTERNAL_STOP=7~%uint8 FAULT_PROGRAM_TIMING=8~%uint8 FAULT_PC_BOARD_CHECK=9~%uint16 fault_safety_function~%~%uint8 MCU_FAULT_NO_ERROR=0~%uint8 MCU_FAULT_CORE_TEST_FAIL=1~%uint8 MCU_FAULT_RAM_TEST_FAIL=2~%uint8 MCU_FAULT_FLASH_TEST_FAIL=3~%uint8 MCU_FAULT_PWR_SETTING_MISMATCH=4~%uint8 MCU_FAULT_RCC_SETTING_MISMATCH=5~%uint8 MCU_FAULT_GPIO_SETTING_MISMATCH=6~%uint8 MCU_FAULT_SYSCFG_SETTING_MISMATCH=7~%uint8 MCU_FAULT_DMA_SETTING_MISMATCH=8~%uint8 MCU_FAULT_NVIC_SETTING_MISMATCH=9~%uint8 MCU_FAULT_ADC_SETTING_MISMATCH=10~%uint8 MCU_FAULT_VREFBUF_SETTING_MISMATCH=11~%uint8 MCU_FAULT_WDG_SETTING_MISMATCH=12~%uint8 MCU_FAULT_SPI_SETTING_MISMATCH=13~%uint8 MCU_FAULT_CAN_SETTING_MISMATCH=14~%uint8 MCU_FAULT_POWERING_ERROR=15~%uint8 MCU_FAULT_CLOCKING_ERROR=16~%uint8 MCU_FAULT_DIAGNOSTIC_ERROR=17~%uint8 MCU_FAULT_CAN_ERROR=18~%uint8 MCU_FAULT_RESET_OCCURED=255~%uint8[2] fault_mcu~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyReportV2)))
  "Returns full string definition for message of type 'SafetyReportV2"
  (cl:format cl:nil "Header header~%~%int8 MODE_NORMAL=0~%int8 MODE_OSSD_MUTE_MOVE=1~%int8 MODE_MANUAL_MOVE=2~%int8 MODE_EMERGENCY_STOP=-1~%int8 MODE_PROTECTIVE_STOP=-2~%int8 MODE_EXTERNAL_STOP=-3~%~%int8 mode~%~%bool estop_switch_status~%bool sto_status~%bool sto_feedback_status~%bool ossd_front_status~%bool ossd_rear_status~%bool external_stop_status~%~%bool reset_switch_usable_flag~%bool reset_switch_toggle~%bool manual_move_switch_usable_flag~%bool manual_move_switch_status~%bool lidar_front_warn~%bool lidar_rear_warn~%bool lidar_power_status~%~%uint8 MCU_WATCHDOG_NORMAL=0~%uint8 MCU_WATCHDOG_ALARM=1~%uint8 MCU_WATCHDOG_FAULT=2~%~%uint8 mcu_watchdog_status_master~%uint8 mcu_watchdog_status_slave~%~%bool fault_detected~%~%bool fault_inconsitent_sequence_two_mcu~%bool fault_different_data_two_mcu~%~%uint8 FAULT_EMERGENCY_SW_FAULT=1~%uint8 FAULT_STO_FAULT=2~%uint8 FAULT_OSSD_FRONT=3~%uint8 FAULT_OSSD_REAR=4~%uint8 FAULT_LIDAR_FRONT=5~%uint8 FAULT_LIDAR_REAR=6~%uint8 FAULT_EXTERNAL_STOP=7~%uint8 FAULT_PROGRAM_TIMING=8~%uint8 FAULT_PC_BOARD_CHECK=9~%uint16 fault_safety_function~%~%uint8 MCU_FAULT_NO_ERROR=0~%uint8 MCU_FAULT_CORE_TEST_FAIL=1~%uint8 MCU_FAULT_RAM_TEST_FAIL=2~%uint8 MCU_FAULT_FLASH_TEST_FAIL=3~%uint8 MCU_FAULT_PWR_SETTING_MISMATCH=4~%uint8 MCU_FAULT_RCC_SETTING_MISMATCH=5~%uint8 MCU_FAULT_GPIO_SETTING_MISMATCH=6~%uint8 MCU_FAULT_SYSCFG_SETTING_MISMATCH=7~%uint8 MCU_FAULT_DMA_SETTING_MISMATCH=8~%uint8 MCU_FAULT_NVIC_SETTING_MISMATCH=9~%uint8 MCU_FAULT_ADC_SETTING_MISMATCH=10~%uint8 MCU_FAULT_VREFBUF_SETTING_MISMATCH=11~%uint8 MCU_FAULT_WDG_SETTING_MISMATCH=12~%uint8 MCU_FAULT_SPI_SETTING_MISMATCH=13~%uint8 MCU_FAULT_CAN_SETTING_MISMATCH=14~%uint8 MCU_FAULT_POWERING_ERROR=15~%uint8 MCU_FAULT_CLOCKING_ERROR=16~%uint8 MCU_FAULT_DIAGNOSTIC_ERROR=17~%uint8 MCU_FAULT_CAN_ERROR=18~%uint8 MCU_FAULT_RESET_OCCURED=255~%uint8[2] fault_mcu~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyReportV2>))
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
     1
     1
     1
     1
     1
     1
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'fault_mcu) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyReportV2>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyReportV2
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':estop_switch_status (estop_switch_status msg))
    (cl:cons ':sto_status (sto_status msg))
    (cl:cons ':sto_feedback_status (sto_feedback_status msg))
    (cl:cons ':ossd_front_status (ossd_front_status msg))
    (cl:cons ':ossd_rear_status (ossd_rear_status msg))
    (cl:cons ':external_stop_status (external_stop_status msg))
    (cl:cons ':reset_switch_usable_flag (reset_switch_usable_flag msg))
    (cl:cons ':reset_switch_toggle (reset_switch_toggle msg))
    (cl:cons ':manual_move_switch_usable_flag (manual_move_switch_usable_flag msg))
    (cl:cons ':manual_move_switch_status (manual_move_switch_status msg))
    (cl:cons ':lidar_front_warn (lidar_front_warn msg))
    (cl:cons ':lidar_rear_warn (lidar_rear_warn msg))
    (cl:cons ':lidar_power_status (lidar_power_status msg))
    (cl:cons ':mcu_watchdog_status_master (mcu_watchdog_status_master msg))
    (cl:cons ':mcu_watchdog_status_slave (mcu_watchdog_status_slave msg))
    (cl:cons ':fault_detected (fault_detected msg))
    (cl:cons ':fault_inconsitent_sequence_two_mcu (fault_inconsitent_sequence_two_mcu msg))
    (cl:cons ':fault_different_data_two_mcu (fault_different_data_two_mcu msg))
    (cl:cons ':fault_safety_function (fault_safety_function msg))
    (cl:cons ':fault_mcu (fault_mcu msg))
))
