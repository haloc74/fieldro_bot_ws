; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude MotorReport.msg.html

(cl:defclass <MotorReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motor_driver_mode
    :reader motor_driver_mode
    :initarg :motor_driver_mode
    :type cl:fixnum
    :initform 0)
   (left_status
    :reader left_status
    :initarg :left_status
    :type cl:fixnum
    :initform 0)
   (right_status
    :reader right_status
    :initarg :right_status
    :type cl:fixnum
    :initform 0)
   (left_NMT_status
    :reader left_NMT_status
    :initarg :left_NMT_status
    :type cl:fixnum
    :initform 0)
   (right_NMT_status
    :reader right_NMT_status
    :initarg :right_NMT_status
    :type cl:fixnum
    :initform 0)
   (left_current
    :reader left_current
    :initarg :left_current
    :type cl:fixnum
    :initform 0)
   (right_current
    :reader right_current
    :initarg :right_current
    :type cl:fixnum
    :initform 0)
   (left_peak_current
    :reader left_peak_current
    :initarg :left_peak_current
    :type cl:fixnum
    :initform 0)
   (right_peak_current
    :reader right_peak_current
    :initarg :right_peak_current
    :type cl:fixnum
    :initform 0)
   (motor_error_flag
    :reader motor_error_flag
    :initarg :motor_error_flag
    :type cl:fixnum
    :initform 0)
   (left_drive_bridge_status
    :reader left_drive_bridge_status
    :initarg :left_drive_bridge_status
    :type cl:string
    :initform "")
   (left_drive_protection_status
    :reader left_drive_protection_status
    :initarg :left_drive_protection_status
    :type cl:string
    :initform "")
   (left_system_protection_status
    :reader left_system_protection_status
    :initarg :left_system_protection_status
    :type cl:string
    :initform "")
   (left_drive_system_status1
    :reader left_drive_system_status1
    :initarg :left_drive_system_status1
    :type cl:string
    :initform "")
   (right_drive_bridge_status
    :reader right_drive_bridge_status
    :initarg :right_drive_bridge_status
    :type cl:string
    :initform "")
   (right_drive_protection_status
    :reader right_drive_protection_status
    :initarg :right_drive_protection_status
    :type cl:string
    :initform "")
   (right_system_protection_status
    :reader right_system_protection_status
    :initarg :right_system_protection_status
    :type cl:string
    :initform "")
   (right_drive_system_status1
    :reader right_drive_system_status1
    :initarg :right_drive_system_status1
    :type cl:string
    :initform "")
   (drive_fault_flag
    :reader drive_fault_flag
    :initarg :drive_fault_flag
    :type cl:boolean
    :initform cl:nil)
   (drive_fault_status
    :reader drive_fault_status
    :initarg :drive_fault_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MotorReport (<MotorReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<MotorReport> is deprecated: use twinny_msgs-msg:MotorReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motor_driver_mode-val :lambda-list '(m))
(cl:defmethod motor_driver_mode-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:motor_driver_mode-val is deprecated.  Use twinny_msgs-msg:motor_driver_mode instead.")
  (motor_driver_mode m))

(cl:ensure-generic-function 'left_status-val :lambda-list '(m))
(cl:defmethod left_status-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:left_status-val is deprecated.  Use twinny_msgs-msg:left_status instead.")
  (left_status m))

(cl:ensure-generic-function 'right_status-val :lambda-list '(m))
(cl:defmethod right_status-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:right_status-val is deprecated.  Use twinny_msgs-msg:right_status instead.")
  (right_status m))

(cl:ensure-generic-function 'left_NMT_status-val :lambda-list '(m))
(cl:defmethod left_NMT_status-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:left_NMT_status-val is deprecated.  Use twinny_msgs-msg:left_NMT_status instead.")
  (left_NMT_status m))

(cl:ensure-generic-function 'right_NMT_status-val :lambda-list '(m))
(cl:defmethod right_NMT_status-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:right_NMT_status-val is deprecated.  Use twinny_msgs-msg:right_NMT_status instead.")
  (right_NMT_status m))

(cl:ensure-generic-function 'left_current-val :lambda-list '(m))
(cl:defmethod left_current-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:left_current-val is deprecated.  Use twinny_msgs-msg:left_current instead.")
  (left_current m))

(cl:ensure-generic-function 'right_current-val :lambda-list '(m))
(cl:defmethod right_current-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:right_current-val is deprecated.  Use twinny_msgs-msg:right_current instead.")
  (right_current m))

(cl:ensure-generic-function 'left_peak_current-val :lambda-list '(m))
(cl:defmethod left_peak_current-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:left_peak_current-val is deprecated.  Use twinny_msgs-msg:left_peak_current instead.")
  (left_peak_current m))

(cl:ensure-generic-function 'right_peak_current-val :lambda-list '(m))
(cl:defmethod right_peak_current-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:right_peak_current-val is deprecated.  Use twinny_msgs-msg:right_peak_current instead.")
  (right_peak_current m))

(cl:ensure-generic-function 'motor_error_flag-val :lambda-list '(m))
(cl:defmethod motor_error_flag-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:motor_error_flag-val is deprecated.  Use twinny_msgs-msg:motor_error_flag instead.")
  (motor_error_flag m))

(cl:ensure-generic-function 'left_drive_bridge_status-val :lambda-list '(m))
(cl:defmethod left_drive_bridge_status-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:left_drive_bridge_status-val is deprecated.  Use twinny_msgs-msg:left_drive_bridge_status instead.")
  (left_drive_bridge_status m))

(cl:ensure-generic-function 'left_drive_protection_status-val :lambda-list '(m))
(cl:defmethod left_drive_protection_status-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:left_drive_protection_status-val is deprecated.  Use twinny_msgs-msg:left_drive_protection_status instead.")
  (left_drive_protection_status m))

(cl:ensure-generic-function 'left_system_protection_status-val :lambda-list '(m))
(cl:defmethod left_system_protection_status-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:left_system_protection_status-val is deprecated.  Use twinny_msgs-msg:left_system_protection_status instead.")
  (left_system_protection_status m))

(cl:ensure-generic-function 'left_drive_system_status1-val :lambda-list '(m))
(cl:defmethod left_drive_system_status1-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:left_drive_system_status1-val is deprecated.  Use twinny_msgs-msg:left_drive_system_status1 instead.")
  (left_drive_system_status1 m))

(cl:ensure-generic-function 'right_drive_bridge_status-val :lambda-list '(m))
(cl:defmethod right_drive_bridge_status-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:right_drive_bridge_status-val is deprecated.  Use twinny_msgs-msg:right_drive_bridge_status instead.")
  (right_drive_bridge_status m))

(cl:ensure-generic-function 'right_drive_protection_status-val :lambda-list '(m))
(cl:defmethod right_drive_protection_status-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:right_drive_protection_status-val is deprecated.  Use twinny_msgs-msg:right_drive_protection_status instead.")
  (right_drive_protection_status m))

(cl:ensure-generic-function 'right_system_protection_status-val :lambda-list '(m))
(cl:defmethod right_system_protection_status-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:right_system_protection_status-val is deprecated.  Use twinny_msgs-msg:right_system_protection_status instead.")
  (right_system_protection_status m))

(cl:ensure-generic-function 'right_drive_system_status1-val :lambda-list '(m))
(cl:defmethod right_drive_system_status1-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:right_drive_system_status1-val is deprecated.  Use twinny_msgs-msg:right_drive_system_status1 instead.")
  (right_drive_system_status1 m))

(cl:ensure-generic-function 'drive_fault_flag-val :lambda-list '(m))
(cl:defmethod drive_fault_flag-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:drive_fault_flag-val is deprecated.  Use twinny_msgs-msg:drive_fault_flag instead.")
  (drive_fault_flag m))

(cl:ensure-generic-function 'drive_fault_status-val :lambda-list '(m))
(cl:defmethod drive_fault_status-val ((m <MotorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:drive_fault_status-val is deprecated.  Use twinny_msgs-msg:drive_fault_status instead.")
  (drive_fault_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MotorReport>)))
    "Constants for message type '<MotorReport>"
  '((:CURRENT_FACTOR . 0.1)
    (:ALARM . 0)
    (:CTRL_FAIL . 1)
    (:OVER_VOLT . 2)
    (:OVER_TEMP . 3)
    (:OVER_LOAD . 4)
    (:HALL_FAIL . 5)
    (:INV_VEL . 6)
    (:STALL . 7)
    (:DRIVE_INTERNAL_ERROR . 1)
    (:SHORT_CIRCUIT . 2)
    (:CURRENT_OVERSHOOT . 4)
    (:UNDER_VOLTAGE . 8)
    (:OVER_VOLTAGE . 16)
    (:DRIVE_OVER_TEMPERATURE . 32)
    (:INVALID_HALL_STATE . 64)
    (:MOTOR_OVER_TEMPERATURE . 128)
    (:PHASE_DECTION_FAULT . 256)
    (:FEEDBACK_SENSOR_ERROR . 512)
    (:NODE_GUARDING . 1024))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MotorReport)))
    "Constants for message type 'MotorReport"
  '((:CURRENT_FACTOR . 0.1)
    (:ALARM . 0)
    (:CTRL_FAIL . 1)
    (:OVER_VOLT . 2)
    (:OVER_TEMP . 3)
    (:OVER_LOAD . 4)
    (:HALL_FAIL . 5)
    (:INV_VEL . 6)
    (:STALL . 7)
    (:DRIVE_INTERNAL_ERROR . 1)
    (:SHORT_CIRCUIT . 2)
    (:CURRENT_OVERSHOOT . 4)
    (:UNDER_VOLTAGE . 8)
    (:OVER_VOLTAGE . 16)
    (:DRIVE_OVER_TEMPERATURE . 32)
    (:INVALID_HALL_STATE . 64)
    (:MOTOR_OVER_TEMPERATURE . 128)
    (:PHASE_DECTION_FAULT . 256)
    (:FEEDBACK_SENSOR_ERROR . 512)
    (:NODE_GUARDING . 1024))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorReport>) ostream)
  "Serializes a message object of type '<MotorReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_driver_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'motor_driver_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_NMT_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_NMT_status)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'left_current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'left_peak_current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_peak_current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_error_flag)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'left_drive_bridge_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'left_drive_bridge_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'left_drive_protection_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'left_drive_protection_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'left_system_protection_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'left_system_protection_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'left_drive_system_status1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'left_drive_system_status1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'right_drive_bridge_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'right_drive_bridge_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'right_drive_protection_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'right_drive_protection_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'right_system_protection_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'right_system_protection_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'right_drive_system_status1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'right_drive_system_status1))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'drive_fault_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drive_fault_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drive_fault_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorReport>) istream)
  "Deserializes a message object of type '<MotorReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_driver_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'motor_driver_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_NMT_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_NMT_status)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_peak_current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_peak_current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_error_flag)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_drive_bridge_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'left_drive_bridge_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_drive_protection_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'left_drive_protection_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_system_protection_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'left_system_protection_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_drive_system_status1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'left_drive_system_status1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_drive_bridge_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'right_drive_bridge_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_drive_protection_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'right_drive_protection_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_system_protection_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'right_system_protection_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_drive_system_status1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'right_drive_system_status1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'drive_fault_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drive_fault_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drive_fault_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorReport>)))
  "Returns string type for a message object of type '<MotorReport>"
  "twinny_msgs/MotorReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorReport)))
  "Returns string type for a message object of type 'MotorReport"
  "twinny_msgs/MotorReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorReport>)))
  "Returns md5sum for a message object of type '<MotorReport>"
  "fe02ce809fad1b492fd33e316a77ebd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorReport)))
  "Returns md5sum for a message object of type 'MotorReport"
  "fe02ce809fad1b492fd33e316a77ebd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorReport>)))
  "Returns full string definition for message of type '<MotorReport>"
  (cl:format cl:nil "Header header~%~%float64 current_factor=0.1~%~%uint8 ALARM=0~%uint8 CTRL_FAIL=1~%uint8 OVER_VOLT=2~%uint8 OVER_TEMP=3~%uint8 OVER_LOAD=4~%uint8 HALL_FAIL=5~%uint8 INV_VEL=6~%uint8 STALL=7~%~%uint16 motor_driver_mode~%~%uint16 left_status~%uint16 right_status~%uint8 left_NMT_status~%uint8 right_NMT_status~%~%int16 left_current~%int16 right_current~%int16 left_peak_current~%int16 right_peak_current~%~%uint8 motor_error_flag~%~%string left_drive_bridge_status~%string left_drive_protection_status~%string left_system_protection_status~%string left_drive_system_status1~%~%string right_drive_bridge_status~%string right_drive_protection_status~%string right_system_protection_status~%string right_drive_system_status1~%~%bool drive_fault_flag~%~%uint16 DRIVE_INTERNAL_ERROR = 1~%uint16 SHORT_CIRCUIT = 2~%uint16 CURRENT_OVERSHOOT = 4~%uint16 UNDER_VOLTAGE = 8~%uint16 OVER_VOLTAGE = 16~%uint16 DRIVE_OVER_TEMPERATURE = 32~%uint16 INVALID_HALL_STATE = 64~%uint16 MOTOR_OVER_TEMPERATURE = 128~%uint16 PHASE_DECTION_FAULT = 256~%uint16 FEEDBACK_SENSOR_ERROR = 512~%uint16 NODE_GUARDING = 1024~%~%uint16 drive_fault_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorReport)))
  "Returns full string definition for message of type 'MotorReport"
  (cl:format cl:nil "Header header~%~%float64 current_factor=0.1~%~%uint8 ALARM=0~%uint8 CTRL_FAIL=1~%uint8 OVER_VOLT=2~%uint8 OVER_TEMP=3~%uint8 OVER_LOAD=4~%uint8 HALL_FAIL=5~%uint8 INV_VEL=6~%uint8 STALL=7~%~%uint16 motor_driver_mode~%~%uint16 left_status~%uint16 right_status~%uint8 left_NMT_status~%uint8 right_NMT_status~%~%int16 left_current~%int16 right_current~%int16 left_peak_current~%int16 right_peak_current~%~%uint8 motor_error_flag~%~%string left_drive_bridge_status~%string left_drive_protection_status~%string left_system_protection_status~%string left_drive_system_status1~%~%string right_drive_bridge_status~%string right_drive_protection_status~%string right_system_protection_status~%string right_drive_system_status1~%~%bool drive_fault_flag~%~%uint16 DRIVE_INTERNAL_ERROR = 1~%uint16 SHORT_CIRCUIT = 2~%uint16 CURRENT_OVERSHOOT = 4~%uint16 UNDER_VOLTAGE = 8~%uint16 OVER_VOLTAGE = 16~%uint16 DRIVE_OVER_TEMPERATURE = 32~%uint16 INVALID_HALL_STATE = 64~%uint16 MOTOR_OVER_TEMPERATURE = 128~%uint16 PHASE_DECTION_FAULT = 256~%uint16 FEEDBACK_SENSOR_ERROR = 512~%uint16 NODE_GUARDING = 1024~%~%uint16 drive_fault_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     1
     1
     2
     2
     2
     2
     1
     4 (cl:length (cl:slot-value msg 'left_drive_bridge_status))
     4 (cl:length (cl:slot-value msg 'left_drive_protection_status))
     4 (cl:length (cl:slot-value msg 'left_system_protection_status))
     4 (cl:length (cl:slot-value msg 'left_drive_system_status1))
     4 (cl:length (cl:slot-value msg 'right_drive_bridge_status))
     4 (cl:length (cl:slot-value msg 'right_drive_protection_status))
     4 (cl:length (cl:slot-value msg 'right_system_protection_status))
     4 (cl:length (cl:slot-value msg 'right_drive_system_status1))
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorReport>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorReport
    (cl:cons ':header (header msg))
    (cl:cons ':motor_driver_mode (motor_driver_mode msg))
    (cl:cons ':left_status (left_status msg))
    (cl:cons ':right_status (right_status msg))
    (cl:cons ':left_NMT_status (left_NMT_status msg))
    (cl:cons ':right_NMT_status (right_NMT_status msg))
    (cl:cons ':left_current (left_current msg))
    (cl:cons ':right_current (right_current msg))
    (cl:cons ':left_peak_current (left_peak_current msg))
    (cl:cons ':right_peak_current (right_peak_current msg))
    (cl:cons ':motor_error_flag (motor_error_flag msg))
    (cl:cons ':left_drive_bridge_status (left_drive_bridge_status msg))
    (cl:cons ':left_drive_protection_status (left_drive_protection_status msg))
    (cl:cons ':left_system_protection_status (left_system_protection_status msg))
    (cl:cons ':left_drive_system_status1 (left_drive_system_status1 msg))
    (cl:cons ':right_drive_bridge_status (right_drive_bridge_status msg))
    (cl:cons ':right_drive_protection_status (right_drive_protection_status msg))
    (cl:cons ':right_system_protection_status (right_system_protection_status msg))
    (cl:cons ':right_drive_system_status1 (right_drive_system_status1 msg))
    (cl:cons ':drive_fault_flag (drive_fault_flag msg))
    (cl:cons ':drive_fault_status (drive_fault_status msg))
))
