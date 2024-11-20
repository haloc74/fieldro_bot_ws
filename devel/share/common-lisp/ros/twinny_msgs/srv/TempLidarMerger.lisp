; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-srv)


;//! \htmlinclude TempLidarMerger-request.msg.html

(cl:defclass <TempLidarMerger-request> (roslisp-msg-protocol:ros-message)
  ((x_min
    :reader x_min
    :initarg :x_min
    :type cl:float
    :initform 0.0)
   (x_max
    :reader x_max
    :initarg :x_max
    :type cl:float
    :initform 0.0)
   (y_min
    :reader y_min
    :initarg :y_min
    :type cl:float
    :initform 0.0)
   (y_max
    :reader y_max
    :initarg :y_max
    :type cl:float
    :initform 0.0))
)

(cl:defclass TempLidarMerger-request (<TempLidarMerger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TempLidarMerger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TempLidarMerger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<TempLidarMerger-request> is deprecated: use twinny_msgs-srv:TempLidarMerger-request instead.")))

(cl:ensure-generic-function 'x_min-val :lambda-list '(m))
(cl:defmethod x_min-val ((m <TempLidarMerger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:x_min-val is deprecated.  Use twinny_msgs-srv:x_min instead.")
  (x_min m))

(cl:ensure-generic-function 'x_max-val :lambda-list '(m))
(cl:defmethod x_max-val ((m <TempLidarMerger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:x_max-val is deprecated.  Use twinny_msgs-srv:x_max instead.")
  (x_max m))

(cl:ensure-generic-function 'y_min-val :lambda-list '(m))
(cl:defmethod y_min-val ((m <TempLidarMerger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:y_min-val is deprecated.  Use twinny_msgs-srv:y_min instead.")
  (y_min m))

(cl:ensure-generic-function 'y_max-val :lambda-list '(m))
(cl:defmethod y_max-val ((m <TempLidarMerger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:y_max-val is deprecated.  Use twinny_msgs-srv:y_max instead.")
  (y_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TempLidarMerger-request>) ostream)
  "Serializes a message object of type '<TempLidarMerger-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TempLidarMerger-request>) istream)
  "Deserializes a message object of type '<TempLidarMerger-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_min) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_max) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_min) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_max) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TempLidarMerger-request>)))
  "Returns string type for a service object of type '<TempLidarMerger-request>"
  "twinny_msgs/TempLidarMergerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TempLidarMerger-request)))
  "Returns string type for a service object of type 'TempLidarMerger-request"
  "twinny_msgs/TempLidarMergerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TempLidarMerger-request>)))
  "Returns md5sum for a message object of type '<TempLidarMerger-request>"
  "e8e1e3f1f578fce614ecb20fa50c446a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TempLidarMerger-request)))
  "Returns md5sum for a message object of type 'TempLidarMerger-request"
  "e8e1e3f1f578fce614ecb20fa50c446a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TempLidarMerger-request>)))
  "Returns full string definition for message of type '<TempLidarMerger-request>"
  (cl:format cl:nil "float64 x_min~%float64 x_max~%float64 y_min~%float64 y_max~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TempLidarMerger-request)))
  "Returns full string definition for message of type 'TempLidarMerger-request"
  (cl:format cl:nil "float64 x_min~%float64 x_max~%float64 y_min~%float64 y_max~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TempLidarMerger-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TempLidarMerger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TempLidarMerger-request
    (cl:cons ':x_min (x_min msg))
    (cl:cons ':x_max (x_max msg))
    (cl:cons ':y_min (y_min msg))
    (cl:cons ':y_max (y_max msg))
))
;//! \htmlinclude TempLidarMerger-response.msg.html

(cl:defclass <TempLidarMerger-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass TempLidarMerger-response (<TempLidarMerger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TempLidarMerger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TempLidarMerger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<TempLidarMerger-response> is deprecated: use twinny_msgs-srv:TempLidarMerger-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <TempLidarMerger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:result-val is deprecated.  Use twinny_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TempLidarMerger-response>) ostream)
  "Serializes a message object of type '<TempLidarMerger-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TempLidarMerger-response>) istream)
  "Deserializes a message object of type '<TempLidarMerger-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TempLidarMerger-response>)))
  "Returns string type for a service object of type '<TempLidarMerger-response>"
  "twinny_msgs/TempLidarMergerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TempLidarMerger-response)))
  "Returns string type for a service object of type 'TempLidarMerger-response"
  "twinny_msgs/TempLidarMergerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TempLidarMerger-response>)))
  "Returns md5sum for a message object of type '<TempLidarMerger-response>"
  "e8e1e3f1f578fce614ecb20fa50c446a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TempLidarMerger-response)))
  "Returns md5sum for a message object of type 'TempLidarMerger-response"
  "e8e1e3f1f578fce614ecb20fa50c446a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TempLidarMerger-response>)))
  "Returns full string definition for message of type '<TempLidarMerger-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TempLidarMerger-response)))
  "Returns full string definition for message of type 'TempLidarMerger-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TempLidarMerger-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TempLidarMerger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TempLidarMerger-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TempLidarMerger)))
  'TempLidarMerger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TempLidarMerger)))
  'TempLidarMerger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TempLidarMerger)))
  "Returns string type for a service object of type '<TempLidarMerger>"
  "twinny_msgs/TempLidarMerger")