; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-srv)


;//! \htmlinclude StationRecognizerCommand-request.msg.html

(cl:defclass <StationRecognizerCommand-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (frame_name
    :reader frame_name
    :initarg :frame_name
    :type cl:string
    :initform "")
   (current_robot_pose
    :reader current_robot_pose
    :initarg :current_robot_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (candidate_pose
    :reader candidate_pose
    :initarg :candidate_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (roi_length
    :reader roi_length
    :initarg :roi_length
    :type cl:float
    :initform 0.0)
   (extra_field
    :reader extra_field
    :initarg :extra_field
    :type cl:string
    :initform ""))
)

(cl:defclass StationRecognizerCommand-request (<StationRecognizerCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationRecognizerCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationRecognizerCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<StationRecognizerCommand-request> is deprecated: use twinny_msgs-srv:StationRecognizerCommand-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <StationRecognizerCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:type-val is deprecated.  Use twinny_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <StationRecognizerCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:command-val is deprecated.  Use twinny_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'frame_name-val :lambda-list '(m))
(cl:defmethod frame_name-val ((m <StationRecognizerCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:frame_name-val is deprecated.  Use twinny_msgs-srv:frame_name instead.")
  (frame_name m))

(cl:ensure-generic-function 'current_robot_pose-val :lambda-list '(m))
(cl:defmethod current_robot_pose-val ((m <StationRecognizerCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:current_robot_pose-val is deprecated.  Use twinny_msgs-srv:current_robot_pose instead.")
  (current_robot_pose m))

(cl:ensure-generic-function 'candidate_pose-val :lambda-list '(m))
(cl:defmethod candidate_pose-val ((m <StationRecognizerCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:candidate_pose-val is deprecated.  Use twinny_msgs-srv:candidate_pose instead.")
  (candidate_pose m))

(cl:ensure-generic-function 'roi_length-val :lambda-list '(m))
(cl:defmethod roi_length-val ((m <StationRecognizerCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:roi_length-val is deprecated.  Use twinny_msgs-srv:roi_length instead.")
  (roi_length m))

(cl:ensure-generic-function 'extra_field-val :lambda-list '(m))
(cl:defmethod extra_field-val ((m <StationRecognizerCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:extra_field-val is deprecated.  Use twinny_msgs-srv:extra_field instead.")
  (extra_field m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StationRecognizerCommand-request>)))
    "Constants for message type '<StationRecognizerCommand-request>"
  '((:START . 0)
    (:STOP . 1)
    (:PAUSE . 2)
    (:RESUME . 3)
    (:RESET_KALMAN . 4)
    (:GET_STATION . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StationRecognizerCommand-request)))
    "Constants for message type 'StationRecognizerCommand-request"
  '((:START . 0)
    (:STOP . 1)
    (:PAUSE . 2)
    (:RESUME . 3)
    (:RESET_KALMAN . 4)
    (:GET_STATION . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationRecognizerCommand-request>) ostream)
  "Serializes a message object of type '<StationRecognizerCommand-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_robot_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'candidate_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'roi_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'extra_field))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'extra_field))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationRecognizerCommand-request>) istream)
  "Deserializes a message object of type '<StationRecognizerCommand-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_robot_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'candidate_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roi_length) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationRecognizerCommand-request>)))
  "Returns string type for a service object of type '<StationRecognizerCommand-request>"
  "twinny_msgs/StationRecognizerCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationRecognizerCommand-request)))
  "Returns string type for a service object of type 'StationRecognizerCommand-request"
  "twinny_msgs/StationRecognizerCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationRecognizerCommand-request>)))
  "Returns md5sum for a message object of type '<StationRecognizerCommand-request>"
  "fc40b6d334b5e6c2cc71670efc1b918a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationRecognizerCommand-request)))
  "Returns md5sum for a message object of type 'StationRecognizerCommand-request"
  "fc40b6d334b5e6c2cc71670efc1b918a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationRecognizerCommand-request>)))
  "Returns full string definition for message of type '<StationRecognizerCommand-request>"
  (cl:format cl:nil "string type~%~%uint8 START = 0~%uint8 STOP = 1~%uint8 PAUSE = 2~%uint8 RESUME = 3~%uint8 RESET_KALMAN = 4~%uint8 GET_STATION = 5~%uint8 command~%~%string frame_name~%geometry_msgs/Pose2D current_robot_pose~%geometry_msgs/Pose2D candidate_pose~%~%float64 roi_length~%~%string extra_field~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationRecognizerCommand-request)))
  "Returns full string definition for message of type 'StationRecognizerCommand-request"
  (cl:format cl:nil "string type~%~%uint8 START = 0~%uint8 STOP = 1~%uint8 PAUSE = 2~%uint8 RESUME = 3~%uint8 RESET_KALMAN = 4~%uint8 GET_STATION = 5~%uint8 command~%~%string frame_name~%geometry_msgs/Pose2D current_robot_pose~%geometry_msgs/Pose2D candidate_pose~%~%float64 roi_length~%~%string extra_field~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationRecognizerCommand-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     1
     4 (cl:length (cl:slot-value msg 'frame_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_robot_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'candidate_pose))
     8
     4 (cl:length (cl:slot-value msg 'extra_field))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationRecognizerCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StationRecognizerCommand-request
    (cl:cons ':type (type msg))
    (cl:cons ':command (command msg))
    (cl:cons ':frame_name (frame_name msg))
    (cl:cons ':current_robot_pose (current_robot_pose msg))
    (cl:cons ':candidate_pose (candidate_pose msg))
    (cl:cons ':roi_length (roi_length msg))
    (cl:cons ':extra_field (extra_field msg))
))
;//! \htmlinclude StationRecognizerCommand-response.msg.html

(cl:defclass <StationRecognizerCommand-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (is_find
    :reader is_find
    :initarg :is_find
    :type cl:boolean
    :initform cl:nil)
   (estimated_station_pose
    :reader estimated_station_pose
    :initarg :estimated_station_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (extra_field
    :reader extra_field
    :initarg :extra_field
    :type cl:string
    :initform ""))
)

(cl:defclass StationRecognizerCommand-response (<StationRecognizerCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationRecognizerCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationRecognizerCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<StationRecognizerCommand-response> is deprecated: use twinny_msgs-srv:StationRecognizerCommand-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StationRecognizerCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:result-val is deprecated.  Use twinny_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'is_find-val :lambda-list '(m))
(cl:defmethod is_find-val ((m <StationRecognizerCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:is_find-val is deprecated.  Use twinny_msgs-srv:is_find instead.")
  (is_find m))

(cl:ensure-generic-function 'estimated_station_pose-val :lambda-list '(m))
(cl:defmethod estimated_station_pose-val ((m <StationRecognizerCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:estimated_station_pose-val is deprecated.  Use twinny_msgs-srv:estimated_station_pose instead.")
  (estimated_station_pose m))

(cl:ensure-generic-function 'extra_field-val :lambda-list '(m))
(cl:defmethod extra_field-val ((m <StationRecognizerCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:extra_field-val is deprecated.  Use twinny_msgs-srv:extra_field instead.")
  (extra_field m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StationRecognizerCommand-response>)))
    "Constants for message type '<StationRecognizerCommand-response>"
  '((:SUCCESS . 1)
    (:FAIL . -1)
    (:ERROR . -999)
    (:INVALID_MODE . -10)
    (:INVALID_STATE . -11)
    (:INVALID_COMMAND . -12)
    (:INVALID_TYPE . -13)
    (:INVALID_FRAME . -14)
    (:INVALID_CURRENT . -15)
    (:NOT_WORKING_DUETO_TOO_CLOSED . -20)
    (:FAIL_DUETO_BOUND_ERROR . -21)
    (:FAIL_DUETO_SIZE_ERROR . -22)
    (:FAIL_DUETO_LENGTH_ERROR . -23))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StationRecognizerCommand-response)))
    "Constants for message type 'StationRecognizerCommand-response"
  '((:SUCCESS . 1)
    (:FAIL . -1)
    (:ERROR . -999)
    (:INVALID_MODE . -10)
    (:INVALID_STATE . -11)
    (:INVALID_COMMAND . -12)
    (:INVALID_TYPE . -13)
    (:INVALID_FRAME . -14)
    (:INVALID_CURRENT . -15)
    (:NOT_WORKING_DUETO_TOO_CLOSED . -20)
    (:FAIL_DUETO_BOUND_ERROR . -21)
    (:FAIL_DUETO_SIZE_ERROR . -22)
    (:FAIL_DUETO_LENGTH_ERROR . -23))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationRecognizerCommand-response>) ostream)
  "Serializes a message object of type '<StationRecognizerCommand-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_find) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimated_station_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'extra_field))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'extra_field))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationRecognizerCommand-response>) istream)
  "Deserializes a message object of type '<StationRecognizerCommand-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_find) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estimated_station_pose) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationRecognizerCommand-response>)))
  "Returns string type for a service object of type '<StationRecognizerCommand-response>"
  "twinny_msgs/StationRecognizerCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationRecognizerCommand-response)))
  "Returns string type for a service object of type 'StationRecognizerCommand-response"
  "twinny_msgs/StationRecognizerCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationRecognizerCommand-response>)))
  "Returns md5sum for a message object of type '<StationRecognizerCommand-response>"
  "fc40b6d334b5e6c2cc71670efc1b918a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationRecognizerCommand-response)))
  "Returns md5sum for a message object of type 'StationRecognizerCommand-response"
  "fc40b6d334b5e6c2cc71670efc1b918a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationRecognizerCommand-response>)))
  "Returns full string definition for message of type '<StationRecognizerCommand-response>"
  (cl:format cl:nil "int32 SUCCESS = 1~%int32 FAIL = -1~%int32 ERROR = -999~%~%int32 INVALID_MODE = -10~%int32 INVALID_STATE= -11~%int32 INVALID_COMMAND = -12~%int32 INVALID_TYPE = -13~%int32 INVALID_FRAME = -14~%int32 INVALID_CURRENT = -15~%~%int32 NOT_WORKING_DUETO_TOO_CLOSED = -20~%int32 FAIL_DUETO_BOUND_ERROR = -21~%int32 FAIL_DUETO_SIZE_ERROR = -22~%int32 FAIL_DUETO_LENGTH_ERROR = -23~%~%int32 result~%~%bool is_find~%~%geometry_msgs/Pose2D estimated_station_pose~%string extra_field~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationRecognizerCommand-response)))
  "Returns full string definition for message of type 'StationRecognizerCommand-response"
  (cl:format cl:nil "int32 SUCCESS = 1~%int32 FAIL = -1~%int32 ERROR = -999~%~%int32 INVALID_MODE = -10~%int32 INVALID_STATE= -11~%int32 INVALID_COMMAND = -12~%int32 INVALID_TYPE = -13~%int32 INVALID_FRAME = -14~%int32 INVALID_CURRENT = -15~%~%int32 NOT_WORKING_DUETO_TOO_CLOSED = -20~%int32 FAIL_DUETO_BOUND_ERROR = -21~%int32 FAIL_DUETO_SIZE_ERROR = -22~%int32 FAIL_DUETO_LENGTH_ERROR = -23~%~%int32 result~%~%bool is_find~%~%geometry_msgs/Pose2D estimated_station_pose~%string extra_field~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationRecognizerCommand-response>))
  (cl:+ 0
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimated_station_pose))
     4 (cl:length (cl:slot-value msg 'extra_field))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationRecognizerCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StationRecognizerCommand-response
    (cl:cons ':result (result msg))
    (cl:cons ':is_find (is_find msg))
    (cl:cons ':estimated_station_pose (estimated_station_pose msg))
    (cl:cons ':extra_field (extra_field msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StationRecognizerCommand)))
  'StationRecognizerCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StationRecognizerCommand)))
  'StationRecognizerCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationRecognizerCommand)))
  "Returns string type for a service object of type '<StationRecognizerCommand>"
  "twinny_msgs/StationRecognizerCommand")