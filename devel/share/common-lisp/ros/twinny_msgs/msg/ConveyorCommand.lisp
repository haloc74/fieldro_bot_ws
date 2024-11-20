; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude ConveyorCommand.msg.html

(cl:defclass <ConveyorCommand> (roslisp-msg-protocol:ros-message)
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
   (conveyor1_control
    :reader conveyor1_control
    :initarg :conveyor1_control
    :type cl:fixnum
    :initform 0)
   (conveyor2_control
    :reader conveyor2_control
    :initarg :conveyor2_control
    :type cl:fixnum
    :initform 0)
   (door_open_control
    :reader door_open_control
    :initarg :door_open_control
    :type cl:boolean
    :initform cl:nil)
   (fall_prevention_device_control
    :reader fall_prevention_device_control
    :initarg :fall_prevention_device_control
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConveyorCommand (<ConveyorCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConveyorCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConveyorCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<ConveyorCommand> is deprecated: use twinny_msgs-msg:ConveyorCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ConveyorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ConveyorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'conveyor1_control-val :lambda-list '(m))
(cl:defmethod conveyor1_control-val ((m <ConveyorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:conveyor1_control-val is deprecated.  Use twinny_msgs-msg:conveyor1_control instead.")
  (conveyor1_control m))

(cl:ensure-generic-function 'conveyor2_control-val :lambda-list '(m))
(cl:defmethod conveyor2_control-val ((m <ConveyorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:conveyor2_control-val is deprecated.  Use twinny_msgs-msg:conveyor2_control instead.")
  (conveyor2_control m))

(cl:ensure-generic-function 'door_open_control-val :lambda-list '(m))
(cl:defmethod door_open_control-val ((m <ConveyorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:door_open_control-val is deprecated.  Use twinny_msgs-msg:door_open_control instead.")
  (door_open_control m))

(cl:ensure-generic-function 'fall_prevention_device_control-val :lambda-list '(m))
(cl:defmethod fall_prevention_device_control-val ((m <ConveyorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fall_prevention_device_control-val is deprecated.  Use twinny_msgs-msg:fall_prevention_device_control instead.")
  (fall_prevention_device_control m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConveyorCommand>)))
    "Constants for message type '<ConveyorCommand>"
  '((:CONVEYOR_CTRL_REVERSE . -1)
    (:CONVEYOR_CTRL_STOP . 0)
    (:CONVEYOR_CTRL_FORWARD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConveyorCommand)))
    "Constants for message type 'ConveyorCommand"
  '((:CONVEYOR_CTRL_REVERSE . -1)
    (:CONVEYOR_CTRL_STOP . 0)
    (:CONVEYOR_CTRL_FORWARD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConveyorCommand>) ostream)
  "Serializes a message object of type '<ConveyorCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let* ((signed (cl:slot-value msg 'conveyor1_control)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'conveyor2_control)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'door_open_control) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fall_prevention_device_control) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConveyorCommand>) istream)
  "Deserializes a message object of type '<ConveyorCommand>"
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
      (cl:setf (cl:slot-value msg 'conveyor1_control) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'conveyor2_control) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'door_open_control) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fall_prevention_device_control) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConveyorCommand>)))
  "Returns string type for a message object of type '<ConveyorCommand>"
  "twinny_msgs/ConveyorCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConveyorCommand)))
  "Returns string type for a message object of type 'ConveyorCommand"
  "twinny_msgs/ConveyorCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConveyorCommand>)))
  "Returns md5sum for a message object of type '<ConveyorCommand>"
  "0a14a0f1bac068f9cdcfcbcb626cbfca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConveyorCommand)))
  "Returns md5sum for a message object of type 'ConveyorCommand"
  "0a14a0f1bac068f9cdcfcbcb626cbfca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConveyorCommand>)))
  "Returns full string definition for message of type '<ConveyorCommand>"
  (cl:format cl:nil "Header header~%string type~%~%int8 CONVEYOR_CTRL_REVERSE = -1~%int8 CONVEYOR_CTRL_STOP    = 0~%int8 CONVEYOR_CTRL_FORWARD = 1~%~%int8 conveyor1_control~%int8 conveyor2_control~%~%bool door_open_control~%~%bool fall_prevention_device_control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConveyorCommand)))
  "Returns full string definition for message of type 'ConveyorCommand"
  (cl:format cl:nil "Header header~%string type~%~%int8 CONVEYOR_CTRL_REVERSE = -1~%int8 CONVEYOR_CTRL_STOP    = 0~%int8 CONVEYOR_CTRL_FORWARD = 1~%~%int8 conveyor1_control~%int8 conveyor2_control~%~%bool door_open_control~%~%bool fall_prevention_device_control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConveyorCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConveyorCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ConveyorCommand
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':conveyor1_control (conveyor1_control msg))
    (cl:cons ':conveyor2_control (conveyor2_control msg))
    (cl:cons ':door_open_control (door_open_control msg))
    (cl:cons ':fall_prevention_device_control (fall_prevention_device_control msg))
))
