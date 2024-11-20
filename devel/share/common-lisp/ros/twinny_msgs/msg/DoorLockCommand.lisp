; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude DoorLockCommand.msg.html

(cl:defclass <DoorLockCommand> (roslisp-msg-protocol:ros-message)
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
   (door_lock_id
    :reader door_lock_id
    :initarg :door_lock_id
    :type cl:integer
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:integer
    :initform 0))
)

(cl:defclass DoorLockCommand (<DoorLockCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoorLockCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoorLockCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<DoorLockCommand> is deprecated: use twinny_msgs-msg:DoorLockCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DoorLockCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DoorLockCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'door_lock_id-val :lambda-list '(m))
(cl:defmethod door_lock_id-val ((m <DoorLockCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:door_lock_id-val is deprecated.  Use twinny_msgs-msg:door_lock_id instead.")
  (door_lock_id m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <DoorLockCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:command-val is deprecated.  Use twinny_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DoorLockCommand>)))
    "Constants for message type '<DoorLockCommand>"
  '((:DOOR_CMD_STOP . 0)
    (:DOOR_CMD_LOCK . 1)
    (:DOOR_CMD_UNLOCK . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DoorLockCommand)))
    "Constants for message type 'DoorLockCommand"
  '((:DOOR_CMD_STOP . 0)
    (:DOOR_CMD_LOCK . 1)
    (:DOOR_CMD_UNLOCK . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoorLockCommand>) ostream)
  "Serializes a message object of type '<DoorLockCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'door_lock_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'door_lock_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'door_lock_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'door_lock_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoorLockCommand>) istream)
  "Deserializes a message object of type '<DoorLockCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'door_lock_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'door_lock_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'door_lock_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'door_lock_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoorLockCommand>)))
  "Returns string type for a message object of type '<DoorLockCommand>"
  "twinny_msgs/DoorLockCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorLockCommand)))
  "Returns string type for a message object of type 'DoorLockCommand"
  "twinny_msgs/DoorLockCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoorLockCommand>)))
  "Returns md5sum for a message object of type '<DoorLockCommand>"
  "0249947cc5df2af2748f832bc2c85cba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoorLockCommand)))
  "Returns md5sum for a message object of type 'DoorLockCommand"
  "0249947cc5df2af2748f832bc2c85cba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoorLockCommand>)))
  "Returns full string definition for message of type '<DoorLockCommand>"
  (cl:format cl:nil "Header header~%string type~%~%uint32 door_lock_id~%~%int32 DOOR_CMD_STOP=0~%int32 DOOR_CMD_LOCK=1~%int32 DOOR_CMD_UNLOCK=2~%~%int32 command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoorLockCommand)))
  "Returns full string definition for message of type 'DoorLockCommand"
  (cl:format cl:nil "Header header~%string type~%~%uint32 door_lock_id~%~%int32 DOOR_CMD_STOP=0~%int32 DOOR_CMD_LOCK=1~%int32 DOOR_CMD_UNLOCK=2~%~%int32 command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoorLockCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoorLockCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'DoorLockCommand
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':door_lock_id (door_lock_id msg))
    (cl:cons ':command (command msg))
))
