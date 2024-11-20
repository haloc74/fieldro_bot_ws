; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude DesiredActualCommand.msg.html

(cl:defclass <DesiredActualCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (desiredPose
    :reader desiredPose
    :initarg :desiredPose
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (desiredVel
    :reader desiredVel
    :initarg :desiredVel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (actualPose
    :reader actualPose
    :initarg :actualPose
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (actualVel
    :reader actualVel
    :initarg :actualVel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (commandVel
    :reader commandVel
    :initarg :commandVel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass DesiredActualCommand (<DesiredActualCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DesiredActualCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DesiredActualCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<DesiredActualCommand> is deprecated: use twinny_msgs-msg:DesiredActualCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DesiredActualCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'desiredPose-val :lambda-list '(m))
(cl:defmethod desiredPose-val ((m <DesiredActualCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:desiredPose-val is deprecated.  Use twinny_msgs-msg:desiredPose instead.")
  (desiredPose m))

(cl:ensure-generic-function 'desiredVel-val :lambda-list '(m))
(cl:defmethod desiredVel-val ((m <DesiredActualCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:desiredVel-val is deprecated.  Use twinny_msgs-msg:desiredVel instead.")
  (desiredVel m))

(cl:ensure-generic-function 'actualPose-val :lambda-list '(m))
(cl:defmethod actualPose-val ((m <DesiredActualCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:actualPose-val is deprecated.  Use twinny_msgs-msg:actualPose instead.")
  (actualPose m))

(cl:ensure-generic-function 'actualVel-val :lambda-list '(m))
(cl:defmethod actualVel-val ((m <DesiredActualCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:actualVel-val is deprecated.  Use twinny_msgs-msg:actualVel instead.")
  (actualVel m))

(cl:ensure-generic-function 'commandVel-val :lambda-list '(m))
(cl:defmethod commandVel-val ((m <DesiredActualCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:commandVel-val is deprecated.  Use twinny_msgs-msg:commandVel instead.")
  (commandVel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DesiredActualCommand>) ostream)
  "Serializes a message object of type '<DesiredActualCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desiredPose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desiredVel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actualPose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actualVel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'commandVel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DesiredActualCommand>) istream)
  "Deserializes a message object of type '<DesiredActualCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desiredPose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desiredVel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actualPose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actualVel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'commandVel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DesiredActualCommand>)))
  "Returns string type for a message object of type '<DesiredActualCommand>"
  "twinny_msgs/DesiredActualCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DesiredActualCommand)))
  "Returns string type for a message object of type 'DesiredActualCommand"
  "twinny_msgs/DesiredActualCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DesiredActualCommand>)))
  "Returns md5sum for a message object of type '<DesiredActualCommand>"
  "eed852e2eabe4ebf8afd3f4ced2b8875")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DesiredActualCommand)))
  "Returns md5sum for a message object of type 'DesiredActualCommand"
  "eed852e2eabe4ebf8afd3f4ced2b8875")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DesiredActualCommand>)))
  "Returns full string definition for message of type '<DesiredActualCommand>"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 desiredPose~%geometry_msgs/Vector3 desiredVel~%geometry_msgs/Vector3 actualPose~%geometry_msgs/Vector3 actualVel~%geometry_msgs/Vector3 commandVel~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DesiredActualCommand)))
  "Returns full string definition for message of type 'DesiredActualCommand"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 desiredPose~%geometry_msgs/Vector3 desiredVel~%geometry_msgs/Vector3 actualPose~%geometry_msgs/Vector3 actualVel~%geometry_msgs/Vector3 commandVel~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DesiredActualCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desiredPose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desiredVel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actualPose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actualVel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'commandVel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DesiredActualCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'DesiredActualCommand
    (cl:cons ':header (header msg))
    (cl:cons ':desiredPose (desiredPose msg))
    (cl:cons ':desiredVel (desiredVel msg))
    (cl:cons ':actualPose (actualPose msg))
    (cl:cons ':actualVel (actualVel msg))
    (cl:cons ':commandVel (commandVel msg))
))
