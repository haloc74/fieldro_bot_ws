; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude DoorLockReport.msg.html

(cl:defclass <DoorLockReport> (roslisp-msg-protocol:ros-message)
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
   (door_lock_state
    :reader door_lock_state
    :initarg :door_lock_state
    :type cl:integer
    :initform 0)
   (door_open_state
    :reader door_open_state
    :initarg :door_open_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DoorLockReport (<DoorLockReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoorLockReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoorLockReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<DoorLockReport> is deprecated: use twinny_msgs-msg:DoorLockReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DoorLockReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DoorLockReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'door_lock_id-val :lambda-list '(m))
(cl:defmethod door_lock_id-val ((m <DoorLockReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:door_lock_id-val is deprecated.  Use twinny_msgs-msg:door_lock_id instead.")
  (door_lock_id m))

(cl:ensure-generic-function 'door_lock_state-val :lambda-list '(m))
(cl:defmethod door_lock_state-val ((m <DoorLockReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:door_lock_state-val is deprecated.  Use twinny_msgs-msg:door_lock_state instead.")
  (door_lock_state m))

(cl:ensure-generic-function 'door_open_state-val :lambda-list '(m))
(cl:defmethod door_open_state-val ((m <DoorLockReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:door_open_state-val is deprecated.  Use twinny_msgs-msg:door_open_state instead.")
  (door_open_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DoorLockReport>)))
    "Constants for message type '<DoorLockReport>"
  '((:DOOR_REPORT_STOP . 0)
    (:DOOR_REPORT_LOCK . 1)
    (:DOOR_REPORT_LOCKING . 2)
    (:DOOR_REPORT_UNLOCK . 3)
    (:DOOR_REPORT_UNLOCKING . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DoorLockReport)))
    "Constants for message type 'DoorLockReport"
  '((:DOOR_REPORT_STOP . 0)
    (:DOOR_REPORT_LOCK . 1)
    (:DOOR_REPORT_LOCKING . 2)
    (:DOOR_REPORT_UNLOCK . 3)
    (:DOOR_REPORT_UNLOCKING . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoorLockReport>) ostream)
  "Serializes a message object of type '<DoorLockReport>"
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
  (cl:let* ((signed (cl:slot-value msg 'door_lock_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'door_open_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoorLockReport>) istream)
  "Deserializes a message object of type '<DoorLockReport>"
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
      (cl:setf (cl:slot-value msg 'door_lock_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'door_open_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoorLockReport>)))
  "Returns string type for a message object of type '<DoorLockReport>"
  "twinny_msgs/DoorLockReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorLockReport)))
  "Returns string type for a message object of type 'DoorLockReport"
  "twinny_msgs/DoorLockReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoorLockReport>)))
  "Returns md5sum for a message object of type '<DoorLockReport>"
  "de2acf7851fcb667067d0326218a4ca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoorLockReport)))
  "Returns md5sum for a message object of type 'DoorLockReport"
  "de2acf7851fcb667067d0326218a4ca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoorLockReport>)))
  "Returns full string definition for message of type '<DoorLockReport>"
  (cl:format cl:nil "Header header~%string type~%~%uint32 door_lock_id~%~%int32 DOOR_REPORT_STOP=0~%int32 DOOR_REPORT_LOCK=1~%int32 DOOR_REPORT_LOCKING=2~%int32 DOOR_REPORT_UNLOCK=3~%int32 DOOR_REPORT_UNLOCKING=4~%~%int32 door_lock_state~%bool door_open_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoorLockReport)))
  "Returns full string definition for message of type 'DoorLockReport"
  (cl:format cl:nil "Header header~%string type~%~%uint32 door_lock_id~%~%int32 DOOR_REPORT_STOP=0~%int32 DOOR_REPORT_LOCK=1~%int32 DOOR_REPORT_LOCKING=2~%int32 DOOR_REPORT_UNLOCK=3~%int32 DOOR_REPORT_UNLOCKING=4~%~%int32 door_lock_state~%bool door_open_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoorLockReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoorLockReport>))
  "Converts a ROS message object to a list"
  (cl:list 'DoorLockReport
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':door_lock_id (door_lock_id msg))
    (cl:cons ':door_lock_state (door_lock_state msg))
    (cl:cons ':door_open_state (door_open_state msg))
))
