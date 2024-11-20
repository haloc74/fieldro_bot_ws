; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude ManualArmReport.msg.html

(cl:defclass <ManualArmReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hand_grip_forward_backward_report
    :reader hand_grip_forward_backward_report
    :initarg :hand_grip_forward_backward_report
    :type cl:fixnum
    :initform 0)
   (cylinder_forward_backward_report
    :reader cylinder_forward_backward_report
    :initarg :cylinder_forward_backward_report
    :type cl:fixnum
    :initform 0)
   (battery_cylinder_forward_backward_report
    :reader battery_cylinder_forward_backward_report
    :initarg :battery_cylinder_forward_backward_report
    :type cl:fixnum
    :initform 0)
   (magazine01_lock_unlock_report
    :reader magazine01_lock_unlock_report
    :initarg :magazine01_lock_unlock_report
    :type cl:fixnum
    :initform 0)
   (magazine02_lock_unlock_report
    :reader magazine02_lock_unlock_report
    :initarg :magazine02_lock_unlock_report
    :type cl:fixnum
    :initform 0)
   (cylinder_up_down_report
    :reader cylinder_up_down_report
    :initarg :cylinder_up_down_report
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ManualArmReport (<ManualArmReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManualArmReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManualArmReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<ManualArmReport> is deprecated: use twinny_msgs-msg:ManualArmReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ManualArmReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'hand_grip_forward_backward_report-val :lambda-list '(m))
(cl:defmethod hand_grip_forward_backward_report-val ((m <ManualArmReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:hand_grip_forward_backward_report-val is deprecated.  Use twinny_msgs-msg:hand_grip_forward_backward_report instead.")
  (hand_grip_forward_backward_report m))

(cl:ensure-generic-function 'cylinder_forward_backward_report-val :lambda-list '(m))
(cl:defmethod cylinder_forward_backward_report-val ((m <ManualArmReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:cylinder_forward_backward_report-val is deprecated.  Use twinny_msgs-msg:cylinder_forward_backward_report instead.")
  (cylinder_forward_backward_report m))

(cl:ensure-generic-function 'battery_cylinder_forward_backward_report-val :lambda-list '(m))
(cl:defmethod battery_cylinder_forward_backward_report-val ((m <ManualArmReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:battery_cylinder_forward_backward_report-val is deprecated.  Use twinny_msgs-msg:battery_cylinder_forward_backward_report instead.")
  (battery_cylinder_forward_backward_report m))

(cl:ensure-generic-function 'magazine01_lock_unlock_report-val :lambda-list '(m))
(cl:defmethod magazine01_lock_unlock_report-val ((m <ManualArmReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:magazine01_lock_unlock_report-val is deprecated.  Use twinny_msgs-msg:magazine01_lock_unlock_report instead.")
  (magazine01_lock_unlock_report m))

(cl:ensure-generic-function 'magazine02_lock_unlock_report-val :lambda-list '(m))
(cl:defmethod magazine02_lock_unlock_report-val ((m <ManualArmReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:magazine02_lock_unlock_report-val is deprecated.  Use twinny_msgs-msg:magazine02_lock_unlock_report instead.")
  (magazine02_lock_unlock_report m))

(cl:ensure-generic-function 'cylinder_up_down_report-val :lambda-list '(m))
(cl:defmethod cylinder_up_down_report-val ((m <ManualArmReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:cylinder_up_down_report-val is deprecated.  Use twinny_msgs-msg:cylinder_up_down_report instead.")
  (cylinder_up_down_report m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManualArmReport>)))
    "Constants for message type '<ManualArmReport>"
  '((:NOT_COMPLETE . 0)
    (:FORWARD_COMPLETE . 1)
    (:BACKWARD_COMPLETE . 2)
    (:LOCK_COMPLETE . 1)
    (:UNLOCK_COMPLETE . 2)
    (:UP_COMPLETE . 1)
    (:DOWN_COMPLETE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManualArmReport)))
    "Constants for message type 'ManualArmReport"
  '((:NOT_COMPLETE . 0)
    (:FORWARD_COMPLETE . 1)
    (:BACKWARD_COMPLETE . 2)
    (:LOCK_COMPLETE . 1)
    (:UNLOCK_COMPLETE . 2)
    (:UP_COMPLETE . 1)
    (:DOWN_COMPLETE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManualArmReport>) ostream)
  "Serializes a message object of type '<ManualArmReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_grip_forward_backward_report)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cylinder_forward_backward_report)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_cylinder_forward_backward_report)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magazine01_lock_unlock_report)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magazine02_lock_unlock_report)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cylinder_up_down_report)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManualArmReport>) istream)
  "Deserializes a message object of type '<ManualArmReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_grip_forward_backward_report)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cylinder_forward_backward_report)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_cylinder_forward_backward_report)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magazine01_lock_unlock_report)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magazine02_lock_unlock_report)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cylinder_up_down_report)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManualArmReport>)))
  "Returns string type for a message object of type '<ManualArmReport>"
  "twinny_msgs/ManualArmReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManualArmReport)))
  "Returns string type for a message object of type 'ManualArmReport"
  "twinny_msgs/ManualArmReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManualArmReport>)))
  "Returns md5sum for a message object of type '<ManualArmReport>"
  "10bf00d36649a07410532bfaed58534a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManualArmReport)))
  "Returns md5sum for a message object of type 'ManualArmReport"
  "10bf00d36649a07410532bfaed58534a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManualArmReport>)))
  "Returns full string definition for message of type '<ManualArmReport>"
  (cl:format cl:nil "Header header~%~%uint8 NOT_COMPLETE = 0~%~%uint8 FORWARD_COMPLETE = 1~%uint8 BACKWARD_COMPLETE = 2~%~%uint8 hand_grip_forward_backward_report~%uint8 cylinder_forward_backward_report~%uint8 battery_cylinder_forward_backward_report~%~%uint8 LOCK_COMPLETE = 1~%uint8 UNLOCK_COMPLETE = 2~%~%uint8 magazine01_lock_unlock_report~%uint8 magazine02_lock_unlock_report~%~%uint8 UP_COMPLETE = 1~%uint8 DOWN_COMPLETE = 2~%~%uint8 cylinder_up_down_report~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManualArmReport)))
  "Returns full string definition for message of type 'ManualArmReport"
  (cl:format cl:nil "Header header~%~%uint8 NOT_COMPLETE = 0~%~%uint8 FORWARD_COMPLETE = 1~%uint8 BACKWARD_COMPLETE = 2~%~%uint8 hand_grip_forward_backward_report~%uint8 cylinder_forward_backward_report~%uint8 battery_cylinder_forward_backward_report~%~%uint8 LOCK_COMPLETE = 1~%uint8 UNLOCK_COMPLETE = 2~%~%uint8 magazine01_lock_unlock_report~%uint8 magazine02_lock_unlock_report~%~%uint8 UP_COMPLETE = 1~%uint8 DOWN_COMPLETE = 2~%~%uint8 cylinder_up_down_report~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManualArmReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManualArmReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ManualArmReport
    (cl:cons ':header (header msg))
    (cl:cons ':hand_grip_forward_backward_report (hand_grip_forward_backward_report msg))
    (cl:cons ':cylinder_forward_backward_report (cylinder_forward_backward_report msg))
    (cl:cons ':battery_cylinder_forward_backward_report (battery_cylinder_forward_backward_report msg))
    (cl:cons ':magazine01_lock_unlock_report (magazine01_lock_unlock_report msg))
    (cl:cons ':magazine02_lock_unlock_report (magazine02_lock_unlock_report msg))
    (cl:cons ':cylinder_up_down_report (cylinder_up_down_report msg))
))
