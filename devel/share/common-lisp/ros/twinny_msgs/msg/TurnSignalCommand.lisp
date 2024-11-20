; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude TurnSignalCommand.msg.html

(cl:defclass <TurnSignalCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Command
    :reader Command
    :initarg :Command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TurnSignalCommand (<TurnSignalCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnSignalCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnSignalCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<TurnSignalCommand> is deprecated: use twinny_msgs-msg:TurnSignalCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TurnSignalCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Command-val :lambda-list '(m))
(cl:defmethod Command-val ((m <TurnSignalCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Command-val is deprecated.  Use twinny_msgs-msg:Command instead.")
  (Command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TurnSignalCommand>)))
    "Constants for message type '<TurnSignalCommand>"
  '((:OFF . 0)
    (:TURN_LEFT . 1)
    (:TURN_RIGHT . 2)
    (:ALL . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TurnSignalCommand)))
    "Constants for message type 'TurnSignalCommand"
  '((:OFF . 0)
    (:TURN_LEFT . 1)
    (:TURN_RIGHT . 2)
    (:ALL . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnSignalCommand>) ostream)
  "Serializes a message object of type '<TurnSignalCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnSignalCommand>) istream)
  "Deserializes a message object of type '<TurnSignalCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnSignalCommand>)))
  "Returns string type for a message object of type '<TurnSignalCommand>"
  "twinny_msgs/TurnSignalCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnSignalCommand)))
  "Returns string type for a message object of type 'TurnSignalCommand"
  "twinny_msgs/TurnSignalCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnSignalCommand>)))
  "Returns md5sum for a message object of type '<TurnSignalCommand>"
  "7a90b548f2d6c123772559249a5f53f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnSignalCommand)))
  "Returns md5sum for a message object of type 'TurnSignalCommand"
  "7a90b548f2d6c123772559249a5f53f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnSignalCommand>)))
  "Returns full string definition for message of type '<TurnSignalCommand>"
  (cl:format cl:nil "Header header  ~%~%uint8 Command~%~%uint8 OFF=0~%uint8 TURN_LEFT=1~%uint8 TURN_RIGHT=2~%uint8 ALL=3~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnSignalCommand)))
  "Returns full string definition for message of type 'TurnSignalCommand"
  (cl:format cl:nil "Header header  ~%~%uint8 Command~%~%uint8 OFF=0~%uint8 TURN_LEFT=1~%uint8 TURN_RIGHT=2~%uint8 ALL=3~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnSignalCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnSignalCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnSignalCommand
    (cl:cons ':header (header msg))
    (cl:cons ':Command (Command msg))
))
