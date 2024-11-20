; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude SellingStartCommand.msg.html

(cl:defclass <SellingStartCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (selling_flag
    :reader selling_flag
    :initarg :selling_flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SellingStartCommand (<SellingStartCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SellingStartCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SellingStartCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<SellingStartCommand> is deprecated: use twinny_msgs-msg:SellingStartCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SellingStartCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'selling_flag-val :lambda-list '(m))
(cl:defmethod selling_flag-val ((m <SellingStartCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:selling_flag-val is deprecated.  Use twinny_msgs-msg:selling_flag instead.")
  (selling_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SellingStartCommand>) ostream)
  "Serializes a message object of type '<SellingStartCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'selling_flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SellingStartCommand>) istream)
  "Deserializes a message object of type '<SellingStartCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'selling_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SellingStartCommand>)))
  "Returns string type for a message object of type '<SellingStartCommand>"
  "twinny_msgs/SellingStartCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SellingStartCommand)))
  "Returns string type for a message object of type 'SellingStartCommand"
  "twinny_msgs/SellingStartCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SellingStartCommand>)))
  "Returns md5sum for a message object of type '<SellingStartCommand>"
  "4f032b0a824008a30ea74bfa6397be14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SellingStartCommand)))
  "Returns md5sum for a message object of type 'SellingStartCommand"
  "4f032b0a824008a30ea74bfa6397be14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SellingStartCommand>)))
  "Returns full string definition for message of type '<SellingStartCommand>"
  (cl:format cl:nil "Header header~%bool selling_flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SellingStartCommand)))
  "Returns full string definition for message of type 'SellingStartCommand"
  (cl:format cl:nil "Header header~%bool selling_flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SellingStartCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SellingStartCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SellingStartCommand
    (cl:cons ':header (header msg))
    (cl:cons ':selling_flag (selling_flag msg))
))
