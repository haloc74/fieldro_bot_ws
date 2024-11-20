; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude StationPoseReport.msg.html

(cl:defclass <StationPoseReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (station_pose
    :reader station_pose
    :initarg :station_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (reliability
    :reader reliability
    :initarg :reliability
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (extra_field
    :reader extra_field
    :initarg :extra_field
    :type cl:string
    :initform ""))
)

(cl:defclass StationPoseReport (<StationPoseReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationPoseReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationPoseReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<StationPoseReport> is deprecated: use twinny_msgs-msg:StationPoseReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StationPoseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <StationPoseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <StationPoseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:mode-val is deprecated.  Use twinny_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <StationPoseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:state-val is deprecated.  Use twinny_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'station_pose-val :lambda-list '(m))
(cl:defmethod station_pose-val ((m <StationPoseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:station_pose-val is deprecated.  Use twinny_msgs-msg:station_pose instead.")
  (station_pose m))

(cl:ensure-generic-function 'reliability-val :lambda-list '(m))
(cl:defmethod reliability-val ((m <StationPoseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:reliability-val is deprecated.  Use twinny_msgs-msg:reliability instead.")
  (reliability m))

(cl:ensure-generic-function 'extra_field-val :lambda-list '(m))
(cl:defmethod extra_field-val ((m <StationPoseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:extra_field-val is deprecated.  Use twinny_msgs-msg:extra_field instead.")
  (extra_field m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StationPoseReport>)))
    "Constants for message type '<StationPoseReport>"
  '((:UNKNOWN . unknown)
    (:PPS_O . pps_o)
    (:PPS_C . pps_c)
    (:VL . vl)
    (:START_MODE . 0)
    (:STOP_MODE . 1)
    (:PAUSE_MODE . 2)
    (:READY_STATE . 10)
    (:PROCESSING_STATE . 11)
    (:FOUND_STATE . 12)
    (:LOST_STATE . 13)
    (:ERROR_STATE . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StationPoseReport)))
    "Constants for message type 'StationPoseReport"
  '((:UNKNOWN . unknown)
    (:PPS_O . pps_o)
    (:PPS_C . pps_c)
    (:VL . vl)
    (:START_MODE . 0)
    (:STOP_MODE . 1)
    (:PAUSE_MODE . 2)
    (:READY_STATE . 10)
    (:PROCESSING_STATE . 11)
    (:FOUND_STATE . 12)
    (:LOST_STATE . 13)
    (:ERROR_STATE . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationPoseReport>) ostream)
  "Serializes a message object of type '<StationPoseReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'station_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reliability) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'extra_field))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'extra_field))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationPoseReport>) istream)
  "Deserializes a message object of type '<StationPoseReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'station_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reliability) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'extra_field) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'extra_field) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationPoseReport>)))
  "Returns string type for a message object of type '<StationPoseReport>"
  "twinny_msgs/StationPoseReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationPoseReport)))
  "Returns string type for a message object of type 'StationPoseReport"
  "twinny_msgs/StationPoseReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationPoseReport>)))
  "Returns md5sum for a message object of type '<StationPoseReport>"
  "314691c7f777c0fde4015cc5521a4d44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationPoseReport)))
  "Returns md5sum for a message object of type 'StationPoseReport"
  "314691c7f777c0fde4015cc5521a4d44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationPoseReport>)))
  "Returns full string definition for message of type '<StationPoseReport>"
  (cl:format cl:nil "std_msgs/Header header~%~%~%string UNKNOWN = unknown~%string PPS_O = pps_o~%string PPS_C = pps_c~%string VL = vl~%string type~%~%uint8 START_MODE = 0~%uint8 STOP_MODE = 1~%uint8 PAUSE_MODE = 2~%# uint8 ERROR_MODE = 3~%uint8 mode~%~%#uint8 DISABLE_STATE = 0~%#uint8 ENABLE_STATE = 1~%#uint8 WARNING_STATE = 2~%#uint8 PROCESSING_STATE = 3~% ~%uint8 READY_STATE = 10 #구동중이 아닐때, (STOP이거나 PAUSE mode일시에는 이걸로 고정)~%uint8 PROCESSING_STATE = 11 #DISABLE_STATE, PROCESSING_STATE, 아직 스테이션을 못찾음~%uint8 FOUND_STATE = 12 # 스테이션을 찾았음~%uint8 LOST_STATE = 13 # 스테이션을 찾았었으나(FOUND_STATE), 도중에 실패함. 이때 station_pose는 가장 마지막에 찾은 스테이션 정보가 입력됨.~%#uint8 FOUND_STABLE_STATE = 12 #ENABLE_STATE 스테이션을 잘 찾았음~%#uint8 FOUND_UNSTABLE_STATE = 13 #WARNING_STATE 스테이션을 찾았는데 좀 불안한 경우~%uint8 ERROR_STATE = 15 # 언제나 존재, 알고리즘 내부에서 문제갸 터진 경우. 초기화 필요/~%uint8 state~%~%geometry_msgs/Pose2D station_pose~%geometry_msgs/Pose2D reliability # station_pose의 +- 오차 범위를 나타낸다. 알 수 없는 경우 -1.0~%~%string extra_field~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationPoseReport)))
  "Returns full string definition for message of type 'StationPoseReport"
  (cl:format cl:nil "std_msgs/Header header~%~%~%string UNKNOWN = unknown~%string PPS_O = pps_o~%string PPS_C = pps_c~%string VL = vl~%string type~%~%uint8 START_MODE = 0~%uint8 STOP_MODE = 1~%uint8 PAUSE_MODE = 2~%# uint8 ERROR_MODE = 3~%uint8 mode~%~%#uint8 DISABLE_STATE = 0~%#uint8 ENABLE_STATE = 1~%#uint8 WARNING_STATE = 2~%#uint8 PROCESSING_STATE = 3~% ~%uint8 READY_STATE = 10 #구동중이 아닐때, (STOP이거나 PAUSE mode일시에는 이걸로 고정)~%uint8 PROCESSING_STATE = 11 #DISABLE_STATE, PROCESSING_STATE, 아직 스테이션을 못찾음~%uint8 FOUND_STATE = 12 # 스테이션을 찾았음~%uint8 LOST_STATE = 13 # 스테이션을 찾았었으나(FOUND_STATE), 도중에 실패함. 이때 station_pose는 가장 마지막에 찾은 스테이션 정보가 입력됨.~%#uint8 FOUND_STABLE_STATE = 12 #ENABLE_STATE 스테이션을 잘 찾았음~%#uint8 FOUND_UNSTABLE_STATE = 13 #WARNING_STATE 스테이션을 찾았는데 좀 불안한 경우~%uint8 ERROR_STATE = 15 # 언제나 존재, 알고리즘 내부에서 문제갸 터진 경우. 초기화 필요/~%uint8 state~%~%geometry_msgs/Pose2D station_pose~%geometry_msgs/Pose2D reliability # station_pose의 +- 오차 범위를 나타낸다. 알 수 없는 경우 -1.0~%~%string extra_field~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationPoseReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'station_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reliability))
     4 (cl:length (cl:slot-value msg 'extra_field))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationPoseReport>))
  "Converts a ROS message object to a list"
  (cl:list 'StationPoseReport
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':state (state msg))
    (cl:cons ':station_pose (station_pose msg))
    (cl:cons ':reliability (reliability msg))
    (cl:cons ':extra_field (extra_field msg))
))
