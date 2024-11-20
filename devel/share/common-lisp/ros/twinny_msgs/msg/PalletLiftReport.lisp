; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude PalletLiftReport.msg.html

(cl:defclass <PalletLiftReport> (roslisp-msg-protocol:ros-message)
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
   (lift_state
    :reader lift_state
    :initarg :lift_state
    :type cl:string
    :initform "")
   (is_robot_loaded
    :reader is_robot_loaded
    :initarg :is_robot_loaded
    :type cl:boolean
    :initform cl:nil)
   (is_station_loaded
    :reader is_station_loaded
    :initarg :is_station_loaded
    :type cl:boolean
    :initform cl:nil)
   (is_alarm
    :reader is_alarm
    :initarg :is_alarm
    :type cl:boolean
    :initform cl:nil)
   (last_command
    :reader last_command
    :initarg :last_command
    :type cl:string
    :initform ""))
)

(cl:defclass PalletLiftReport (<PalletLiftReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PalletLiftReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PalletLiftReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<PalletLiftReport> is deprecated: use twinny_msgs-msg:PalletLiftReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PalletLiftReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PalletLiftReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'lift_state-val :lambda-list '(m))
(cl:defmethod lift_state-val ((m <PalletLiftReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:lift_state-val is deprecated.  Use twinny_msgs-msg:lift_state instead.")
  (lift_state m))

(cl:ensure-generic-function 'is_robot_loaded-val :lambda-list '(m))
(cl:defmethod is_robot_loaded-val ((m <PalletLiftReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:is_robot_loaded-val is deprecated.  Use twinny_msgs-msg:is_robot_loaded instead.")
  (is_robot_loaded m))

(cl:ensure-generic-function 'is_station_loaded-val :lambda-list '(m))
(cl:defmethod is_station_loaded-val ((m <PalletLiftReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:is_station_loaded-val is deprecated.  Use twinny_msgs-msg:is_station_loaded instead.")
  (is_station_loaded m))

(cl:ensure-generic-function 'is_alarm-val :lambda-list '(m))
(cl:defmethod is_alarm-val ((m <PalletLiftReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:is_alarm-val is deprecated.  Use twinny_msgs-msg:is_alarm instead.")
  (is_alarm m))

(cl:ensure-generic-function 'last_command-val :lambda-list '(m))
(cl:defmethod last_command-val ((m <PalletLiftReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:last_command-val is deprecated.  Use twinny_msgs-msg:last_command instead.")
  (last_command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PalletLiftReport>)))
    "Constants for message type '<PalletLiftReport>"
  '((:MOVING . moving)
    (:SETTLE . settle)
    (:READY_TO_LOAD . ready_to_load)
    (:LOADED . loaded)
    (:READY_TO_UNLOAD . ready_to_unload)
    (:UNLOADED . unloaded))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PalletLiftReport)))
    "Constants for message type 'PalletLiftReport"
  '((:MOVING . moving)
    (:SETTLE . settle)
    (:READY_TO_LOAD . ready_to_load)
    (:LOADED . loaded)
    (:READY_TO_UNLOAD . ready_to_unload)
    (:UNLOADED . unloaded))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PalletLiftReport>) ostream)
  "Serializes a message object of type '<PalletLiftReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lift_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lift_state))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_robot_loaded) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_station_loaded) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_alarm) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'last_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'last_command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PalletLiftReport>) istream)
  "Deserializes a message object of type '<PalletLiftReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lift_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lift_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_robot_loaded) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_station_loaded) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'last_command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PalletLiftReport>)))
  "Returns string type for a message object of type '<PalletLiftReport>"
  "twinny_msgs/PalletLiftReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PalletLiftReport)))
  "Returns string type for a message object of type 'PalletLiftReport"
  "twinny_msgs/PalletLiftReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PalletLiftReport>)))
  "Returns md5sum for a message object of type '<PalletLiftReport>"
  "00b1730e0b05bdf263d85c2341b4fab7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PalletLiftReport)))
  "Returns md5sum for a message object of type 'PalletLiftReport"
  "00b1730e0b05bdf263d85c2341b4fab7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PalletLiftReport>)))
  "Returns full string definition for message of type '<PalletLiftReport>"
  (cl:format cl:nil "string MOVING=moving~%string SETTLE=settle~%string READY_TO_LOAD=ready_to_load~%string LOADED=loaded~%string READY_TO_UNLOAD=ready_to_unload~%string UNLOADED=unloaded~%~%Header header~%string type~%string lift_state~%bool is_robot_loaded~%bool is_station_loaded~%bool is_alarm~%string last_command~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PalletLiftReport)))
  "Returns full string definition for message of type 'PalletLiftReport"
  (cl:format cl:nil "string MOVING=moving~%string SETTLE=settle~%string READY_TO_LOAD=ready_to_load~%string LOADED=loaded~%string READY_TO_UNLOAD=ready_to_unload~%string UNLOADED=unloaded~%~%Header header~%string type~%string lift_state~%bool is_robot_loaded~%bool is_station_loaded~%bool is_alarm~%string last_command~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PalletLiftReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'lift_state))
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'last_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PalletLiftReport>))
  "Converts a ROS message object to a list"
  (cl:list 'PalletLiftReport
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':lift_state (lift_state msg))
    (cl:cons ':is_robot_loaded (is_robot_loaded msg))
    (cl:cons ':is_station_loaded (is_station_loaded msg))
    (cl:cons ':is_alarm (is_alarm msg))
    (cl:cons ':last_command (last_command msg))
))
