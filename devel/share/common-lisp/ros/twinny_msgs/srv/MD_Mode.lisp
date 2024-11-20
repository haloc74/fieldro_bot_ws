; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-srv)


;//! \htmlinclude MD_Mode-request.msg.html

(cl:defclass <MD_Mode-request> (roslisp-msg-protocol:ros-message)
  ((input_mode
    :reader input_mode
    :initarg :input_mode
    :type cl:fixnum
    :initform 0)
   (argument
    :reader argument
    :initarg :argument
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MD_Mode-request (<MD_Mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MD_Mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MD_Mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<MD_Mode-request> is deprecated: use twinny_msgs-srv:MD_Mode-request instead.")))

(cl:ensure-generic-function 'input_mode-val :lambda-list '(m))
(cl:defmethod input_mode-val ((m <MD_Mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:input_mode-val is deprecated.  Use twinny_msgs-srv:input_mode instead.")
  (input_mode m))

(cl:ensure-generic-function 'argument-val :lambda-list '(m))
(cl:defmethod argument-val ((m <MD_Mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:argument-val is deprecated.  Use twinny_msgs-srv:argument instead.")
  (argument m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MD_Mode-request>)))
    "Constants for message type '<MD_Mode-request>"
  '((:NORMAL_MODE . 0)
    (:TORQUE_FREE . 1)
    (:BRAKING . 2)
    (:ERROR . 3)
    (:SETTING . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MD_Mode-request)))
    "Constants for message type 'MD_Mode-request"
  '((:NORMAL_MODE . 0)
    (:TORQUE_FREE . 1)
    (:BRAKING . 2)
    (:ERROR . 3)
    (:SETTING . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MD_Mode-request>) ostream)
  "Serializes a message object of type '<MD_Mode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'input_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'argument)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MD_Mode-request>) istream)
  "Deserializes a message object of type '<MD_Mode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'input_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'argument)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MD_Mode-request>)))
  "Returns string type for a service object of type '<MD_Mode-request>"
  "twinny_msgs/MD_ModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MD_Mode-request)))
  "Returns string type for a service object of type 'MD_Mode-request"
  "twinny_msgs/MD_ModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MD_Mode-request>)))
  "Returns md5sum for a message object of type '<MD_Mode-request>"
  "31fbd060b8f49cd4b847897a2ec4ef55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MD_Mode-request)))
  "Returns md5sum for a message object of type 'MD_Mode-request"
  "31fbd060b8f49cd4b847897a2ec4ef55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MD_Mode-request>)))
  "Returns full string definition for message of type '<MD_Mode-request>"
  (cl:format cl:nil "uint8 NORMAL_MODE=0~%uint8 TORQUE_FREE=1~%uint8 BRAKING=2~%uint8 ERROR=3~%uint8 SETTING=4~%~%uint8 input_mode~%uint8 argument~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MD_Mode-request)))
  "Returns full string definition for message of type 'MD_Mode-request"
  (cl:format cl:nil "uint8 NORMAL_MODE=0~%uint8 TORQUE_FREE=1~%uint8 BRAKING=2~%uint8 ERROR=3~%uint8 SETTING=4~%~%uint8 input_mode~%uint8 argument~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MD_Mode-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MD_Mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MD_Mode-request
    (cl:cons ':input_mode (input_mode msg))
    (cl:cons ':argument (argument msg))
))
;//! \htmlinclude MD_Mode-response.msg.html

(cl:defclass <MD_Mode-response> (roslisp-msg-protocol:ros-message)
  ((current_mode
    :reader current_mode
    :initarg :current_mode
    :type cl:fixnum
    :initform 0)
   (current_error
    :reader current_error
    :initarg :current_error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MD_Mode-response (<MD_Mode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MD_Mode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MD_Mode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<MD_Mode-response> is deprecated: use twinny_msgs-srv:MD_Mode-response instead.")))

(cl:ensure-generic-function 'current_mode-val :lambda-list '(m))
(cl:defmethod current_mode-val ((m <MD_Mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:current_mode-val is deprecated.  Use twinny_msgs-srv:current_mode instead.")
  (current_mode m))

(cl:ensure-generic-function 'current_error-val :lambda-list '(m))
(cl:defmethod current_error-val ((m <MD_Mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:current_error-val is deprecated.  Use twinny_msgs-srv:current_error instead.")
  (current_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MD_Mode-response>) ostream)
  "Serializes a message object of type '<MD_Mode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_error)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MD_Mode-response>) istream)
  "Deserializes a message object of type '<MD_Mode-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_error)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MD_Mode-response>)))
  "Returns string type for a service object of type '<MD_Mode-response>"
  "twinny_msgs/MD_ModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MD_Mode-response)))
  "Returns string type for a service object of type 'MD_Mode-response"
  "twinny_msgs/MD_ModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MD_Mode-response>)))
  "Returns md5sum for a message object of type '<MD_Mode-response>"
  "31fbd060b8f49cd4b847897a2ec4ef55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MD_Mode-response)))
  "Returns md5sum for a message object of type 'MD_Mode-response"
  "31fbd060b8f49cd4b847897a2ec4ef55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MD_Mode-response>)))
  "Returns full string definition for message of type '<MD_Mode-response>"
  (cl:format cl:nil "uint8 current_mode~%uint8 current_error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MD_Mode-response)))
  "Returns full string definition for message of type 'MD_Mode-response"
  (cl:format cl:nil "uint8 current_mode~%uint8 current_error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MD_Mode-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MD_Mode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MD_Mode-response
    (cl:cons ':current_mode (current_mode msg))
    (cl:cons ':current_error (current_error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MD_Mode)))
  'MD_Mode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MD_Mode)))
  'MD_Mode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MD_Mode)))
  "Returns string type for a service object of type '<MD_Mode>"
  "twinny_msgs/MD_Mode")