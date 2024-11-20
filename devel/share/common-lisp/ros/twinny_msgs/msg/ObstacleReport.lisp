; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude ObstacleReport.msg.html

(cl:defclass <ObstacleReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Sensor_number
    :reader Sensor_number
    :initarg :Sensor_number
    :type cl:fixnum
    :initform 0)
   (Distance
    :reader Distance
    :initarg :Distance
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ObstacleReport (<ObstacleReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<ObstacleReport> is deprecated: use twinny_msgs-msg:ObstacleReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObstacleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Sensor_number-val :lambda-list '(m))
(cl:defmethod Sensor_number-val ((m <ObstacleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Sensor_number-val is deprecated.  Use twinny_msgs-msg:Sensor_number instead.")
  (Sensor_number m))

(cl:ensure-generic-function 'Distance-val :lambda-list '(m))
(cl:defmethod Distance-val ((m <ObstacleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Distance-val is deprecated.  Use twinny_msgs-msg:Distance instead.")
  (Distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleReport>) ostream)
  "Serializes a message object of type '<ObstacleReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Sensor_number)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'Distance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleReport>) istream)
  "Deserializes a message object of type '<ObstacleReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Sensor_number)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Distance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Distance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleReport>)))
  "Returns string type for a message object of type '<ObstacleReport>"
  "twinny_msgs/ObstacleReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleReport)))
  "Returns string type for a message object of type 'ObstacleReport"
  "twinny_msgs/ObstacleReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleReport>)))
  "Returns md5sum for a message object of type '<ObstacleReport>"
  "e97cdc4a6c06095094927910baeaaf10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleReport)))
  "Returns md5sum for a message object of type 'ObstacleReport"
  "e97cdc4a6c06095094927910baeaaf10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleReport>)))
  "Returns full string definition for message of type '<ObstacleReport>"
  (cl:format cl:nil "Header header ~%~%uint8 Sensor_number~%uint8[] Distance~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleReport)))
  "Returns full string definition for message of type 'ObstacleReport"
  (cl:format cl:nil "Header header ~%~%uint8 Sensor_number~%uint8[] Distance~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Distance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleReport
    (cl:cons ':header (header msg))
    (cl:cons ':Sensor_number (Sensor_number msg))
    (cl:cons ':Distance (Distance msg))
))
