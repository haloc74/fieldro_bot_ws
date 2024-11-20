; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-srv)


;//! \htmlinclude getHardwareParam-request.msg.html

(cl:defclass <getHardwareParam-request> (roslisp-msg-protocol:ros-message)
  ((req
    :reader req
    :initarg :req
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass getHardwareParam-request (<getHardwareParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getHardwareParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getHardwareParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<getHardwareParam-request> is deprecated: use twinny_msgs-srv:getHardwareParam-request instead.")))

(cl:ensure-generic-function 'req-val :lambda-list '(m))
(cl:defmethod req-val ((m <getHardwareParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:req-val is deprecated.  Use twinny_msgs-srv:req instead.")
  (req m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getHardwareParam-request>) ostream)
  "Serializes a message object of type '<getHardwareParam-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'req) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getHardwareParam-request>) istream)
  "Deserializes a message object of type '<getHardwareParam-request>"
    (cl:setf (cl:slot-value msg 'req) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getHardwareParam-request>)))
  "Returns string type for a service object of type '<getHardwareParam-request>"
  "twinny_msgs/getHardwareParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getHardwareParam-request)))
  "Returns string type for a service object of type 'getHardwareParam-request"
  "twinny_msgs/getHardwareParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getHardwareParam-request>)))
  "Returns md5sum for a message object of type '<getHardwareParam-request>"
  "2ba2e28439eb9799620f616f7cd32879")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getHardwareParam-request)))
  "Returns md5sum for a message object of type 'getHardwareParam-request"
  "2ba2e28439eb9799620f616f7cd32879")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getHardwareParam-request>)))
  "Returns full string definition for message of type '<getHardwareParam-request>"
  (cl:format cl:nil "bool req                    # request flag: true (요청) / false (요청 안함)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getHardwareParam-request)))
  "Returns full string definition for message of type 'getHardwareParam-request"
  (cl:format cl:nil "bool req                    # request flag: true (요청) / false (요청 안함)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getHardwareParam-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getHardwareParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getHardwareParam-request
    (cl:cons ':req (req msg))
))
;//! \htmlinclude getHardwareParam-response.msg.html

(cl:defclass <getHardwareParam-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass getHardwareParam-response (<getHardwareParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getHardwareParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getHardwareParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<getHardwareParam-response> is deprecated: use twinny_msgs-srv:getHardwareParam-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <getHardwareParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:success-val is deprecated.  Use twinny_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <getHardwareParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:data-val is deprecated.  Use twinny_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getHardwareParam-response>) ostream)
  "Serializes a message object of type '<getHardwareParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getHardwareParam-response>) istream)
  "Deserializes a message object of type '<getHardwareParam-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getHardwareParam-response>)))
  "Returns string type for a service object of type '<getHardwareParam-response>"
  "twinny_msgs/getHardwareParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getHardwareParam-response)))
  "Returns string type for a service object of type 'getHardwareParam-response"
  "twinny_msgs/getHardwareParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getHardwareParam-response>)))
  "Returns md5sum for a message object of type '<getHardwareParam-response>"
  "2ba2e28439eb9799620f616f7cd32879")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getHardwareParam-response)))
  "Returns md5sum for a message object of type 'getHardwareParam-response"
  "2ba2e28439eb9799620f616f7cd32879")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getHardwareParam-response>)))
  "Returns full string definition for message of type '<getHardwareParam-response>"
  (cl:format cl:nil "bool success                # 요청 성공시 success flag = true~%string data                 # 응답: 저장된 json 데이터~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getHardwareParam-response)))
  "Returns full string definition for message of type 'getHardwareParam-response"
  (cl:format cl:nil "bool success                # 요청 성공시 success flag = true~%string data                 # 응답: 저장된 json 데이터~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getHardwareParam-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getHardwareParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getHardwareParam-response
    (cl:cons ':success (success msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getHardwareParam)))
  'getHardwareParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getHardwareParam)))
  'getHardwareParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getHardwareParam)))
  "Returns string type for a service object of type '<getHardwareParam>"
  "twinny_msgs/getHardwareParam")