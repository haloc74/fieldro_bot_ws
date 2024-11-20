; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude SwitchReport.msg.html

(cl:defclass <SwitchReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (E_STOP_button
    :reader E_STOP_button
    :initarg :E_STOP_button
    :type cl:boolean
    :initform cl:nil)
   (SW_0_toggle
    :reader SW_0_toggle
    :initarg :SW_0_toggle
    :type cl:boolean
    :initform cl:nil)
   (SW_1_toggle
    :reader SW_1_toggle
    :initarg :SW_1_toggle
    :type cl:boolean
    :initform cl:nil)
   (SW_2_toggle
    :reader SW_2_toggle
    :initarg :SW_2_toggle
    :type cl:boolean
    :initform cl:nil)
   (SW_3_toggle
    :reader SW_3_toggle
    :initarg :SW_3_toggle
    :type cl:boolean
    :initform cl:nil)
   (SW_4_toggle
    :reader SW_4_toggle
    :initarg :SW_4_toggle
    :type cl:boolean
    :initform cl:nil)
   (SW_5_toggle
    :reader SW_5_toggle
    :initarg :SW_5_toggle
    :type cl:boolean
    :initform cl:nil)
   (Sub_SW_0_toggle
    :reader Sub_SW_0_toggle
    :initarg :Sub_SW_0_toggle
    :type cl:boolean
    :initform cl:nil)
   (Sub_SW_1_toggle
    :reader Sub_SW_1_toggle
    :initarg :Sub_SW_1_toggle
    :type cl:boolean
    :initform cl:nil)
   (Sub_SW_2_toggle
    :reader Sub_SW_2_toggle
    :initarg :Sub_SW_2_toggle
    :type cl:boolean
    :initform cl:nil)
   (Sub_SW_3_toggle
    :reader Sub_SW_3_toggle
    :initarg :Sub_SW_3_toggle
    :type cl:boolean
    :initform cl:nil)
   (Sub_SW_4_toggle
    :reader Sub_SW_4_toggle
    :initarg :Sub_SW_4_toggle
    :type cl:boolean
    :initform cl:nil)
   (Sub_SW_5_toggle
    :reader Sub_SW_5_toggle
    :initarg :Sub_SW_5_toggle
    :type cl:boolean
    :initform cl:nil)
   (Docking_hall_sensor
    :reader Docking_hall_sensor
    :initarg :Docking_hall_sensor
    :type cl:boolean
    :initform cl:nil)
   (Motor_Brake
    :reader Motor_Brake
    :initarg :Motor_Brake
    :type cl:boolean
    :initform cl:nil)
   (Main_Power_State
    :reader Main_Power_State
    :initarg :Main_Power_State
    :type cl:boolean
    :initform cl:nil)
   (DockingIR_Power_State
    :reader DockingIR_Power_State
    :initarg :DockingIR_Power_State
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SwitchReport (<SwitchReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<SwitchReport> is deprecated: use twinny_msgs-msg:SwitchReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'E_STOP_button-val :lambda-list '(m))
(cl:defmethod E_STOP_button-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:E_STOP_button-val is deprecated.  Use twinny_msgs-msg:E_STOP_button instead.")
  (E_STOP_button m))

(cl:ensure-generic-function 'SW_0_toggle-val :lambda-list '(m))
(cl:defmethod SW_0_toggle-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:SW_0_toggle-val is deprecated.  Use twinny_msgs-msg:SW_0_toggle instead.")
  (SW_0_toggle m))

(cl:ensure-generic-function 'SW_1_toggle-val :lambda-list '(m))
(cl:defmethod SW_1_toggle-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:SW_1_toggle-val is deprecated.  Use twinny_msgs-msg:SW_1_toggle instead.")
  (SW_1_toggle m))

(cl:ensure-generic-function 'SW_2_toggle-val :lambda-list '(m))
(cl:defmethod SW_2_toggle-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:SW_2_toggle-val is deprecated.  Use twinny_msgs-msg:SW_2_toggle instead.")
  (SW_2_toggle m))

(cl:ensure-generic-function 'SW_3_toggle-val :lambda-list '(m))
(cl:defmethod SW_3_toggle-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:SW_3_toggle-val is deprecated.  Use twinny_msgs-msg:SW_3_toggle instead.")
  (SW_3_toggle m))

(cl:ensure-generic-function 'SW_4_toggle-val :lambda-list '(m))
(cl:defmethod SW_4_toggle-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:SW_4_toggle-val is deprecated.  Use twinny_msgs-msg:SW_4_toggle instead.")
  (SW_4_toggle m))

(cl:ensure-generic-function 'SW_5_toggle-val :lambda-list '(m))
(cl:defmethod SW_5_toggle-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:SW_5_toggle-val is deprecated.  Use twinny_msgs-msg:SW_5_toggle instead.")
  (SW_5_toggle m))

(cl:ensure-generic-function 'Sub_SW_0_toggle-val :lambda-list '(m))
(cl:defmethod Sub_SW_0_toggle-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Sub_SW_0_toggle-val is deprecated.  Use twinny_msgs-msg:Sub_SW_0_toggle instead.")
  (Sub_SW_0_toggle m))

(cl:ensure-generic-function 'Sub_SW_1_toggle-val :lambda-list '(m))
(cl:defmethod Sub_SW_1_toggle-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Sub_SW_1_toggle-val is deprecated.  Use twinny_msgs-msg:Sub_SW_1_toggle instead.")
  (Sub_SW_1_toggle m))

(cl:ensure-generic-function 'Sub_SW_2_toggle-val :lambda-list '(m))
(cl:defmethod Sub_SW_2_toggle-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Sub_SW_2_toggle-val is deprecated.  Use twinny_msgs-msg:Sub_SW_2_toggle instead.")
  (Sub_SW_2_toggle m))

(cl:ensure-generic-function 'Sub_SW_3_toggle-val :lambda-list '(m))
(cl:defmethod Sub_SW_3_toggle-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Sub_SW_3_toggle-val is deprecated.  Use twinny_msgs-msg:Sub_SW_3_toggle instead.")
  (Sub_SW_3_toggle m))

(cl:ensure-generic-function 'Sub_SW_4_toggle-val :lambda-list '(m))
(cl:defmethod Sub_SW_4_toggle-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Sub_SW_4_toggle-val is deprecated.  Use twinny_msgs-msg:Sub_SW_4_toggle instead.")
  (Sub_SW_4_toggle m))

(cl:ensure-generic-function 'Sub_SW_5_toggle-val :lambda-list '(m))
(cl:defmethod Sub_SW_5_toggle-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Sub_SW_5_toggle-val is deprecated.  Use twinny_msgs-msg:Sub_SW_5_toggle instead.")
  (Sub_SW_5_toggle m))

(cl:ensure-generic-function 'Docking_hall_sensor-val :lambda-list '(m))
(cl:defmethod Docking_hall_sensor-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Docking_hall_sensor-val is deprecated.  Use twinny_msgs-msg:Docking_hall_sensor instead.")
  (Docking_hall_sensor m))

(cl:ensure-generic-function 'Motor_Brake-val :lambda-list '(m))
(cl:defmethod Motor_Brake-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_Brake-val is deprecated.  Use twinny_msgs-msg:Motor_Brake instead.")
  (Motor_Brake m))

(cl:ensure-generic-function 'Main_Power_State-val :lambda-list '(m))
(cl:defmethod Main_Power_State-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Main_Power_State-val is deprecated.  Use twinny_msgs-msg:Main_Power_State instead.")
  (Main_Power_State m))

(cl:ensure-generic-function 'DockingIR_Power_State-val :lambda-list '(m))
(cl:defmethod DockingIR_Power_State-val ((m <SwitchReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:DockingIR_Power_State-val is deprecated.  Use twinny_msgs-msg:DockingIR_Power_State instead.")
  (DockingIR_Power_State m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchReport>) ostream)
  "Serializes a message object of type '<SwitchReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'E_STOP_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SW_0_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SW_1_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SW_2_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SW_3_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SW_4_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SW_5_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Sub_SW_0_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Sub_SW_1_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Sub_SW_2_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Sub_SW_3_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Sub_SW_4_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Sub_SW_5_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Docking_hall_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Motor_Brake) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Main_Power_State) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'DockingIR_Power_State) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchReport>) istream)
  "Deserializes a message object of type '<SwitchReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'E_STOP_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'SW_0_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'SW_1_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'SW_2_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'SW_3_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'SW_4_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'SW_5_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Sub_SW_0_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Sub_SW_1_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Sub_SW_2_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Sub_SW_3_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Sub_SW_4_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Sub_SW_5_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Docking_hall_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Motor_Brake) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Main_Power_State) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'DockingIR_Power_State) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchReport>)))
  "Returns string type for a message object of type '<SwitchReport>"
  "twinny_msgs/SwitchReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchReport)))
  "Returns string type for a message object of type 'SwitchReport"
  "twinny_msgs/SwitchReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchReport>)))
  "Returns md5sum for a message object of type '<SwitchReport>"
  "a3785c85ae8e5bf04a5bb77839719f66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchReport)))
  "Returns md5sum for a message object of type 'SwitchReport"
  "a3785c85ae8e5bf04a5bb77839719f66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchReport>)))
  "Returns full string definition for message of type '<SwitchReport>"
  (cl:format cl:nil "Header header ~%~%bool E_STOP_button~%bool SW_0_toggle~%bool SW_1_toggle~%bool SW_2_toggle~%bool SW_3_toggle~%bool SW_4_toggle~%bool SW_5_toggle~%~%bool Sub_SW_0_toggle~%bool Sub_SW_1_toggle~%bool Sub_SW_2_toggle~%bool Sub_SW_3_toggle~%bool Sub_SW_4_toggle~%bool Sub_SW_5_toggle~%~%~%bool Docking_hall_sensor~%~%bool Motor_Brake~%bool Main_Power_State~%bool DockingIR_Power_State~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchReport)))
  "Returns full string definition for message of type 'SwitchReport"
  (cl:format cl:nil "Header header ~%~%bool E_STOP_button~%bool SW_0_toggle~%bool SW_1_toggle~%bool SW_2_toggle~%bool SW_3_toggle~%bool SW_4_toggle~%bool SW_5_toggle~%~%bool Sub_SW_0_toggle~%bool Sub_SW_1_toggle~%bool Sub_SW_2_toggle~%bool Sub_SW_3_toggle~%bool Sub_SW_4_toggle~%bool Sub_SW_5_toggle~%~%~%bool Docking_hall_sensor~%~%bool Motor_Brake~%bool Main_Power_State~%bool DockingIR_Power_State~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchReport>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchReport
    (cl:cons ':header (header msg))
    (cl:cons ':E_STOP_button (E_STOP_button msg))
    (cl:cons ':SW_0_toggle (SW_0_toggle msg))
    (cl:cons ':SW_1_toggle (SW_1_toggle msg))
    (cl:cons ':SW_2_toggle (SW_2_toggle msg))
    (cl:cons ':SW_3_toggle (SW_3_toggle msg))
    (cl:cons ':SW_4_toggle (SW_4_toggle msg))
    (cl:cons ':SW_5_toggle (SW_5_toggle msg))
    (cl:cons ':Sub_SW_0_toggle (Sub_SW_0_toggle msg))
    (cl:cons ':Sub_SW_1_toggle (Sub_SW_1_toggle msg))
    (cl:cons ':Sub_SW_2_toggle (Sub_SW_2_toggle msg))
    (cl:cons ':Sub_SW_3_toggle (Sub_SW_3_toggle msg))
    (cl:cons ':Sub_SW_4_toggle (Sub_SW_4_toggle msg))
    (cl:cons ':Sub_SW_5_toggle (Sub_SW_5_toggle msg))
    (cl:cons ':Docking_hall_sensor (Docking_hall_sensor msg))
    (cl:cons ':Motor_Brake (Motor_Brake msg))
    (cl:cons ':Main_Power_State (Main_Power_State msg))
    (cl:cons ':DockingIR_Power_State (DockingIR_Power_State msg))
))
