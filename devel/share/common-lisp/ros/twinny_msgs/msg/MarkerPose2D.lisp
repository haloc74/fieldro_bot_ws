; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude MarkerPose2D.msg.html

(cl:defclass <MarkerPose2D> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (markerId
    :reader markerId
    :initarg :markerId
    :type cl:fixnum
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass MarkerPose2D (<MarkerPose2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MarkerPose2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MarkerPose2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<MarkerPose2D> is deprecated: use twinny_msgs-msg:MarkerPose2D instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MarkerPose2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <MarkerPose2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:state-val is deprecated.  Use twinny_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'markerId-val :lambda-list '(m))
(cl:defmethod markerId-val ((m <MarkerPose2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:markerId-val is deprecated.  Use twinny_msgs-msg:markerId instead.")
  (markerId m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MarkerPose2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:pose-val is deprecated.  Use twinny_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <MarkerPose2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:distance-val is deprecated.  Use twinny_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MarkerPose2D>)))
    "Constants for message type '<MarkerPose2D>"
  '((:SUCCESS . 1)
    (:FAILED_TO_DETECT . 2)
    (:FAILED_TO_GET_CAMERA_DATA . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MarkerPose2D)))
    "Constants for message type 'MarkerPose2D"
  '((:SUCCESS . 1)
    (:FAILED_TO_DETECT . 2)
    (:FAILED_TO_GET_CAMERA_DATA . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MarkerPose2D>) ostream)
  "Serializes a message object of type '<MarkerPose2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'markerId)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MarkerPose2D>) istream)
  "Deserializes a message object of type '<MarkerPose2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'markerId)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MarkerPose2D>)))
  "Returns string type for a message object of type '<MarkerPose2D>"
  "twinny_msgs/MarkerPose2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MarkerPose2D)))
  "Returns string type for a message object of type 'MarkerPose2D"
  "twinny_msgs/MarkerPose2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MarkerPose2D>)))
  "Returns md5sum for a message object of type '<MarkerPose2D>"
  "032142f65674bf083502ec1c00340075")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MarkerPose2D)))
  "Returns md5sum for a message object of type 'MarkerPose2D"
  "032142f65674bf083502ec1c00340075")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MarkerPose2D>)))
  "Returns full string definition for message of type '<MarkerPose2D>"
  (cl:format cl:nil "Header header~%~%uint8 state~%uint8 SUCCESS=1~%uint8 FAILED_TO_DETECT=2~%uint8 FAILED_TO_GET_CAMERA_DATA=3~%~%uint8 markerId~%~%geometry_msgs/Pose2D pose~%~%float32 distance~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MarkerPose2D)))
  "Returns full string definition for message of type 'MarkerPose2D"
  (cl:format cl:nil "Header header~%~%uint8 state~%uint8 SUCCESS=1~%uint8 FAILED_TO_DETECT=2~%uint8 FAILED_TO_GET_CAMERA_DATA=3~%~%uint8 markerId~%~%geometry_msgs/Pose2D pose~%~%float32 distance~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MarkerPose2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MarkerPose2D>))
  "Converts a ROS message object to a list"
  (cl:list 'MarkerPose2D
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':markerId (markerId msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':distance (distance msg))
))
