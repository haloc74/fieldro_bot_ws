; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude MonitorRobotBoard.msg.html

(cl:defclass <MonitorRobotBoard> (roslisp-msg-protocol:ros-message)
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
   (motorErrorIndex
    :reader motorErrorIndex
    :initarg :motorErrorIndex
    :type cl:fixnum
    :initform 0)
   (pc_to_mcu_heartbeat_hz
    :reader pc_to_mcu_heartbeat_hz
    :initarg :pc_to_mcu_heartbeat_hz
    :type cl:fixnum
    :initform 0)
   (pc_to_mcu_heartbeat_error
    :reader pc_to_mcu_heartbeat_error
    :initarg :pc_to_mcu_heartbeat_error
    :type cl:boolean
    :initform cl:nil)
   (motor_to_mcu_heartbeat_error
    :reader motor_to_mcu_heartbeat_error
    :initarg :motor_to_mcu_heartbeat_error
    :type cl:boolean
    :initform cl:nil)
   (can_error
    :reader can_error
    :initarg :can_error
    :type cl:boolean
    :initform cl:nil)
   (lin_error
    :reader lin_error
    :initarg :lin_error
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MonitorRobotBoard (<MonitorRobotBoard>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitorRobotBoard>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitorRobotBoard)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<MonitorRobotBoard> is deprecated: use twinny_msgs-msg:MonitorRobotBoard instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MonitorRobotBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Mode-val :lambda-list '(m))
(cl:defmethod Mode-val ((m <MonitorRobotBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Mode-val is deprecated.  Use twinny_msgs-msg:Mode instead.")
  (Mode m))

(cl:ensure-generic-function 'motorErrorIndex-val :lambda-list '(m))
(cl:defmethod motorErrorIndex-val ((m <MonitorRobotBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:motorErrorIndex-val is deprecated.  Use twinny_msgs-msg:motorErrorIndex instead.")
  (motorErrorIndex m))

(cl:ensure-generic-function 'pc_to_mcu_heartbeat_hz-val :lambda-list '(m))
(cl:defmethod pc_to_mcu_heartbeat_hz-val ((m <MonitorRobotBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:pc_to_mcu_heartbeat_hz-val is deprecated.  Use twinny_msgs-msg:pc_to_mcu_heartbeat_hz instead.")
  (pc_to_mcu_heartbeat_hz m))

(cl:ensure-generic-function 'pc_to_mcu_heartbeat_error-val :lambda-list '(m))
(cl:defmethod pc_to_mcu_heartbeat_error-val ((m <MonitorRobotBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:pc_to_mcu_heartbeat_error-val is deprecated.  Use twinny_msgs-msg:pc_to_mcu_heartbeat_error instead.")
  (pc_to_mcu_heartbeat_error m))

(cl:ensure-generic-function 'motor_to_mcu_heartbeat_error-val :lambda-list '(m))
(cl:defmethod motor_to_mcu_heartbeat_error-val ((m <MonitorRobotBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:motor_to_mcu_heartbeat_error-val is deprecated.  Use twinny_msgs-msg:motor_to_mcu_heartbeat_error instead.")
  (motor_to_mcu_heartbeat_error m))

(cl:ensure-generic-function 'can_error-val :lambda-list '(m))
(cl:defmethod can_error-val ((m <MonitorRobotBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:can_error-val is deprecated.  Use twinny_msgs-msg:can_error instead.")
  (can_error m))

(cl:ensure-generic-function 'lin_error-val :lambda-list '(m))
(cl:defmethod lin_error-val ((m <MonitorRobotBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:lin_error-val is deprecated.  Use twinny_msgs-msg:lin_error instead.")
  (lin_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitorRobotBoard>) ostream)
  "Serializes a message object of type '<MonitorRobotBoard>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motorErrorIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pc_to_mcu_heartbeat_hz)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pc_to_mcu_heartbeat_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_to_mcu_heartbeat_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lin_error) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitorRobotBoard>) istream)
  "Deserializes a message object of type '<MonitorRobotBoard>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motorErrorIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pc_to_mcu_heartbeat_hz)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pc_to_mcu_heartbeat_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motor_to_mcu_heartbeat_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'can_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lin_error) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitorRobotBoard>)))
  "Returns string type for a message object of type '<MonitorRobotBoard>"
  "twinny_msgs/MonitorRobotBoard")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorRobotBoard)))
  "Returns string type for a message object of type 'MonitorRobotBoard"
  "twinny_msgs/MonitorRobotBoard")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitorRobotBoard>)))
  "Returns md5sum for a message object of type '<MonitorRobotBoard>"
  "feeef21295281612a29bf518f366cb43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitorRobotBoard)))
  "Returns md5sum for a message object of type 'MonitorRobotBoard"
  "feeef21295281612a29bf518f366cb43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitorRobotBoard>)))
  "Returns full string definition for message of type '<MonitorRobotBoard>"
  (cl:format cl:nil "Header header ~%~%string Mode ~%uint8 motorErrorIndex~%uint8 pc_to_mcu_heartbeat_hz~%bool pc_to_mcu_heartbeat_error~%bool motor_to_mcu_heartbeat_error~%bool can_error~%bool lin_error~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitorRobotBoard)))
  "Returns full string definition for message of type 'MonitorRobotBoard"
  (cl:format cl:nil "Header header ~%~%string Mode ~%uint8 motorErrorIndex~%uint8 pc_to_mcu_heartbeat_hz~%bool pc_to_mcu_heartbeat_error~%bool motor_to_mcu_heartbeat_error~%bool can_error~%bool lin_error~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitorRobotBoard>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'Mode))
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitorRobotBoard>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitorRobotBoard
    (cl:cons ':header (header msg))
    (cl:cons ':Mode (Mode msg))
    (cl:cons ':motorErrorIndex (motorErrorIndex msg))
    (cl:cons ':pc_to_mcu_heartbeat_hz (pc_to_mcu_heartbeat_hz msg))
    (cl:cons ':pc_to_mcu_heartbeat_error (pc_to_mcu_heartbeat_error msg))
    (cl:cons ':motor_to_mcu_heartbeat_error (motor_to_mcu_heartbeat_error msg))
    (cl:cons ':can_error (can_error msg))
    (cl:cons ':lin_error (lin_error msg))
))
