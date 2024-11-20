; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude MarkerPose2DArray.msg.html

(cl:defclass <MarkerPose2DArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (markerPose2D
    :reader markerPose2D
    :initarg :markerPose2D
    :type (cl:vector twinny_msgs-msg:MarkerPose2D)
   :initform (cl:make-array 0 :element-type 'twinny_msgs-msg:MarkerPose2D :initial-element (cl:make-instance 'twinny_msgs-msg:MarkerPose2D))))
)

(cl:defclass MarkerPose2DArray (<MarkerPose2DArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MarkerPose2DArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MarkerPose2DArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<MarkerPose2DArray> is deprecated: use twinny_msgs-msg:MarkerPose2DArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MarkerPose2DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'markerPose2D-val :lambda-list '(m))
(cl:defmethod markerPose2D-val ((m <MarkerPose2DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:markerPose2D-val is deprecated.  Use twinny_msgs-msg:markerPose2D instead.")
  (markerPose2D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MarkerPose2DArray>) ostream)
  "Serializes a message object of type '<MarkerPose2DArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markerPose2D))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'markerPose2D))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MarkerPose2DArray>) istream)
  "Deserializes a message object of type '<MarkerPose2DArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'markerPose2D) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markerPose2D)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'twinny_msgs-msg:MarkerPose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MarkerPose2DArray>)))
  "Returns string type for a message object of type '<MarkerPose2DArray>"
  "twinny_msgs/MarkerPose2DArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MarkerPose2DArray)))
  "Returns string type for a message object of type 'MarkerPose2DArray"
  "twinny_msgs/MarkerPose2DArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MarkerPose2DArray>)))
  "Returns md5sum for a message object of type '<MarkerPose2DArray>"
  "ef13624f97fd199db36b03b16978e671")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MarkerPose2DArray)))
  "Returns md5sum for a message object of type 'MarkerPose2DArray"
  "ef13624f97fd199db36b03b16978e671")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MarkerPose2DArray>)))
  "Returns full string definition for message of type '<MarkerPose2DArray>"
  (cl:format cl:nil "Header header~%~%twinny_msgs/MarkerPose2D[] markerPose2D~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: twinny_msgs/MarkerPose2D~%Header header~%~%uint8 state~%uint8 SUCCESS=1~%uint8 FAILED_TO_DETECT=2~%uint8 FAILED_TO_GET_CAMERA_DATA=3~%~%uint8 markerId~%~%geometry_msgs/Pose2D pose~%~%float32 distance~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MarkerPose2DArray)))
  "Returns full string definition for message of type 'MarkerPose2DArray"
  (cl:format cl:nil "Header header~%~%twinny_msgs/MarkerPose2D[] markerPose2D~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: twinny_msgs/MarkerPose2D~%Header header~%~%uint8 state~%uint8 SUCCESS=1~%uint8 FAILED_TO_DETECT=2~%uint8 FAILED_TO_GET_CAMERA_DATA=3~%~%uint8 markerId~%~%geometry_msgs/Pose2D pose~%~%float32 distance~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MarkerPose2DArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markerPose2D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MarkerPose2DArray>))
  "Converts a ROS message object to a list"
  (cl:list 'MarkerPose2DArray
    (cl:cons ':header (header msg))
    (cl:cons ':markerPose2D (markerPose2D msg))
))
