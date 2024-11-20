; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude MonitorPowerBoard.msg.html

(cl:defclass <MonitorPowerBoard> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Mode
    :reader Mode
    :initarg :Mode
    :type cl:string
    :initform "")
   (voltage_flag
    :reader voltage_flag
    :initarg :voltage_flag
    :type cl:string
    :initform "")
   (charge_current_flag
    :reader charge_current_flag
    :initarg :charge_current_flag
    :type cl:string
    :initform "")
   (robot_power_on_mode
    :reader robot_power_on_mode
    :initarg :robot_power_on_mode
    :type cl:string
    :initform "")
   (motor_relay_error
    :reader motor_relay_error
    :initarg :motor_relay_error
    :type cl:boolean
    :initform cl:nil)
   (robot_power_relay_error
    :reader robot_power_relay_error
    :initarg :robot_power_relay_error
    :type cl:boolean
    :initform cl:nil)
   (pc_switch_error
    :reader pc_switch_error
    :initarg :pc_switch_error
    :type cl:boolean
    :initform cl:nil)
   (pc_boot_up_error
    :reader pc_boot_up_error
    :initarg :pc_boot_up_error
    :type cl:boolean
    :initform cl:nil)
   (pc_boot_off_error
    :reader pc_boot_off_error
    :initarg :pc_boot_off_error
    :type cl:boolean
    :initform cl:nil)
   (pc_down_error
    :reader pc_down_error
    :initarg :pc_down_error
    :type cl:boolean
    :initform cl:nil)
   (charge_relay_error
    :reader charge_relay_error
    :initarg :charge_relay_error
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MonitorPowerBoard (<MonitorPowerBoard>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitorPowerBoard>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitorPowerBoard)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<MonitorPowerBoard> is deprecated: use twinny_msgs-msg:MonitorPowerBoard instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MonitorPowerBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Mode-val :lambda-list '(m))
(cl:defmethod Mode-val ((m <MonitorPowerBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Mode-val is deprecated.  Use twinny_msgs-msg:Mode instead.")
  (Mode m))

(cl:ensure-generic-function 'voltage_flag-val :lambda-list '(m))
(cl:defmethod voltage_flag-val ((m <MonitorPowerBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:voltage_flag-val is deprecated.  Use twinny_msgs-msg:voltage_flag instead.")
  (voltage_flag m))

(cl:ensure-generic-function 'charge_current_flag-val :lambda-list '(m))
(cl:defmethod charge_current_flag-val ((m <MonitorPowerBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:charge_current_flag-val is deprecated.  Use twinny_msgs-msg:charge_current_flag instead.")
  (charge_current_flag m))

(cl:ensure-generic-function 'robot_power_on_mode-val :lambda-list '(m))
(cl:defmethod robot_power_on_mode-val ((m <MonitorPowerBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:robot_power_on_mode-val is deprecated.  Use twinny_msgs-msg:robot_power_on_mode instead.")
  (robot_power_on_mode m))

(cl:ensure-generic-function 'motor_relay_error-val :lambda-list '(m))
(cl:defmethod motor_relay_error-val ((m <MonitorPowerBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:motor_relay_error-val is deprecated.  Use twinny_msgs-msg:motor_relay_error instead.")
  (motor_relay_error m))

(cl:ensure-generic-function 'robot_power_relay_error-val :lambda-list '(m))
(cl:defmethod robot_power_relay_error-val ((m <MonitorPowerBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:robot_power_relay_error-val is deprecated.  Use twinny_msgs-msg:robot_power_relay_error instead.")
  (robot_power_relay_error m))

(cl:ensure-generic-function 'pc_switch_error-val :lambda-list '(m))
(cl:defmethod pc_switch_error-val ((m <MonitorPowerBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:pc_switch_error-val is deprecated.  Use twinny_msgs-msg:pc_switch_error instead.")
  (pc_switch_error m))

(cl:ensure-generic-function 'pc_boot_up_error-val :lambda-list '(m))
(cl:defmethod pc_boot_up_error-val ((m <MonitorPowerBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:pc_boot_up_error-val is deprecated.  Use twinny_msgs-msg:pc_boot_up_error instead.")
  (pc_boot_up_error m))

(cl:ensure-generic-function 'pc_boot_off_error-val :lambda-list '(m))
(cl:defmethod pc_boot_off_error-val ((m <MonitorPowerBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:pc_boot_off_error-val is deprecated.  Use twinny_msgs-msg:pc_boot_off_error instead.")
  (pc_boot_off_error m))

(cl:ensure-generic-function 'pc_down_error-val :lambda-list '(m))
(cl:defmethod pc_down_error-val ((m <MonitorPowerBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:pc_down_error-val is deprecated.  Use twinny_msgs-msg:pc_down_error instead.")
  (pc_down_error m))

(cl:ensure-generic-function 'charge_relay_error-val :lambda-list '(m))
(cl:defmethod charge_relay_error-val ((m <MonitorPowerBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:charge_relay_error-val is deprecated.  Use twinny_msgs-msg:charge_relay_error instead.")
  (charge_relay_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitorPowerBoard>) ostream)
  "Serializes a message object of type '<MonitorPowerBoard>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Mode))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'voltage_flag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'voltage_flag))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'charge_current_flag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'charge_current_flag))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_power_on_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_power_on_mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_relay_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'robot_power_relay_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pc_switch_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pc_boot_up_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pc_boot_off_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pc_down_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'charge_relay_error) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitorPowerBoard>) istream)
  "Deserializes a message object of type '<MonitorPowerBoard>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'voltage_flag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'voltage_flag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charge_current_flag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'charge_current_flag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_power_on_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_power_on_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'motor_relay_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'robot_power_relay_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pc_switch_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pc_boot_up_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pc_boot_off_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pc_down_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'charge_relay_error) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitorPowerBoard>)))
  "Returns string type for a message object of type '<MonitorPowerBoard>"
  "twinny_msgs/MonitorPowerBoard")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorPowerBoard)))
  "Returns string type for a message object of type 'MonitorPowerBoard"
  "twinny_msgs/MonitorPowerBoard")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitorPowerBoard>)))
  "Returns md5sum for a message object of type '<MonitorPowerBoard>"
  "d786489e7a443dba4376961f64ea7161")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitorPowerBoard)))
  "Returns md5sum for a message object of type 'MonitorPowerBoard"
  "d786489e7a443dba4376961f64ea7161")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitorPowerBoard>)))
  "Returns full string definition for message of type '<MonitorPowerBoard>"
  (cl:format cl:nil "Header header ~%~%string Mode~%~%string voltage_flag~%string charge_current_flag~%~%string robot_power_on_mode~%~%bool motor_relay_error~%bool robot_power_relay_error~%bool pc_switch_error~%bool pc_boot_up_error~%bool pc_boot_off_error~%bool pc_down_error~%bool charge_relay_error~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitorPowerBoard)))
  "Returns full string definition for message of type 'MonitorPowerBoard"
  (cl:format cl:nil "Header header ~%~%string Mode~%~%string voltage_flag~%string charge_current_flag~%~%string robot_power_on_mode~%~%bool motor_relay_error~%bool robot_power_relay_error~%bool pc_switch_error~%bool pc_boot_up_error~%bool pc_boot_off_error~%bool pc_down_error~%bool charge_relay_error~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitorPowerBoard>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'Mode))
     4 (cl:length (cl:slot-value msg 'voltage_flag))
     4 (cl:length (cl:slot-value msg 'charge_current_flag))
     4 (cl:length (cl:slot-value msg 'robot_power_on_mode))
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitorPowerBoard>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitorPowerBoard
    (cl:cons ':header (header msg))
    (cl:cons ':Mode (Mode msg))
    (cl:cons ':voltage_flag (voltage_flag msg))
    (cl:cons ':charge_current_flag (charge_current_flag msg))
    (cl:cons ':robot_power_on_mode (robot_power_on_mode msg))
    (cl:cons ':motor_relay_error (motor_relay_error msg))
    (cl:cons ':robot_power_relay_error (robot_power_relay_error msg))
    (cl:cons ':pc_switch_error (pc_switch_error msg))
    (cl:cons ':pc_boot_up_error (pc_boot_up_error msg))
    (cl:cons ':pc_boot_off_error (pc_boot_off_error msg))
    (cl:cons ':pc_down_error (pc_down_error msg))
    (cl:cons ':charge_relay_error (charge_relay_error msg))
))
