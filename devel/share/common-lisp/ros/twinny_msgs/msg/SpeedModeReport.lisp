; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude SpeedModeReport.msg.html

(cl:defclass <SpeedModeReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (robot_current_speed_mode
    :reader robot_current_speed_mode
    :initarg :robot_current_speed_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SpeedModeReport (<SpeedModeReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedModeReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedModeReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<SpeedModeReport> is deprecated: use twinny_msgs-msg:SpeedModeReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SpeedModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SpeedModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'robot_current_speed_mode-val :lambda-list '(m))
(cl:defmethod robot_current_speed_mode-val ((m <SpeedModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:robot_current_speed_mode-val is deprecated.  Use twinny_msgs-msg:robot_current_speed_mode instead.")
  (robot_current_speed_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SpeedModeReport>)))
    "Constants for message type '<SpeedModeReport>"
  '((:ROBOT_SPEED_LOW . -1)
    (:ROBOT_SPEED_DEFAULT . 0)
    (:ROBOT_SPEED_HIGH . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SpeedModeReport)))
    "Constants for message type 'SpeedModeReport"
  '((:ROBOT_SPEED_LOW . -1)
    (:ROBOT_SPEED_DEFAULT . 0)
    (:ROBOT_SPEED_HIGH . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedModeReport>) ostream)
  "Serializes a message object of type '<SpeedModeReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let* ((signed (cl:slot-value msg 'robot_current_speed_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedModeReport>) istream)
  "Deserializes a message object of type '<SpeedModeReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_current_speed_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedModeReport>)))
  "Returns string type for a message object of type '<SpeedModeReport>"
  "twinny_msgs/SpeedModeReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedModeReport)))
  "Returns string type for a message object of type 'SpeedModeReport"
  "twinny_msgs/SpeedModeReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedModeReport>)))
  "Returns md5sum for a message object of type '<SpeedModeReport>"
  "80f59a95cf675512c2f5ddacc798542f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedModeReport)))
  "Returns md5sum for a message object of type 'SpeedModeReport"
  "80f59a95cf675512c2f5ddacc798542f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedModeReport>)))
  "Returns full string definition for message of type '<SpeedModeReport>"
  (cl:format cl:nil "Header header~%string type~%~%int8 ROBOT_SPEED_LOW = -1~%int8 ROBOT_SPEED_DEFAULT = 0~%int8 ROBOT_SPEED_HIGH = 1~%~%int8 robot_current_speed_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedModeReport)))
  "Returns full string definition for message of type 'SpeedModeReport"
  (cl:format cl:nil "Header header~%string type~%~%int8 ROBOT_SPEED_LOW = -1~%int8 ROBOT_SPEED_DEFAULT = 0~%int8 ROBOT_SPEED_HIGH = 1~%~%int8 robot_current_speed_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedModeReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedModeReport>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedModeReport
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':robot_current_speed_mode (robot_current_speed_mode msg))
))
