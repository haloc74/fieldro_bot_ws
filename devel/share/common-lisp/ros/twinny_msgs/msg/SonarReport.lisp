; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude SonarReport.msg.html

(cl:defclass <SonarReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sonar_range
    :reader sonar_range
    :initarg :sonar_range
    :type (cl:vector sensor_msgs-msg:Range)
   :initform (cl:make-array 12 :element-type 'sensor_msgs-msg:Range :initial-element (cl:make-instance 'sensor_msgs-msg:Range))))
)

(cl:defclass SonarReport (<SonarReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<SonarReport> is deprecated: use twinny_msgs-msg:SonarReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SonarReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sonar_range-val :lambda-list '(m))
(cl:defmethod sonar_range-val ((m <SonarReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:sonar_range-val is deprecated.  Use twinny_msgs-msg:sonar_range instead.")
  (sonar_range m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SonarReport>)))
    "Constants for message type '<SonarReport>"
  '((:LEFT_SONAR . 0)
    (:FRONT_SONAR . 1)
    (:RIGHT_SONAR . 2)
    (:FRONT_LEFT_SONAR . 0)
    (:FRONT_MID_SONAR . 1)
    (:FRONT_RIGHT_SONAR . 2)
    (:RIGHT_FRONT_SONAR . 3)
    (:RIGHT_MID_SONAR . 4)
    (:RIGHT_BACK_SONAR . 5)
    (:BACK_RIGHT_SONAR . 6)
    (:BACK_MID_SONAR . 7)
    (:BACK_LEFT_SONAR . 8)
    (:LEFT_BACK_SONAR . 9)
    (:LEFT_MID_SONAR . 10)
    (:LEFT_FRONT_SONAR . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SonarReport)))
    "Constants for message type 'SonarReport"
  '((:LEFT_SONAR . 0)
    (:FRONT_SONAR . 1)
    (:RIGHT_SONAR . 2)
    (:FRONT_LEFT_SONAR . 0)
    (:FRONT_MID_SONAR . 1)
    (:FRONT_RIGHT_SONAR . 2)
    (:RIGHT_FRONT_SONAR . 3)
    (:RIGHT_MID_SONAR . 4)
    (:RIGHT_BACK_SONAR . 5)
    (:BACK_RIGHT_SONAR . 6)
    (:BACK_MID_SONAR . 7)
    (:BACK_LEFT_SONAR . 8)
    (:LEFT_BACK_SONAR . 9)
    (:LEFT_MID_SONAR . 10)
    (:LEFT_FRONT_SONAR . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarReport>) ostream)
  "Serializes a message object of type '<SonarReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sonar_range))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarReport>) istream)
  "Deserializes a message object of type '<SonarReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'sonar_range) (cl:make-array 12))
  (cl:let ((vals (cl:slot-value msg 'sonar_range)))
    (cl:dotimes (i 12)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:Range))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarReport>)))
  "Returns string type for a message object of type '<SonarReport>"
  "twinny_msgs/SonarReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarReport)))
  "Returns string type for a message object of type 'SonarReport"
  "twinny_msgs/SonarReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarReport>)))
  "Returns md5sum for a message object of type '<SonarReport>"
  "12459e57aa4616e3ed20f17651e15882")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarReport)))
  "Returns md5sum for a message object of type 'SonarReport"
  "12459e57aa4616e3ed20f17651e15882")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarReport>)))
  "Returns full string definition for message of type '<SonarReport>"
  (cl:format cl:nil "Header header~%uint8 LEFT_SONAR=0~%uint8 FRONT_SONAR=1~%uint8 RIGHT_SONAR=2~%~%uint8 FRONT_LEFT_SONAR=0~%uint8 FRONT_MID_SONAR=1~%uint8 FRONT_RIGHT_SONAR=2~%~%uint8 RIGHT_FRONT_SONAR=3~%uint8 RIGHT_MID_SONAR=4~%uint8 RIGHT_BACK_SONAR=5~%~%uint8 BACK_RIGHT_SONAR=6~%uint8 BACK_MID_SONAR=7~%uint8 BACK_LEFT_SONAR=8~%~%uint8 LEFT_BACK_SONAR=9~%uint8 LEFT_MID_SONAR=10~%uint8 LEFT_FRONT_SONAR=11~%~%sensor_msgs/Range[12] sonar_range~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Range~%# Single range reading from an active ranger that emits energy and reports~%# one range reading that is valid along an arc at the distance measured. ~%# This message is  not appropriate for laser scanners. See the LaserScan~%# message if you are working with a laser scanner.~%~%# This message also can represent a fixed-distance (binary) ranger.  This~%# sensor will have min_range===max_range===distance of detection.~%# These sensors follow REP 117 and will output -Inf if the object is detected~%# and +Inf if the object is outside of the detection range.~%~%Header header           # timestamp in the header is the time the ranger~%                        # returned the distance reading~%~%# Radiation type enums~%# If you want a value added to this list, send an email to the ros-users list~%uint8 ULTRASOUND=0~%uint8 INFRARED=1~%~%uint8 radiation_type    # the type of radiation used by the sensor~%                        # (sound, IR, etc) [enum]~%~%float32 field_of_view   # the size of the arc that the distance reading is~%                        # valid for [rad]~%                        # the object causing the range reading may have~%                        # been anywhere within -field_of_view/2 and~%                        # field_of_view/2 at the measured range. ~%                        # 0 angle corresponds to the x-axis of the sensor.~%~%float32 min_range       # minimum range value [m]~%float32 max_range       # maximum range value [m]~%                        # Fixed distance rangers require min_range==max_range~%~%float32 range           # range data [m]~%                        # (Note: values < range_min or > range_max~%                        # should be discarded)~%                        # Fixed distance rangers only output -Inf or +Inf.~%                        # -Inf represents a detection within fixed distance.~%                        # (Detection too close to the sensor to quantify)~%                        # +Inf represents no detection within the fixed distance.~%                        # (Object out of range)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarReport)))
  "Returns full string definition for message of type 'SonarReport"
  (cl:format cl:nil "Header header~%uint8 LEFT_SONAR=0~%uint8 FRONT_SONAR=1~%uint8 RIGHT_SONAR=2~%~%uint8 FRONT_LEFT_SONAR=0~%uint8 FRONT_MID_SONAR=1~%uint8 FRONT_RIGHT_SONAR=2~%~%uint8 RIGHT_FRONT_SONAR=3~%uint8 RIGHT_MID_SONAR=4~%uint8 RIGHT_BACK_SONAR=5~%~%uint8 BACK_RIGHT_SONAR=6~%uint8 BACK_MID_SONAR=7~%uint8 BACK_LEFT_SONAR=8~%~%uint8 LEFT_BACK_SONAR=9~%uint8 LEFT_MID_SONAR=10~%uint8 LEFT_FRONT_SONAR=11~%~%sensor_msgs/Range[12] sonar_range~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Range~%# Single range reading from an active ranger that emits energy and reports~%# one range reading that is valid along an arc at the distance measured. ~%# This message is  not appropriate for laser scanners. See the LaserScan~%# message if you are working with a laser scanner.~%~%# This message also can represent a fixed-distance (binary) ranger.  This~%# sensor will have min_range===max_range===distance of detection.~%# These sensors follow REP 117 and will output -Inf if the object is detected~%# and +Inf if the object is outside of the detection range.~%~%Header header           # timestamp in the header is the time the ranger~%                        # returned the distance reading~%~%# Radiation type enums~%# If you want a value added to this list, send an email to the ros-users list~%uint8 ULTRASOUND=0~%uint8 INFRARED=1~%~%uint8 radiation_type    # the type of radiation used by the sensor~%                        # (sound, IR, etc) [enum]~%~%float32 field_of_view   # the size of the arc that the distance reading is~%                        # valid for [rad]~%                        # the object causing the range reading may have~%                        # been anywhere within -field_of_view/2 and~%                        # field_of_view/2 at the measured range. ~%                        # 0 angle corresponds to the x-axis of the sensor.~%~%float32 min_range       # minimum range value [m]~%float32 max_range       # maximum range value [m]~%                        # Fixed distance rangers require min_range==max_range~%~%float32 range           # range data [m]~%                        # (Note: values < range_min or > range_max~%                        # should be discarded)~%                        # Fixed distance rangers only output -Inf or +Inf.~%                        # -Inf represents a detection within fixed distance.~%                        # (Detection too close to the sensor to quantify)~%                        # +Inf represents no detection within the fixed distance.~%                        # (Object out of range)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'sonar_range) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarReport>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarReport
    (cl:cons ':header (header msg))
    (cl:cons ':sonar_range (sonar_range msg))
))
