; Auto-generated. Do not edit!


(cl:in-package trash_bot-msg)


;//! \htmlinclude Pose.msg.html

(cl:defclass <Pose> (roslisp-msg-protocol:ros-message)
  ((x
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
    :initform 0.0)
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type cl:float
    :initform 0.0)
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type cl:float
    :initform 0.0)
   (US_1
    :reader US_1
    :initarg :US_1
    :type cl:fixnum
    :initform 0)
   (US_2
    :reader US_2
    :initarg :US_2
    :type cl:fixnum
    :initform 0)
   (US_3
    :reader US_3
    :initarg :US_3
    :type cl:fixnum
    :initform 0)
   (US_4
    :reader US_4
    :initarg :US_4
    :type cl:fixnum
    :initform 0)
   (platform_state
    :reader platform_state
    :initarg :platform_state
    :type cl:fixnum
    :initform 0)
   (left_motor_state
    :reader left_motor_state
    :initarg :left_motor_state
    :type cl:fixnum
    :initform 0)
   (right_motor_state
    :reader right_motor_state
    :initarg :right_motor_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Pose (<Pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trash_bot-msg:<Pose> is deprecated: use trash_bot-msg:Pose instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:x-val is deprecated.  Use trash_bot-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:y-val is deprecated.  Use trash_bot-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:theta-val is deprecated.  Use trash_bot-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:linear_velocity-val is deprecated.  Use trash_bot-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:angular_velocity-val is deprecated.  Use trash_bot-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'US_1-val :lambda-list '(m))
(cl:defmethod US_1-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:US_1-val is deprecated.  Use trash_bot-msg:US_1 instead.")
  (US_1 m))

(cl:ensure-generic-function 'US_2-val :lambda-list '(m))
(cl:defmethod US_2-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:US_2-val is deprecated.  Use trash_bot-msg:US_2 instead.")
  (US_2 m))

(cl:ensure-generic-function 'US_3-val :lambda-list '(m))
(cl:defmethod US_3-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:US_3-val is deprecated.  Use trash_bot-msg:US_3 instead.")
  (US_3 m))

(cl:ensure-generic-function 'US_4-val :lambda-list '(m))
(cl:defmethod US_4-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:US_4-val is deprecated.  Use trash_bot-msg:US_4 instead.")
  (US_4 m))

(cl:ensure-generic-function 'platform_state-val :lambda-list '(m))
(cl:defmethod platform_state-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:platform_state-val is deprecated.  Use trash_bot-msg:platform_state instead.")
  (platform_state m))

(cl:ensure-generic-function 'left_motor_state-val :lambda-list '(m))
(cl:defmethod left_motor_state-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:left_motor_state-val is deprecated.  Use trash_bot-msg:left_motor_state instead.")
  (left_motor_state m))

(cl:ensure-generic-function 'right_motor_state-val :lambda-list '(m))
(cl:defmethod right_motor_state-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:right_motor_state-val is deprecated.  Use trash_bot-msg:right_motor_state instead.")
  (right_motor_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pose>) ostream)
  "Serializes a message object of type '<Pose>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'platform_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_motor_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_motor_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pose>) istream)
  "Deserializes a message object of type '<Pose>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'platform_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_motor_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_motor_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pose>)))
  "Returns string type for a message object of type '<Pose>"
  "trash_bot/Pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pose)))
  "Returns string type for a message object of type 'Pose"
  "trash_bot/Pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pose>)))
  "Returns md5sum for a message object of type '<Pose>"
  "253d53f3482ae049afa845efe1727f65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pose)))
  "Returns md5sum for a message object of type 'Pose"
  "253d53f3482ae049afa845efe1727f65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pose>)))
  "Returns full string definition for message of type '<Pose>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 theta~%float32 linear_velocity~%float32 angular_velocity~%uint8 US_1~%uint8 US_2~%uint8 US_3~%uint8 US_4~%uint8 platform_state~%uint8 left_motor_state~%uint8 right_motor_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pose)))
  "Returns full string definition for message of type 'Pose"
  (cl:format cl:nil "float32 x~%float32 y~%float32 theta~%float32 linear_velocity~%float32 angular_velocity~%uint8 US_1~%uint8 US_2~%uint8 US_3~%uint8 US_4~%uint8 platform_state~%uint8 left_motor_state~%uint8 right_motor_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pose>))
  (cl:+ 0
     4
     4
     4
     4
     4
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pose>))
  "Converts a ROS message object to a list"
  (cl:list 'Pose
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':US_1 (US_1 msg))
    (cl:cons ':US_2 (US_2 msg))
    (cl:cons ':US_3 (US_3 msg))
    (cl:cons ':US_4 (US_4 msg))
    (cl:cons ':platform_state (platform_state msg))
    (cl:cons ':left_motor_state (left_motor_state msg))
    (cl:cons ':right_motor_state (right_motor_state msg))
))
