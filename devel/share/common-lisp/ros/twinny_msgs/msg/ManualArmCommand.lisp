; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude ManualArmCommand.msg.html

(cl:defclass <ManualArmCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hand_grip_forward_backward
    :reader hand_grip_forward_backward
    :initarg :hand_grip_forward_backward
    :type cl:fixnum
    :initform 0)
   (cylinder_forward_backward
    :reader cylinder_forward_backward
    :initarg :cylinder_forward_backward
    :type cl:fixnum
    :initform 0)
   (battery_cylinder_forward_backward
    :reader battery_cylinder_forward_backward
    :initarg :battery_cylinder_forward_backward
    :type cl:fixnum
    :initform 0)
   (magazine01_lock
    :reader magazine01_lock
    :initarg :magazine01_lock
    :type cl:fixnum
    :initform 0)
   (magazine02_lock
    :reader magazine02_lock
    :initarg :magazine02_lock
    :type cl:fixnum
    :initform 0)
   (cylinder_up_down
    :reader cylinder_up_down
    :initarg :cylinder_up_down
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ManualArmCommand (<ManualArmCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManualArmCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManualArmCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<ManualArmCommand> is deprecated: use twinny_msgs-msg:ManualArmCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ManualArmCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'hand_grip_forward_backward-val :lambda-list '(m))
(cl:defmethod hand_grip_forward_backward-val ((m <ManualArmCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:hand_grip_forward_backward-val is deprecated.  Use twinny_msgs-msg:hand_grip_forward_backward instead.")
  (hand_grip_forward_backward m))

(cl:ensure-generic-function 'cylinder_forward_backward-val :lambda-list '(m))
(cl:defmethod cylinder_forward_backward-val ((m <ManualArmCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:cylinder_forward_backward-val is deprecated.  Use twinny_msgs-msg:cylinder_forward_backward instead.")
  (cylinder_forward_backward m))

(cl:ensure-generic-function 'battery_cylinder_forward_backward-val :lambda-list '(m))
(cl:defmethod battery_cylinder_forward_backward-val ((m <ManualArmCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:battery_cylinder_forward_backward-val is deprecated.  Use twinny_msgs-msg:battery_cylinder_forward_backward instead.")
  (battery_cylinder_forward_backward m))

(cl:ensure-generic-function 'magazine01_lock-val :lambda-list '(m))
(cl:defmethod magazine01_lock-val ((m <ManualArmCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:magazine01_lock-val is deprecated.  Use twinny_msgs-msg:magazine01_lock instead.")
  (magazine01_lock m))

(cl:ensure-generic-function 'magazine02_lock-val :lambda-list '(m))
(cl:defmethod magazine02_lock-val ((m <ManualArmCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:magazine02_lock-val is deprecated.  Use twinny_msgs-msg:magazine02_lock instead.")
  (magazine02_lock m))

(cl:ensure-generic-function 'cylinder_up_down-val :lambda-list '(m))
(cl:defmethod cylinder_up_down-val ((m <ManualArmCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:cylinder_up_down-val is deprecated.  Use twinny_msgs-msg:cylinder_up_down instead.")
  (cylinder_up_down m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManualArmCommand>)))
    "Constants for message type '<ManualArmCommand>"
  '((:NO_COMMAND . 0)
    (:FORWARD . 1)
    (:BACKWARD . 2)
    (:MAGAZINE_UNLOCK . 1)
    (:MAGAZINE_LOCK . 2)
    (:CYLINDER_UP . 1)
    (:CYLINDER_DOWN . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManualArmCommand)))
    "Constants for message type 'ManualArmCommand"
  '((:NO_COMMAND . 0)
    (:FORWARD . 1)
    (:BACKWARD . 2)
    (:MAGAZINE_UNLOCK . 1)
    (:MAGAZINE_LOCK . 2)
    (:CYLINDER_UP . 1)
    (:CYLINDER_DOWN . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManualArmCommand>) ostream)
  "Serializes a message object of type '<ManualArmCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_grip_forward_backward)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cylinder_forward_backward)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_cylinder_forward_backward)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magazine01_lock)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magazine02_lock)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cylinder_up_down)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManualArmCommand>) istream)
  "Deserializes a message object of type '<ManualArmCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_grip_forward_backward)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cylinder_forward_backward)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_cylinder_forward_backward)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magazine01_lock)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magazine02_lock)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cylinder_up_down)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManualArmCommand>)))
  "Returns string type for a message object of type '<ManualArmCommand>"
  "twinny_msgs/ManualArmCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManualArmCommand)))
  "Returns string type for a message object of type 'ManualArmCommand"
  "twinny_msgs/ManualArmCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManualArmCommand>)))
  "Returns md5sum for a message object of type '<ManualArmCommand>"
  "8da8f6f4c09538ece1a14440b85a65a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManualArmCommand)))
  "Returns md5sum for a message object of type 'ManualArmCommand"
  "8da8f6f4c09538ece1a14440b85a65a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManualArmCommand>)))
  "Returns full string definition for message of type '<ManualArmCommand>"
  (cl:format cl:nil "Header header~%~%uint8 NO_COMMAND = 0~%~%uint8 FORWARD = 1~%uint8 BACKWARD = 2~%~%uint8 hand_grip_forward_backward~%uint8 cylinder_forward_backward~%uint8 battery_cylinder_forward_backward~%~%uint8 MAGAZINE_UNLOCK = 1~%uint8 MAGAZINE_LOCK = 2~%~%uint8 magazine01_lock~%uint8 magazine02_lock~%~%uint8 CYLINDER_UP = 1~%uint8 CYLINDER_DOWN = 2~%~%uint8 cylinder_up_down~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManualArmCommand)))
  "Returns full string definition for message of type 'ManualArmCommand"
  (cl:format cl:nil "Header header~%~%uint8 NO_COMMAND = 0~%~%uint8 FORWARD = 1~%uint8 BACKWARD = 2~%~%uint8 hand_grip_forward_backward~%uint8 cylinder_forward_backward~%uint8 battery_cylinder_forward_backward~%~%uint8 MAGAZINE_UNLOCK = 1~%uint8 MAGAZINE_LOCK = 2~%~%uint8 magazine01_lock~%uint8 magazine02_lock~%~%uint8 CYLINDER_UP = 1~%uint8 CYLINDER_DOWN = 2~%~%uint8 cylinder_up_down~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManualArmCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManualArmCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ManualArmCommand
    (cl:cons ':header (header msg))
    (cl:cons ':hand_grip_forward_backward (hand_grip_forward_backward msg))
    (cl:cons ':cylinder_forward_backward (cylinder_forward_backward msg))
    (cl:cons ':battery_cylinder_forward_backward (battery_cylinder_forward_backward msg))
    (cl:cons ':magazine01_lock (magazine01_lock msg))
    (cl:cons ':magazine02_lock (magazine02_lock msg))
    (cl:cons ':cylinder_up_down (cylinder_up_down msg))
))
