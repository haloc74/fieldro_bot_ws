; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude SafetyLiDARCommand.msg.html

(cl:defclass <SafetyLiDARCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SafetyLiDARCommand (<SafetyLiDARCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyLiDARCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyLiDARCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<SafetyLiDARCommand> is deprecated: use twinny_msgs-msg:SafetyLiDARCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SafetyLiDARCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SafetyLiDARCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:command-val is deprecated.  Use twinny_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SafetyLiDARCommand>)))
    "Constants for message type '<SafetyLiDARCommand>"
  '((:CMD_LIDAR_ON . 0)
    (:CMD_LIDAR_OSSD_MUTE . 1)
    (:CMD_LIDAR_RESTART . 2)
    (:CMD_LIDAR_OFF . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SafetyLiDARCommand)))
    "Constants for message type 'SafetyLiDARCommand"
  '((:CMD_LIDAR_ON . 0)
    (:CMD_LIDAR_OSSD_MUTE . 1)
    (:CMD_LIDAR_RESTART . 2)
    (:CMD_LIDAR_OFF . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyLiDARCommand>) ostream)
  "Serializes a message object of type '<SafetyLiDARCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyLiDARCommand>) istream)
  "Deserializes a message object of type '<SafetyLiDARCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyLiDARCommand>)))
  "Returns string type for a message object of type '<SafetyLiDARCommand>"
  "twinny_msgs/SafetyLiDARCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyLiDARCommand)))
  "Returns string type for a message object of type 'SafetyLiDARCommand"
  "twinny_msgs/SafetyLiDARCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyLiDARCommand>)))
  "Returns md5sum for a message object of type '<SafetyLiDARCommand>"
  "2e4963d7a7964226168f009745a41eab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyLiDARCommand)))
  "Returns md5sum for a message object of type 'SafetyLiDARCommand"
  "2e4963d7a7964226168f009745a41eab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyLiDARCommand>)))
  "Returns full string definition for message of type '<SafetyLiDARCommand>"
  (cl:format cl:nil "Header header~%~%uint16 CMD_LIDAR_ON=0~%uint16 CMD_LIDAR_OSSD_MUTE=1~%uint16 CMD_LIDAR_RESTART=2~%uint16 CMD_LIDAR_OFF=3~%~%uint16 command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyLiDARCommand)))
  "Returns full string definition for message of type 'SafetyLiDARCommand"
  (cl:format cl:nil "Header header~%~%uint16 CMD_LIDAR_ON=0~%uint16 CMD_LIDAR_OSSD_MUTE=1~%uint16 CMD_LIDAR_RESTART=2~%uint16 CMD_LIDAR_OFF=3~%~%uint16 command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyLiDARCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyLiDARCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyLiDARCommand
    (cl:cons ':header (header msg))
    (cl:cons ':command (command msg))
))
