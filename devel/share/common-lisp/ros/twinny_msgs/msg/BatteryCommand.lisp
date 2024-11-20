; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude BatteryCommand.msg.html

(cl:defclass <BatteryCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Charger_start_command
    :reader Charger_start_command
    :initarg :Charger_start_command
    :type cl:fixnum
    :initform 0)
   (Docking_start_command
    :reader Docking_start_command
    :initarg :Docking_start_command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BatteryCommand (<BatteryCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<BatteryCommand> is deprecated: use twinny_msgs-msg:BatteryCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BatteryCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Charger_start_command-val :lambda-list '(m))
(cl:defmethod Charger_start_command-val ((m <BatteryCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Charger_start_command-val is deprecated.  Use twinny_msgs-msg:Charger_start_command instead.")
  (Charger_start_command m))

(cl:ensure-generic-function 'Docking_start_command-val :lambda-list '(m))
(cl:defmethod Docking_start_command-val ((m <BatteryCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Docking_start_command-val is deprecated.  Use twinny_msgs-msg:Docking_start_command instead.")
  (Docking_start_command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BatteryCommand>)))
    "Constants for message type '<BatteryCommand>"
  '((:CHARGER_STOP . 0)
    (:CHARGER_START . 1)
    (:DOCKING_STOP . 0)
    (:DOCKING_START . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BatteryCommand)))
    "Constants for message type 'BatteryCommand"
  '((:CHARGER_STOP . 0)
    (:CHARGER_START . 1)
    (:DOCKING_STOP . 0)
    (:DOCKING_START . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryCommand>) ostream)
  "Serializes a message object of type '<BatteryCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Charger_start_command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Docking_start_command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryCommand>) istream)
  "Deserializes a message object of type '<BatteryCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Charger_start_command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Docking_start_command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryCommand>)))
  "Returns string type for a message object of type '<BatteryCommand>"
  "twinny_msgs/BatteryCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryCommand)))
  "Returns string type for a message object of type 'BatteryCommand"
  "twinny_msgs/BatteryCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryCommand>)))
  "Returns md5sum for a message object of type '<BatteryCommand>"
  "dc2720bd2873f6b3e7e414316c28d4d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryCommand)))
  "Returns md5sum for a message object of type 'BatteryCommand"
  "dc2720bd2873f6b3e7e414316c28d4d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryCommand>)))
  "Returns full string definition for message of type '<BatteryCommand>"
  (cl:format cl:nil "Header header~%~%uint8 CHARGER_STOP = 0~%uint8 CHARGER_START = 1~%~%uint8 DOCKING_STOP = 0~%uint8 DOCKING_START =1~%~%uint8 Charger_start_command~%uint8 Docking_start_command~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryCommand)))
  "Returns full string definition for message of type 'BatteryCommand"
  (cl:format cl:nil "Header header~%~%uint8 CHARGER_STOP = 0~%uint8 CHARGER_START = 1~%~%uint8 DOCKING_STOP = 0~%uint8 DOCKING_START =1~%~%uint8 Charger_start_command~%uint8 Docking_start_command~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryCommand
    (cl:cons ':header (header msg))
    (cl:cons ':Charger_start_command (Charger_start_command msg))
    (cl:cons ':Docking_start_command (Docking_start_command msg))
))
