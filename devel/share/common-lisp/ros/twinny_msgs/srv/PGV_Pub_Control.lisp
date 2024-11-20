; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-srv)


;//! \htmlinclude PGV_Pub_Control-request.msg.html

(cl:defclass <PGV_Pub_Control-request> (roslisp-msg-protocol:ros-message)
  ((cnt
    :reader cnt
    :initarg :cnt
    :type cl:integer
    :initform 0))
)

(cl:defclass PGV_Pub_Control-request (<PGV_Pub_Control-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PGV_Pub_Control-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PGV_Pub_Control-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<PGV_Pub_Control-request> is deprecated: use twinny_msgs-srv:PGV_Pub_Control-request instead.")))

(cl:ensure-generic-function 'cnt-val :lambda-list '(m))
(cl:defmethod cnt-val ((m <PGV_Pub_Control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:cnt-val is deprecated.  Use twinny_msgs-srv:cnt instead.")
  (cnt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PGV_Pub_Control-request>) ostream)
  "Serializes a message object of type '<PGV_Pub_Control-request>"
  (cl:let* ((signed (cl:slot-value msg 'cnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PGV_Pub_Control-request>) istream)
  "Deserializes a message object of type '<PGV_Pub_Control-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PGV_Pub_Control-request>)))
  "Returns string type for a service object of type '<PGV_Pub_Control-request>"
  "twinny_msgs/PGV_Pub_ControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PGV_Pub_Control-request)))
  "Returns string type for a service object of type 'PGV_Pub_Control-request"
  "twinny_msgs/PGV_Pub_ControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PGV_Pub_Control-request>)))
  "Returns md5sum for a message object of type '<PGV_Pub_Control-request>"
  "d818899d86a02c4f5208ad53722b29ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PGV_Pub_Control-request)))
  "Returns md5sum for a message object of type 'PGV_Pub_Control-request"
  "d818899d86a02c4f5208ad53722b29ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PGV_Pub_Control-request>)))
  "Returns full string definition for message of type '<PGV_Pub_Control-request>"
  (cl:format cl:nil "int32 cnt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PGV_Pub_Control-request)))
  "Returns full string definition for message of type 'PGV_Pub_Control-request"
  (cl:format cl:nil "int32 cnt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PGV_Pub_Control-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PGV_Pub_Control-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PGV_Pub_Control-request
    (cl:cons ':cnt (cnt msg))
))
;//! \htmlinclude PGV_Pub_Control-response.msg.html

(cl:defclass <PGV_Pub_Control-response> (roslisp-msg-protocol:ros-message)
  ((ack
    :reader ack
    :initarg :ack
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PGV_Pub_Control-response (<PGV_Pub_Control-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PGV_Pub_Control-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PGV_Pub_Control-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<PGV_Pub_Control-response> is deprecated: use twinny_msgs-srv:PGV_Pub_Control-response instead.")))

(cl:ensure-generic-function 'ack-val :lambda-list '(m))
(cl:defmethod ack-val ((m <PGV_Pub_Control-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:ack-val is deprecated.  Use twinny_msgs-srv:ack instead.")
  (ack m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PGV_Pub_Control-response>) ostream)
  "Serializes a message object of type '<PGV_Pub_Control-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ack) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PGV_Pub_Control-response>) istream)
  "Deserializes a message object of type '<PGV_Pub_Control-response>"
    (cl:setf (cl:slot-value msg 'ack) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PGV_Pub_Control-response>)))
  "Returns string type for a service object of type '<PGV_Pub_Control-response>"
  "twinny_msgs/PGV_Pub_ControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PGV_Pub_Control-response)))
  "Returns string type for a service object of type 'PGV_Pub_Control-response"
  "twinny_msgs/PGV_Pub_ControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PGV_Pub_Control-response>)))
  "Returns md5sum for a message object of type '<PGV_Pub_Control-response>"
  "d818899d86a02c4f5208ad53722b29ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PGV_Pub_Control-response)))
  "Returns md5sum for a message object of type 'PGV_Pub_Control-response"
  "d818899d86a02c4f5208ad53722b29ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PGV_Pub_Control-response>)))
  "Returns full string definition for message of type '<PGV_Pub_Control-response>"
  (cl:format cl:nil "bool ack~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PGV_Pub_Control-response)))
  "Returns full string definition for message of type 'PGV_Pub_Control-response"
  (cl:format cl:nil "bool ack~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PGV_Pub_Control-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PGV_Pub_Control-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PGV_Pub_Control-response
    (cl:cons ':ack (ack msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PGV_Pub_Control)))
  'PGV_Pub_Control-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PGV_Pub_Control)))
  'PGV_Pub_Control-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PGV_Pub_Control)))
  "Returns string type for a service object of type '<PGV_Pub_Control>"
  "twinny_msgs/PGV_Pub_Control")