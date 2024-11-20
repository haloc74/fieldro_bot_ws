; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-srv)


;//! \htmlinclude setHardwareParam-request.msg.html

(cl:defclass <setHardwareParam-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass setHardwareParam-request (<setHardwareParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setHardwareParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setHardwareParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<setHardwareParam-request> is deprecated: use twinny_msgs-srv:setHardwareParam-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <setHardwareParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:data-val is deprecated.  Use twinny_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setHardwareParam-request>) ostream)
  "Serializes a message object of type '<setHardwareParam-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setHardwareParam-request>) istream)
  "Deserializes a message object of type '<setHardwareParam-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setHardwareParam-request>)))
  "Returns string type for a service object of type '<setHardwareParam-request>"
  "twinny_msgs/setHardwareParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setHardwareParam-request)))
  "Returns string type for a service object of type 'setHardwareParam-request"
  "twinny_msgs/setHardwareParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setHardwareParam-request>)))
  "Returns md5sum for a message object of type '<setHardwareParam-request>"
  "01cf8f3fd0d9c08e7ae80062dcbc18f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setHardwareParam-request)))
  "Returns md5sum for a message object of type 'setHardwareParam-request"
  "01cf8f3fd0d9c08e7ae80062dcbc18f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setHardwareParam-request>)))
  "Returns full string definition for message of type '<setHardwareParam-request>"
  (cl:format cl:nil "string data                    # json 포멧으로 셋업 결과를 report~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setHardwareParam-request)))
  "Returns full string definition for message of type 'setHardwareParam-request"
  (cl:format cl:nil "string data                    # json 포멧으로 셋업 결과를 report~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setHardwareParam-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setHardwareParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'setHardwareParam-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude setHardwareParam-response.msg.html

(cl:defclass <setHardwareParam-response> (roslisp-msg-protocol:ros-message)
  ((success_flag
    :reader success_flag
    :initarg :success_flag
    :type cl:boolean
    :initform cl:nil)
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass setHardwareParam-response (<setHardwareParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setHardwareParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setHardwareParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<setHardwareParam-response> is deprecated: use twinny_msgs-srv:setHardwareParam-response instead.")))

(cl:ensure-generic-function 'success_flag-val :lambda-list '(m))
(cl:defmethod success_flag-val ((m <setHardwareParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:success_flag-val is deprecated.  Use twinny_msgs-srv:success_flag instead.")
  (success_flag m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <setHardwareParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:data-val is deprecated.  Use twinny_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setHardwareParam-response>) ostream)
  "Serializes a message object of type '<setHardwareParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success_flag) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setHardwareParam-response>) istream)
  "Deserializes a message object of type '<setHardwareParam-response>"
    (cl:setf (cl:slot-value msg 'success_flag) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setHardwareParam-response>)))
  "Returns string type for a service object of type '<setHardwareParam-response>"
  "twinny_msgs/setHardwareParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setHardwareParam-response)))
  "Returns string type for a service object of type 'setHardwareParam-response"
  "twinny_msgs/setHardwareParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setHardwareParam-response>)))
  "Returns md5sum for a message object of type '<setHardwareParam-response>"
  "01cf8f3fd0d9c08e7ae80062dcbc18f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setHardwareParam-response)))
  "Returns md5sum for a message object of type 'setHardwareParam-response"
  "01cf8f3fd0d9c08e7ae80062dcbc18f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setHardwareParam-response>)))
  "Returns full string definition for message of type '<setHardwareParam-response>"
  (cl:format cl:nil "bool success_flag              # 셋업 성공시 success flag = true~%string data                    # 응답: 저장된 json 데이터~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setHardwareParam-response)))
  "Returns full string definition for message of type 'setHardwareParam-response"
  (cl:format cl:nil "bool success_flag              # 셋업 성공시 success flag = true~%string data                    # 응답: 저장된 json 데이터~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setHardwareParam-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setHardwareParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'setHardwareParam-response
    (cl:cons ':success_flag (success_flag msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'setHardwareParam)))
  'setHardwareParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'setHardwareParam)))
  'setHardwareParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setHardwareParam)))
  "Returns string type for a service object of type '<setHardwareParam>"
  "twinny_msgs/setHardwareParam")