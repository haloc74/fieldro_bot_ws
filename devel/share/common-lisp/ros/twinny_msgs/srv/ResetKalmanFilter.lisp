; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-srv)


;//! \htmlinclude ResetKalmanFilter-request.msg.html

(cl:defclass <ResetKalmanFilter-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetKalmanFilter-request (<ResetKalmanFilter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetKalmanFilter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetKalmanFilter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<ResetKalmanFilter-request> is deprecated: use twinny_msgs-srv:ResetKalmanFilter-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetKalmanFilter-request>) ostream)
  "Serializes a message object of type '<ResetKalmanFilter-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetKalmanFilter-request>) istream)
  "Deserializes a message object of type '<ResetKalmanFilter-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetKalmanFilter-request>)))
  "Returns string type for a service object of type '<ResetKalmanFilter-request>"
  "twinny_msgs/ResetKalmanFilterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetKalmanFilter-request)))
  "Returns string type for a service object of type 'ResetKalmanFilter-request"
  "twinny_msgs/ResetKalmanFilterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetKalmanFilter-request>)))
  "Returns md5sum for a message object of type '<ResetKalmanFilter-request>"
  "6c52dd7ca4d559768802719a649d3a8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetKalmanFilter-request)))
  "Returns md5sum for a message object of type 'ResetKalmanFilter-request"
  "6c52dd7ca4d559768802719a649d3a8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetKalmanFilter-request>)))
  "Returns full string definition for message of type '<ResetKalmanFilter-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetKalmanFilter-request)))
  "Returns full string definition for message of type 'ResetKalmanFilter-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetKalmanFilter-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetKalmanFilter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetKalmanFilter-request
))
;//! \htmlinclude ResetKalmanFilter-response.msg.html

(cl:defclass <ResetKalmanFilter-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass ResetKalmanFilter-response (<ResetKalmanFilter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetKalmanFilter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetKalmanFilter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<ResetKalmanFilter-response> is deprecated: use twinny_msgs-srv:ResetKalmanFilter-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ResetKalmanFilter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:state-val is deprecated.  Use twinny_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ResetKalmanFilter-response>)))
    "Constants for message type '<ResetKalmanFilter-response>"
  '((:SUCCESS . 1)
    (:NOT_PERMIT_IN_DISABLE_MODE . -2)
    (:UNKNOWN_ERROR . -404))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ResetKalmanFilter-response)))
    "Constants for message type 'ResetKalmanFilter-response"
  '((:SUCCESS . 1)
    (:NOT_PERMIT_IN_DISABLE_MODE . -2)
    (:UNKNOWN_ERROR . -404))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetKalmanFilter-response>) ostream)
  "Serializes a message object of type '<ResetKalmanFilter-response>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetKalmanFilter-response>) istream)
  "Deserializes a message object of type '<ResetKalmanFilter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetKalmanFilter-response>)))
  "Returns string type for a service object of type '<ResetKalmanFilter-response>"
  "twinny_msgs/ResetKalmanFilterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetKalmanFilter-response)))
  "Returns string type for a service object of type 'ResetKalmanFilter-response"
  "twinny_msgs/ResetKalmanFilterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetKalmanFilter-response>)))
  "Returns md5sum for a message object of type '<ResetKalmanFilter-response>"
  "6c52dd7ca4d559768802719a649d3a8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetKalmanFilter-response)))
  "Returns md5sum for a message object of type 'ResetKalmanFilter-response"
  "6c52dd7ca4d559768802719a649d3a8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetKalmanFilter-response>)))
  "Returns full string definition for message of type '<ResetKalmanFilter-response>"
  (cl:format cl:nil "int32 state~%~%int32 SUCCESS=1~%int32 NOT_PERMIT_IN_DISABLE_MODE=-2~%int32 UNKNOWN_ERROR=-404~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetKalmanFilter-response)))
  "Returns full string definition for message of type 'ResetKalmanFilter-response"
  (cl:format cl:nil "int32 state~%~%int32 SUCCESS=1~%int32 NOT_PERMIT_IN_DISABLE_MODE=-2~%int32 UNKNOWN_ERROR=-404~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetKalmanFilter-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetKalmanFilter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetKalmanFilter-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetKalmanFilter)))
  'ResetKalmanFilter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetKalmanFilter)))
  'ResetKalmanFilter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetKalmanFilter)))
  "Returns string type for a service object of type '<ResetKalmanFilter>"
  "twinny_msgs/ResetKalmanFilter")