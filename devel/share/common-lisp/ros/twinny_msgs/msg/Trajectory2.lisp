; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude Trajectory2.msg.html

(cl:defclass <Trajectory2> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (command_mode
    :reader command_mode
    :initarg :command_mode
    :type cl:fixnum
    :initform 0)
   (command_value
    :reader command_value
    :initarg :command_value
    :type cl:fixnum
    :initform 0)
   (path_legnth
    :reader path_legnth
    :initarg :path_legnth
    :type cl:fixnum
    :initform 0)
   (sampling_period
    :reader sampling_period
    :initarg :sampling_period
    :type cl:float
    :initform 0.0)
   (state
    :reader state
    :initarg :state
    :type (cl:vector twinny_msgs-msg:DWMRState)
   :initform (cl:make-array 201 :element-type 'twinny_msgs-msg:DWMRState :initial-element (cl:make-instance 'twinny_msgs-msg:DWMRState)))
   (object
    :reader object
    :initarg :object
    :type twinny_msgs-msg:Position
    :initform (cl:make-instance 'twinny_msgs-msg:Position)))
)

(cl:defclass Trajectory2 (<Trajectory2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectory2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectory2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<Trajectory2> is deprecated: use twinny_msgs-msg:Trajectory2 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Trajectory2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'command_mode-val :lambda-list '(m))
(cl:defmethod command_mode-val ((m <Trajectory2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:command_mode-val is deprecated.  Use twinny_msgs-msg:command_mode instead.")
  (command_mode m))

(cl:ensure-generic-function 'command_value-val :lambda-list '(m))
(cl:defmethod command_value-val ((m <Trajectory2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:command_value-val is deprecated.  Use twinny_msgs-msg:command_value instead.")
  (command_value m))

(cl:ensure-generic-function 'path_legnth-val :lambda-list '(m))
(cl:defmethod path_legnth-val ((m <Trajectory2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:path_legnth-val is deprecated.  Use twinny_msgs-msg:path_legnth instead.")
  (path_legnth m))

(cl:ensure-generic-function 'sampling_period-val :lambda-list '(m))
(cl:defmethod sampling_period-val ((m <Trajectory2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:sampling_period-val is deprecated.  Use twinny_msgs-msg:sampling_period instead.")
  (sampling_period m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Trajectory2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:state-val is deprecated.  Use twinny_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <Trajectory2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:object-val is deprecated.  Use twinny_msgs-msg:object instead.")
  (object m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Trajectory2>)))
    "Constants for message type '<Trajectory2>"
  '((:MAX_LENGTH . 200)
    (:NORMAL . 0)
    (:VEL_ONLY . 1)
    (:E_STOP . 2)
    (:STOP_AND_ROTATION . 3)
    (:FOCUSING . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Trajectory2)))
    "Constants for message type 'Trajectory2"
  '((:MAX_LENGTH . 200)
    (:NORMAL . 0)
    (:VEL_ONLY . 1)
    (:E_STOP . 2)
    (:STOP_AND_ROTATION . 3)
    (:FOCUSING . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectory2>) ostream)
  "Serializes a message object of type '<Trajectory2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_legnth)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sampling_period))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'state))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectory2>) istream)
  "Deserializes a message object of type '<Trajectory2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_legnth)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sampling_period) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array 201))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i 201)
    (cl:setf (cl:aref vals i) (cl:make-instance 'twinny_msgs-msg:DWMRState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectory2>)))
  "Returns string type for a message object of type '<Trajectory2>"
  "twinny_msgs/Trajectory2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory2)))
  "Returns string type for a message object of type 'Trajectory2"
  "twinny_msgs/Trajectory2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectory2>)))
  "Returns md5sum for a message object of type '<Trajectory2>"
  "18cd86ccdebc7c18b59adf258bbbe2f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectory2)))
  "Returns md5sum for a message object of type 'Trajectory2"
  "18cd86ccdebc7c18b59adf258bbbe2f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectory2>)))
  "Returns full string definition for message of type '<Trajectory2>"
  (cl:format cl:nil "Header header~%uint8 MAX_LENGTH=200~%~%uint8 NORMAL=0~%uint8 VEL_ONLY=1~%uint8 E_STOP=2~%uint8 STOP_AND_ROTATION=3~%~%uint8 FOCUSING=4~%~%uint8 command_mode~%uint8 command_value~%uint8 path_legnth~%~%float64 sampling_period~%~%twinny_msgs/DWMRState[201] state~%~%twinny_msgs/Position object~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: twinny_msgs/DWMRState~%twinny_msgs/LinearAngular velocity~%twinny_msgs/Pose3D pose~%================================================================================~%MSG: twinny_msgs/LinearAngular~%float64 linear~%float64 angular~%~%================================================================================~%MSG: twinny_msgs/Pose3D~%Header header~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: twinny_msgs/Position~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectory2)))
  "Returns full string definition for message of type 'Trajectory2"
  (cl:format cl:nil "Header header~%uint8 MAX_LENGTH=200~%~%uint8 NORMAL=0~%uint8 VEL_ONLY=1~%uint8 E_STOP=2~%uint8 STOP_AND_ROTATION=3~%~%uint8 FOCUSING=4~%~%uint8 command_mode~%uint8 command_value~%uint8 path_legnth~%~%float64 sampling_period~%~%twinny_msgs/DWMRState[201] state~%~%twinny_msgs/Position object~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: twinny_msgs/DWMRState~%twinny_msgs/LinearAngular velocity~%twinny_msgs/Pose3D pose~%================================================================================~%MSG: twinny_msgs/LinearAngular~%float64 linear~%float64 angular~%~%================================================================================~%MSG: twinny_msgs/Pose3D~%Header header~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: twinny_msgs/Position~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectory2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectory2>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectory2
    (cl:cons ':header (header msg))
    (cl:cons ':command_mode (command_mode msg))
    (cl:cons ':command_value (command_value msg))
    (cl:cons ':path_legnth (path_legnth msg))
    (cl:cons ':sampling_period (sampling_period msg))
    (cl:cons ':state (state msg))
    (cl:cons ':object (object msg))
))
