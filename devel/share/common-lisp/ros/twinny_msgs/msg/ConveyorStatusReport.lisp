; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude ConveyorStatusReport.msg.html

(cl:defclass <ConveyorStatusReport> (roslisp-msg-protocol:ros-message)
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
   (conveyor1_status
    :reader conveyor1_status
    :initarg :conveyor1_status
    :type cl:fixnum
    :initform 0)
   (conveyor2_status
    :reader conveyor2_status
    :initarg :conveyor2_status
    :type cl:fixnum
    :initform 0)
   (is_loaded_conveyor1_1
    :reader is_loaded_conveyor1_1
    :initarg :is_loaded_conveyor1_1
    :type cl:boolean
    :initform cl:nil)
   (is_loaded_conveyor1_2
    :reader is_loaded_conveyor1_2
    :initarg :is_loaded_conveyor1_2
    :type cl:boolean
    :initform cl:nil)
   (is_loaded_conveyor2_1
    :reader is_loaded_conveyor2_1
    :initarg :is_loaded_conveyor2_1
    :type cl:boolean
    :initform cl:nil)
   (is_loaded_conveyor2_2
    :reader is_loaded_conveyor2_2
    :initarg :is_loaded_conveyor2_2
    :type cl:boolean
    :initform cl:nil)
   (is_alarm_conveyor1
    :reader is_alarm_conveyor1
    :initarg :is_alarm_conveyor1
    :type cl:boolean
    :initform cl:nil)
   (is_alarm_conveyor2
    :reader is_alarm_conveyor2
    :initarg :is_alarm_conveyor2
    :type cl:boolean
    :initform cl:nil)
   (door_open_status
    :reader door_open_status
    :initarg :door_open_status
    :type cl:boolean
    :initform cl:nil)
   (fall_prevention_device_status
    :reader fall_prevention_device_status
    :initarg :fall_prevention_device_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConveyorStatusReport (<ConveyorStatusReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConveyorStatusReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConveyorStatusReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<ConveyorStatusReport> is deprecated: use twinny_msgs-msg:ConveyorStatusReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ConveyorStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ConveyorStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'conveyor1_status-val :lambda-list '(m))
(cl:defmethod conveyor1_status-val ((m <ConveyorStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:conveyor1_status-val is deprecated.  Use twinny_msgs-msg:conveyor1_status instead.")
  (conveyor1_status m))

(cl:ensure-generic-function 'conveyor2_status-val :lambda-list '(m))
(cl:defmethod conveyor2_status-val ((m <ConveyorStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:conveyor2_status-val is deprecated.  Use twinny_msgs-msg:conveyor2_status instead.")
  (conveyor2_status m))

(cl:ensure-generic-function 'is_loaded_conveyor1_1-val :lambda-list '(m))
(cl:defmethod is_loaded_conveyor1_1-val ((m <ConveyorStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:is_loaded_conveyor1_1-val is deprecated.  Use twinny_msgs-msg:is_loaded_conveyor1_1 instead.")
  (is_loaded_conveyor1_1 m))

(cl:ensure-generic-function 'is_loaded_conveyor1_2-val :lambda-list '(m))
(cl:defmethod is_loaded_conveyor1_2-val ((m <ConveyorStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:is_loaded_conveyor1_2-val is deprecated.  Use twinny_msgs-msg:is_loaded_conveyor1_2 instead.")
  (is_loaded_conveyor1_2 m))

(cl:ensure-generic-function 'is_loaded_conveyor2_1-val :lambda-list '(m))
(cl:defmethod is_loaded_conveyor2_1-val ((m <ConveyorStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:is_loaded_conveyor2_1-val is deprecated.  Use twinny_msgs-msg:is_loaded_conveyor2_1 instead.")
  (is_loaded_conveyor2_1 m))

(cl:ensure-generic-function 'is_loaded_conveyor2_2-val :lambda-list '(m))
(cl:defmethod is_loaded_conveyor2_2-val ((m <ConveyorStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:is_loaded_conveyor2_2-val is deprecated.  Use twinny_msgs-msg:is_loaded_conveyor2_2 instead.")
  (is_loaded_conveyor2_2 m))

(cl:ensure-generic-function 'is_alarm_conveyor1-val :lambda-list '(m))
(cl:defmethod is_alarm_conveyor1-val ((m <ConveyorStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:is_alarm_conveyor1-val is deprecated.  Use twinny_msgs-msg:is_alarm_conveyor1 instead.")
  (is_alarm_conveyor1 m))

(cl:ensure-generic-function 'is_alarm_conveyor2-val :lambda-list '(m))
(cl:defmethod is_alarm_conveyor2-val ((m <ConveyorStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:is_alarm_conveyor2-val is deprecated.  Use twinny_msgs-msg:is_alarm_conveyor2 instead.")
  (is_alarm_conveyor2 m))

(cl:ensure-generic-function 'door_open_status-val :lambda-list '(m))
(cl:defmethod door_open_status-val ((m <ConveyorStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:door_open_status-val is deprecated.  Use twinny_msgs-msg:door_open_status instead.")
  (door_open_status m))

(cl:ensure-generic-function 'fall_prevention_device_status-val :lambda-list '(m))
(cl:defmethod fall_prevention_device_status-val ((m <ConveyorStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fall_prevention_device_status-val is deprecated.  Use twinny_msgs-msg:fall_prevention_device_status instead.")
  (fall_prevention_device_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConveyorStatusReport>)))
    "Constants for message type '<ConveyorStatusReport>"
  '((:CONVEYOR_STATUS_REVERSE . -1)
    (:CONVEYOR_STATUS_STOP . 0)
    (:CONVEYOR_STATUS_FORWARD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConveyorStatusReport)))
    "Constants for message type 'ConveyorStatusReport"
  '((:CONVEYOR_STATUS_REVERSE . -1)
    (:CONVEYOR_STATUS_STOP . 0)
    (:CONVEYOR_STATUS_FORWARD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConveyorStatusReport>) ostream)
  "Serializes a message object of type '<ConveyorStatusReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let* ((signed (cl:slot-value msg 'conveyor1_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'conveyor2_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_loaded_conveyor1_1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_loaded_conveyor1_2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_loaded_conveyor2_1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_loaded_conveyor2_2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_alarm_conveyor1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_alarm_conveyor2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'door_open_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fall_prevention_device_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConveyorStatusReport>) istream)
  "Deserializes a message object of type '<ConveyorStatusReport>"
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
      (cl:setf (cl:slot-value msg 'conveyor1_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'conveyor2_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'is_loaded_conveyor1_1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_loaded_conveyor1_2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_loaded_conveyor2_1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_loaded_conveyor2_2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_alarm_conveyor1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_alarm_conveyor2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'door_open_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fall_prevention_device_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConveyorStatusReport>)))
  "Returns string type for a message object of type '<ConveyorStatusReport>"
  "twinny_msgs/ConveyorStatusReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConveyorStatusReport)))
  "Returns string type for a message object of type 'ConveyorStatusReport"
  "twinny_msgs/ConveyorStatusReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConveyorStatusReport>)))
  "Returns md5sum for a message object of type '<ConveyorStatusReport>"
  "edac1cb1f807055427a86099e42b8c69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConveyorStatusReport)))
  "Returns md5sum for a message object of type 'ConveyorStatusReport"
  "edac1cb1f807055427a86099e42b8c69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConveyorStatusReport>)))
  "Returns full string definition for message of type '<ConveyorStatusReport>"
  (cl:format cl:nil "Header header~%string type~%~%int8 CONVEYOR_STATUS_REVERSE = -1~%int8 CONVEYOR_STATUS_STOP = 0~%int8 CONVEYOR_STATUS_FORWARD = 1~%~%int8 conveyor1_status~%int8 conveyor2_status~%~%bool is_loaded_conveyor1_1~%bool is_loaded_conveyor1_2~%bool is_loaded_conveyor2_1~%bool is_loaded_conveyor2_2~%~%bool is_alarm_conveyor1~%bool is_alarm_conveyor2~%~%bool door_open_status~%~%bool fall_prevention_device_status~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConveyorStatusReport)))
  "Returns full string definition for message of type 'ConveyorStatusReport"
  (cl:format cl:nil "Header header~%string type~%~%int8 CONVEYOR_STATUS_REVERSE = -1~%int8 CONVEYOR_STATUS_STOP = 0~%int8 CONVEYOR_STATUS_FORWARD = 1~%~%int8 conveyor1_status~%int8 conveyor2_status~%~%bool is_loaded_conveyor1_1~%bool is_loaded_conveyor1_2~%bool is_loaded_conveyor2_1~%bool is_loaded_conveyor2_2~%~%bool is_alarm_conveyor1~%bool is_alarm_conveyor2~%~%bool door_open_status~%~%bool fall_prevention_device_status~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConveyorStatusReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConveyorStatusReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ConveyorStatusReport
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':conveyor1_status (conveyor1_status msg))
    (cl:cons ':conveyor2_status (conveyor2_status msg))
    (cl:cons ':is_loaded_conveyor1_1 (is_loaded_conveyor1_1 msg))
    (cl:cons ':is_loaded_conveyor1_2 (is_loaded_conveyor1_2 msg))
    (cl:cons ':is_loaded_conveyor2_1 (is_loaded_conveyor2_1 msg))
    (cl:cons ':is_loaded_conveyor2_2 (is_loaded_conveyor2_2 msg))
    (cl:cons ':is_alarm_conveyor1 (is_alarm_conveyor1 msg))
    (cl:cons ':is_alarm_conveyor2 (is_alarm_conveyor2 msg))
    (cl:cons ':door_open_status (door_open_status msg))
    (cl:cons ':fall_prevention_device_status (fall_prevention_device_status msg))
))
