; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude PathCommand.msg.html

(cl:defclass <PathCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (valid_length
    :reader valid_length
    :initarg :valid_length
    :type cl:fixnum
    :initform 0)
   (path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 200 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D)))
   (front_vel
    :reader front_vel
    :initarg :front_vel
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (current_vel
    :reader current_vel
    :initarg :current_vel
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (current_pose
    :reader current_pose
    :initarg :current_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (mode
    :reader mode
    :initarg :mode
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 200 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass PathCommand (<PathCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<PathCommand> is deprecated: use twinny_msgs-msg:PathCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PathCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'valid_length-val :lambda-list '(m))
(cl:defmethod valid_length-val ((m <PathCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:valid_length-val is deprecated.  Use twinny_msgs-msg:valid_length instead.")
  (valid_length m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <PathCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:path-val is deprecated.  Use twinny_msgs-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'front_vel-val :lambda-list '(m))
(cl:defmethod front_vel-val ((m <PathCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:front_vel-val is deprecated.  Use twinny_msgs-msg:front_vel instead.")
  (front_vel m))

(cl:ensure-generic-function 'current_vel-val :lambda-list '(m))
(cl:defmethod current_vel-val ((m <PathCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:current_vel-val is deprecated.  Use twinny_msgs-msg:current_vel instead.")
  (current_vel m))

(cl:ensure-generic-function 'current_pose-val :lambda-list '(m))
(cl:defmethod current_pose-val ((m <PathCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:current_pose-val is deprecated.  Use twinny_msgs-msg:current_pose instead.")
  (current_pose m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <PathCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:mode-val is deprecated.  Use twinny_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PathCommand>)))
    "Constants for message type '<PathCommand>"
  '((:MAX_LENGTH . 200)
    (:DRIVING_MODE . 1)
    (:ROTATING_MODE . 2)
    (:ROTATING_MODE_IN . 3)
    (:ROTATING_MODE_OUT_CW . 4)
    (:ROTATING_MODE_OUT_CCW . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PathCommand)))
    "Constants for message type 'PathCommand"
  '((:MAX_LENGTH . 200)
    (:DRIVING_MODE . 1)
    (:ROTATING_MODE . 2)
    (:ROTATING_MODE_IN . 3)
    (:ROTATING_MODE_OUT_CW . 4)
    (:ROTATING_MODE_OUT_CCW . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathCommand>) ostream)
  "Serializes a message object of type '<PathCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid_length)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_pose) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathCommand>) istream)
  "Deserializes a message object of type '<PathCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid_length)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array 200))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i 200)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_pose) istream)
  (cl:setf (cl:slot-value msg 'mode) (cl:make-array 200))
  (cl:let ((vals (cl:slot-value msg 'mode)))
    (cl:dotimes (i 200)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathCommand>)))
  "Returns string type for a message object of type '<PathCommand>"
  "twinny_msgs/PathCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathCommand)))
  "Returns string type for a message object of type 'PathCommand"
  "twinny_msgs/PathCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathCommand>)))
  "Returns md5sum for a message object of type '<PathCommand>"
  "07a34c8ab221feb76ed11d3cef84b7c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathCommand)))
  "Returns md5sum for a message object of type 'PathCommand"
  "07a34c8ab221feb76ed11d3cef84b7c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathCommand>)))
  "Returns full string definition for message of type '<PathCommand>"
  (cl:format cl:nil "Header header~%~%uint8 MAX_LENGTH=200~%uint8 valid_length~%~%geometry_msgs/Pose2D[200] path~%geometry_msgs/Twist front_vel~%geometry_msgs/Twist current_vel~%geometry_msgs/Pose2D current_pose~%~%uint8[200] mode~%uint8 DRIVING_MODE=1~%uint8 ROTATING_MODE=2~%uint8 ROTATING_MODE_IN=3~%uint8 ROTATING_MODE_OUT_CW=4~%uint8 ROTATING_MODE_OUT_CCW=5~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathCommand)))
  "Returns full string definition for message of type 'PathCommand"
  (cl:format cl:nil "Header header~%~%uint8 MAX_LENGTH=200~%uint8 valid_length~%~%geometry_msgs/Pose2D[200] path~%geometry_msgs/Twist front_vel~%geometry_msgs/Twist current_vel~%geometry_msgs/Pose2D current_pose~%~%uint8[200] mode~%uint8 DRIVING_MODE=1~%uint8 ROTATING_MODE=2~%uint8 ROTATING_MODE_IN=3~%uint8 ROTATING_MODE_OUT_CW=4~%uint8 ROTATING_MODE_OUT_CCW=5~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_pose))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'mode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'PathCommand
    (cl:cons ':header (header msg))
    (cl:cons ':valid_length (valid_length msg))
    (cl:cons ':path (path msg))
    (cl:cons ':front_vel (front_vel msg))
    (cl:cons ':current_vel (current_vel msg))
    (cl:cons ':current_pose (current_pose msg))
    (cl:cons ':mode (mode msg))
))
