; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-srv)


;//! \htmlinclude resetHardwareParam-request.msg.html

(cl:defclass <resetHardwareParam-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass resetHardwareParam-request (<resetHardwareParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <resetHardwareParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'resetHardwareParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<resetHardwareParam-request> is deprecated: use twinny_msgs-srv:resetHardwareParam-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <resetHardwareParam-request>) ostream)
  "Serializes a message object of type '<resetHardwareParam-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <resetHardwareParam-request>) istream)
  "Deserializes a message object of type '<resetHardwareParam-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<resetHardwareParam-request>)))
  "Returns string type for a service object of type '<resetHardwareParam-request>"
  "twinny_msgs/resetHardwareParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'resetHardwareParam-request)))
  "Returns string type for a service object of type 'resetHardwareParam-request"
  "twinny_msgs/resetHardwareParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<resetHardwareParam-request>)))
  "Returns md5sum for a message object of type '<resetHardwareParam-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'resetHardwareParam-request)))
  "Returns md5sum for a message object of type 'resetHardwareParam-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<resetHardwareParam-request>)))
  "Returns full string definition for message of type '<resetHardwareParam-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'resetHardwareParam-request)))
  "Returns full string definition for message of type 'resetHardwareParam-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <resetHardwareParam-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <resetHardwareParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'resetHardwareParam-request
))
;//! \htmlinclude resetHardwareParam-response.msg.html

(cl:defclass <resetHardwareParam-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass resetHardwareParam-response (<resetHardwareParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <resetHardwareParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'resetHardwareParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<resetHardwareParam-response> is deprecated: use twinny_msgs-srv:resetHardwareParam-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <resetHardwareParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:success-val is deprecated.  Use twinny_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <resetHardwareParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:message-val is deprecated.  Use twinny_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <resetHardwareParam-response>) ostream)
  "Serializes a message object of type '<resetHardwareParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <resetHardwareParam-response>) istream)
  "Deserializes a message object of type '<resetHardwareParam-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<resetHardwareParam-response>)))
  "Returns string type for a service object of type '<resetHardwareParam-response>"
  "twinny_msgs/resetHardwareParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'resetHardwareParam-response)))
  "Returns string type for a service object of type 'resetHardwareParam-response"
  "twinny_msgs/resetHardwareParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<resetHardwareParam-response>)))
  "Returns md5sum for a message object of type '<resetHardwareParam-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'resetHardwareParam-response)))
  "Returns md5sum for a message object of type 'resetHardwareParam-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<resetHardwareParam-response>)))
  "Returns full string definition for message of type '<resetHardwareParam-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'resetHardwareParam-response)))
  "Returns full string definition for message of type 'resetHardwareParam-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <resetHardwareParam-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <resetHardwareParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'resetHardwareParam-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'resetHardwareParam)))
  'resetHardwareParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'resetHardwareParam)))
  'resetHardwareParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'resetHardwareParam)))
  "Returns string type for a service object of type '<resetHardwareParam>"
  "twinny_msgs/resetHardwareParam")