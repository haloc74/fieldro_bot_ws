; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-srv)


;//! \htmlinclude Kinematics_Mode-request.msg.html

(cl:defclass <Kinematics_Mode-request> (roslisp-msg-protocol:ros-message)
  ((input_mode
    :reader input_mode
    :initarg :input_mode
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass Kinematics_Mode-request (<Kinematics_Mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Kinematics_Mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Kinematics_Mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<Kinematics_Mode-request> is deprecated: use twinny_msgs-srv:Kinematics_Mode-request instead.")))

(cl:ensure-generic-function 'input_mode-val :lambda-list '(m))
(cl:defmethod input_mode-val ((m <Kinematics_Mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:input_mode-val is deprecated.  Use twinny_msgs-srv:input_mode instead.")
  (input_mode m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Kinematics_Mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:x-val is deprecated.  Use twinny_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Kinematics_Mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:y-val is deprecated.  Use twinny_msgs-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <Kinematics_Mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:theta-val is deprecated.  Use twinny_msgs-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Kinematics_Mode-request>)))
    "Constants for message type '<Kinematics_Mode-request>"
  '((:REQUEST_MODE . 0)
    (:MANUAL_MODE . 1)
    (:AUTO_MODE . 2)
    (:IO_RESET_POSE . 3)
    (:IO_SET_POSE . 4)
    (:SET_ROBOT_RADIUS . 5)
    (:SET_WHEEL_RADIUS . 6)
    (:SET_GEAR_RATIO . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Kinematics_Mode-request)))
    "Constants for message type 'Kinematics_Mode-request"
  '((:REQUEST_MODE . 0)
    (:MANUAL_MODE . 1)
    (:AUTO_MODE . 2)
    (:IO_RESET_POSE . 3)
    (:IO_SET_POSE . 4)
    (:SET_ROBOT_RADIUS . 5)
    (:SET_WHEEL_RADIUS . 6)
    (:SET_GEAR_RATIO . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Kinematics_Mode-request>) ostream)
  "Serializes a message object of type '<Kinematics_Mode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'input_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Kinematics_Mode-request>) istream)
  "Deserializes a message object of type '<Kinematics_Mode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'input_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Kinematics_Mode-request>)))
  "Returns string type for a service object of type '<Kinematics_Mode-request>"
  "twinny_msgs/Kinematics_ModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Kinematics_Mode-request)))
  "Returns string type for a service object of type 'Kinematics_Mode-request"
  "twinny_msgs/Kinematics_ModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Kinematics_Mode-request>)))
  "Returns md5sum for a message object of type '<Kinematics_Mode-request>"
  "7998890966523349a389338408eec21f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Kinematics_Mode-request)))
  "Returns md5sum for a message object of type 'Kinematics_Mode-request"
  "7998890966523349a389338408eec21f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Kinematics_Mode-request>)))
  "Returns full string definition for message of type '<Kinematics_Mode-request>"
  (cl:format cl:nil "uint8 REQUEST_MODE=0~%uint8 MANUAL_MODE=1~%uint8 AUTO_MODE=2~%~%uint8 IO_RESET_POSE=3~%uint8 IO_SET_POSE=4~%~%uint8 SET_ROBOT_RADIUS=5~%uint8 SET_WHEEL_RADIUS=6~%uint8 SET_GEAR_RATIO=7~%~%uint8 input_mode~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Kinematics_Mode-request)))
  "Returns full string definition for message of type 'Kinematics_Mode-request"
  (cl:format cl:nil "uint8 REQUEST_MODE=0~%uint8 MANUAL_MODE=1~%uint8 AUTO_MODE=2~%~%uint8 IO_RESET_POSE=3~%uint8 IO_SET_POSE=4~%~%uint8 SET_ROBOT_RADIUS=5~%uint8 SET_WHEEL_RADIUS=6~%uint8 SET_GEAR_RATIO=7~%~%uint8 input_mode~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Kinematics_Mode-request>))
  (cl:+ 0
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Kinematics_Mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Kinematics_Mode-request
    (cl:cons ':input_mode (input_mode msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
;//! \htmlinclude Kinematics_Mode-response.msg.html

(cl:defclass <Kinematics_Mode-response> (roslisp-msg-protocol:ros-message)
  ((current_mode
    :reader current_mode
    :initarg :current_mode
    :type cl:fixnum
    :initform 0)
   (current_arg
    :reader current_arg
    :initarg :current_arg
    :type cl:float
    :initform 0.0))
)

(cl:defclass Kinematics_Mode-response (<Kinematics_Mode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Kinematics_Mode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Kinematics_Mode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<Kinematics_Mode-response> is deprecated: use twinny_msgs-srv:Kinematics_Mode-response instead.")))

(cl:ensure-generic-function 'current_mode-val :lambda-list '(m))
(cl:defmethod current_mode-val ((m <Kinematics_Mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:current_mode-val is deprecated.  Use twinny_msgs-srv:current_mode instead.")
  (current_mode m))

(cl:ensure-generic-function 'current_arg-val :lambda-list '(m))
(cl:defmethod current_arg-val ((m <Kinematics_Mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:current_arg-val is deprecated.  Use twinny_msgs-srv:current_arg instead.")
  (current_arg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Kinematics_Mode-response>) ostream)
  "Serializes a message object of type '<Kinematics_Mode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_arg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Kinematics_Mode-response>) istream)
  "Deserializes a message object of type '<Kinematics_Mode-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_arg) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Kinematics_Mode-response>)))
  "Returns string type for a service object of type '<Kinematics_Mode-response>"
  "twinny_msgs/Kinematics_ModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Kinematics_Mode-response)))
  "Returns string type for a service object of type 'Kinematics_Mode-response"
  "twinny_msgs/Kinematics_ModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Kinematics_Mode-response>)))
  "Returns md5sum for a message object of type '<Kinematics_Mode-response>"
  "7998890966523349a389338408eec21f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Kinematics_Mode-response)))
  "Returns md5sum for a message object of type 'Kinematics_Mode-response"
  "7998890966523349a389338408eec21f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Kinematics_Mode-response>)))
  "Returns full string definition for message of type '<Kinematics_Mode-response>"
  (cl:format cl:nil "uint8 current_mode~%float64 current_arg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Kinematics_Mode-response)))
  "Returns full string definition for message of type 'Kinematics_Mode-response"
  (cl:format cl:nil "uint8 current_mode~%float64 current_arg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Kinematics_Mode-response>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Kinematics_Mode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Kinematics_Mode-response
    (cl:cons ':current_mode (current_mode msg))
    (cl:cons ':current_arg (current_arg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Kinematics_Mode)))
  'Kinematics_Mode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Kinematics_Mode)))
  'Kinematics_Mode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Kinematics_Mode)))
  "Returns string type for a service object of type '<Kinematics_Mode>"
  "twinny_msgs/Kinematics_Mode")