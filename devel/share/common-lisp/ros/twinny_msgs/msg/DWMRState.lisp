; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude DWMRState.msg.html

(cl:defclass <DWMRState> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type twinny_msgs-msg:LinearAngular
    :initform (cl:make-instance 'twinny_msgs-msg:LinearAngular))
   (pose
    :reader pose
    :initarg :pose
    :type twinny_msgs-msg:Pose3D
    :initform (cl:make-instance 'twinny_msgs-msg:Pose3D)))
)

(cl:defclass DWMRState (<DWMRState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DWMRState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DWMRState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<DWMRState> is deprecated: use twinny_msgs-msg:DWMRState instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <DWMRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:velocity-val is deprecated.  Use twinny_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <DWMRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:pose-val is deprecated.  Use twinny_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DWMRState>) ostream)
  "Serializes a message object of type '<DWMRState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DWMRState>) istream)
  "Deserializes a message object of type '<DWMRState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DWMRState>)))
  "Returns string type for a message object of type '<DWMRState>"
  "twinny_msgs/DWMRState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DWMRState)))
  "Returns string type for a message object of type 'DWMRState"
  "twinny_msgs/DWMRState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DWMRState>)))
  "Returns md5sum for a message object of type '<DWMRState>"
  "2e83e1ba0db9b6fa987145cd987133b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DWMRState)))
  "Returns md5sum for a message object of type 'DWMRState"
  "2e83e1ba0db9b6fa987145cd987133b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DWMRState>)))
  "Returns full string definition for message of type '<DWMRState>"
  (cl:format cl:nil "twinny_msgs/LinearAngular velocity~%twinny_msgs/Pose3D pose~%================================================================================~%MSG: twinny_msgs/LinearAngular~%float64 linear~%float64 angular~%~%================================================================================~%MSG: twinny_msgs/Pose3D~%Header header~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DWMRState)))
  "Returns full string definition for message of type 'DWMRState"
  (cl:format cl:nil "twinny_msgs/LinearAngular velocity~%twinny_msgs/Pose3D pose~%================================================================================~%MSG: twinny_msgs/LinearAngular~%float64 linear~%float64 angular~%~%================================================================================~%MSG: twinny_msgs/Pose3D~%Header header~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DWMRState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DWMRState>))
  "Converts a ROS message object to a list"
  (cl:list 'DWMRState
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':pose (pose msg))
))
