; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude JoystickStatus.msg.html

(cl:defclass <JoystickStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (joy_driver_status
    :reader joy_driver_status
    :initarg :joy_driver_status
    :type cl:string
    :initform "")
   (axes
    :reader axes
    :initarg :axes
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (button
    :reader button
    :initarg :button
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (joy_driver_enable_button
    :reader joy_driver_enable_button
    :initarg :joy_driver_enable_button
    :type cl:boolean
    :initform cl:nil)
   (reduce_velocity_button
    :reader reduce_velocity_button
    :initarg :reduce_velocity_button
    :type cl:boolean
    :initform cl:nil)
   (raise_velocity_button
    :reader raise_velocity_button
    :initarg :raise_velocity_button
    :type cl:boolean
    :initform cl:nil)
   (reset_velocity_button
    :reader reset_velocity_button
    :initarg :reset_velocity_button
    :type cl:boolean
    :initform cl:nil)
   (vel_scale
    :reader vel_scale
    :initarg :vel_scale
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
    :initform 0.0))
)

(cl:defclass JoystickStatus (<JoystickStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoystickStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoystickStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<JoystickStatus> is deprecated: use twinny_msgs-msg:JoystickStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JoystickStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'joy_driver_status-val :lambda-list '(m))
(cl:defmethod joy_driver_status-val ((m <JoystickStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:joy_driver_status-val is deprecated.  Use twinny_msgs-msg:joy_driver_status instead.")
  (joy_driver_status m))

(cl:ensure-generic-function 'axes-val :lambda-list '(m))
(cl:defmethod axes-val ((m <JoystickStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:axes-val is deprecated.  Use twinny_msgs-msg:axes instead.")
  (axes m))

(cl:ensure-generic-function 'button-val :lambda-list '(m))
(cl:defmethod button-val ((m <JoystickStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:button-val is deprecated.  Use twinny_msgs-msg:button instead.")
  (button m))

(cl:ensure-generic-function 'joy_driver_enable_button-val :lambda-list '(m))
(cl:defmethod joy_driver_enable_button-val ((m <JoystickStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:joy_driver_enable_button-val is deprecated.  Use twinny_msgs-msg:joy_driver_enable_button instead.")
  (joy_driver_enable_button m))

(cl:ensure-generic-function 'reduce_velocity_button-val :lambda-list '(m))
(cl:defmethod reduce_velocity_button-val ((m <JoystickStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:reduce_velocity_button-val is deprecated.  Use twinny_msgs-msg:reduce_velocity_button instead.")
  (reduce_velocity_button m))

(cl:ensure-generic-function 'raise_velocity_button-val :lambda-list '(m))
(cl:defmethod raise_velocity_button-val ((m <JoystickStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:raise_velocity_button-val is deprecated.  Use twinny_msgs-msg:raise_velocity_button instead.")
  (raise_velocity_button m))

(cl:ensure-generic-function 'reset_velocity_button-val :lambda-list '(m))
(cl:defmethod reset_velocity_button-val ((m <JoystickStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:reset_velocity_button-val is deprecated.  Use twinny_msgs-msg:reset_velocity_button instead.")
  (reset_velocity_button m))

(cl:ensure-generic-function 'vel_scale-val :lambda-list '(m))
(cl:defmethod vel_scale-val ((m <JoystickStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:vel_scale-val is deprecated.  Use twinny_msgs-msg:vel_scale instead.")
  (vel_scale m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <JoystickStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:linear_velocity-val is deprecated.  Use twinny_msgs-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <JoystickStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:angular_velocity-val is deprecated.  Use twinny_msgs-msg:angular_velocity instead.")
  (angular_velocity m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<JoystickStatus>)))
    "Constants for message type '<JoystickStatus>"
  '((:AXIS_LEFT_STICK_X . 0)
    (:AXIS_LEFT_STICK_Y . 1)
    (:AXIS_RIGHT_STICK_X . 2)
    (:AXIS_RIGHT_STICK_Y . 3)
    (:AXIS_DPAD_X . 4)
    (:AXIS_DPAD_Y . 5)
    (:AXIS_LEFT_TRIGGER . 6)
    (:AXIS_RIGHT_TRIGGER . 7)
    (:BUTTON_A . 0)
    (:BUTTON_B . 1)
    (:BUTTON_X . 2)
    (:BUTTON_Y . 3)
    (:BUTTON_LB . 4)
    (:BUTTON_RB . 5)
    (:BUTTON_BACK . 6)
    (:BUTTON_START . 7)
    (:BUTTON_GUIDE . 8)
    (:BUTTON_LEFT_STICK . 9)
    (:BUTTON_RIGHT_STICK . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'JoystickStatus)))
    "Constants for message type 'JoystickStatus"
  '((:AXIS_LEFT_STICK_X . 0)
    (:AXIS_LEFT_STICK_Y . 1)
    (:AXIS_RIGHT_STICK_X . 2)
    (:AXIS_RIGHT_STICK_Y . 3)
    (:AXIS_DPAD_X . 4)
    (:AXIS_DPAD_Y . 5)
    (:AXIS_LEFT_TRIGGER . 6)
    (:AXIS_RIGHT_TRIGGER . 7)
    (:BUTTON_A . 0)
    (:BUTTON_B . 1)
    (:BUTTON_X . 2)
    (:BUTTON_Y . 3)
    (:BUTTON_LB . 4)
    (:BUTTON_RB . 5)
    (:BUTTON_BACK . 6)
    (:BUTTON_START . 7)
    (:BUTTON_GUIDE . 8)
    (:BUTTON_LEFT_STICK . 9)
    (:BUTTON_RIGHT_STICK . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoystickStatus>) ostream)
  "Serializes a message object of type '<JoystickStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joy_driver_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joy_driver_status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'axes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'axes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'button))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'button))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'joy_driver_enable_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reduce_velocity_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'raise_velocity_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_velocity_button) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_scale))))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoystickStatus>) istream)
  "Deserializes a message object of type '<JoystickStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joy_driver_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joy_driver_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'axes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'axes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'button) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'button)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:setf (cl:slot-value msg 'joy_driver_enable_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reduce_velocity_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'raise_velocity_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reset_velocity_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_scale) (roslisp-utils:decode-single-float-bits bits)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoystickStatus>)))
  "Returns string type for a message object of type '<JoystickStatus>"
  "twinny_msgs/JoystickStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoystickStatus)))
  "Returns string type for a message object of type 'JoystickStatus"
  "twinny_msgs/JoystickStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoystickStatus>)))
  "Returns md5sum for a message object of type '<JoystickStatus>"
  "ac111940512caeb23d072699a1470e96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoystickStatus)))
  "Returns md5sum for a message object of type 'JoystickStatus"
  "ac111940512caeb23d072699a1470e96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoystickStatus>)))
  "Returns full string definition for message of type '<JoystickStatus>"
  (cl:format cl:nil "Header header ~%~%string joy_driver_status         ~%~%float32[] axes                   ~%~%bool[] button    ~%~%~%bool joy_driver_enable_button    ~%bool reduce_velocity_button      ~%bool raise_velocity_button       ~%bool reset_velocity_button       ~%~%float32 vel_scale              ~%~%float32 linear_velocity          ~%float32 angular_velocity         ~%~%~%uint8 AXIS_LEFT_STICK_X = 0~%uint8 AXIS_LEFT_STICK_Y = 1~%uint8 AXIS_RIGHT_STICK_X = 2~%uint8 AXIS_RIGHT_STICK_Y = 3~%uint8 AXIS_DPAD_X = 4~%uint8 AXIS_DPAD_Y = 5~%uint8 AXIS_LEFT_TRIGGER = 6~%uint8 AXIS_RIGHT_TRIGGER = 7~%~%~%uint8 BUTTON_A = 0~%uint8 BUTTON_B = 1~%uint8 BUTTON_X = 2~%uint8 BUTTON_Y = 3~%uint8 BUTTON_LB = 4~%uint8 BUTTON_RB = 5~%uint8 BUTTON_BACK = 6~%uint8 BUTTON_START = 7~%uint8 BUTTON_GUIDE = 8~%uint8 BUTTON_LEFT_STICK = 9~%uint8 BUTTON_RIGHT_STICK = 10~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoystickStatus)))
  "Returns full string definition for message of type 'JoystickStatus"
  (cl:format cl:nil "Header header ~%~%string joy_driver_status         ~%~%float32[] axes                   ~%~%bool[] button    ~%~%~%bool joy_driver_enable_button    ~%bool reduce_velocity_button      ~%bool raise_velocity_button       ~%bool reset_velocity_button       ~%~%float32 vel_scale              ~%~%float32 linear_velocity          ~%float32 angular_velocity         ~%~%~%uint8 AXIS_LEFT_STICK_X = 0~%uint8 AXIS_LEFT_STICK_Y = 1~%uint8 AXIS_RIGHT_STICK_X = 2~%uint8 AXIS_RIGHT_STICK_Y = 3~%uint8 AXIS_DPAD_X = 4~%uint8 AXIS_DPAD_Y = 5~%uint8 AXIS_LEFT_TRIGGER = 6~%uint8 AXIS_RIGHT_TRIGGER = 7~%~%~%uint8 BUTTON_A = 0~%uint8 BUTTON_B = 1~%uint8 BUTTON_X = 2~%uint8 BUTTON_Y = 3~%uint8 BUTTON_LB = 4~%uint8 BUTTON_RB = 5~%uint8 BUTTON_BACK = 6~%uint8 BUTTON_START = 7~%uint8 BUTTON_GUIDE = 8~%uint8 BUTTON_LEFT_STICK = 9~%uint8 BUTTON_RIGHT_STICK = 10~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoystickStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'joy_driver_status))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'axes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'button) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoystickStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'JoystickStatus
    (cl:cons ':header (header msg))
    (cl:cons ':joy_driver_status (joy_driver_status msg))
    (cl:cons ':axes (axes msg))
    (cl:cons ':button (button msg))
    (cl:cons ':joy_driver_enable_button (joy_driver_enable_button msg))
    (cl:cons ':reduce_velocity_button (reduce_velocity_button msg))
    (cl:cons ':raise_velocity_button (raise_velocity_button msg))
    (cl:cons ':reset_velocity_button (reset_velocity_button msg))
    (cl:cons ':vel_scale (vel_scale msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
))
