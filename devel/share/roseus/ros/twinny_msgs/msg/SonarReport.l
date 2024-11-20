;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::SonarReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'SonarReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::SONARREPORT")
  (make-package "TWINNY_MSGS::SONARREPORT"))

(in-package "ROS")
;;//! \htmlinclude SonarReport.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LEFT_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*LEFT_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*LEFT_SONAR* 0)
(intern "*FRONT_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*FRONT_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*FRONT_SONAR* 1)
(intern "*RIGHT_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*RIGHT_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*RIGHT_SONAR* 2)
(intern "*FRONT_LEFT_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*FRONT_LEFT_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*FRONT_LEFT_SONAR* 0)
(intern "*FRONT_MID_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*FRONT_MID_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*FRONT_MID_SONAR* 1)
(intern "*FRONT_RIGHT_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*FRONT_RIGHT_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*FRONT_RIGHT_SONAR* 2)
(intern "*RIGHT_FRONT_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*RIGHT_FRONT_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*RIGHT_FRONT_SONAR* 3)
(intern "*RIGHT_MID_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*RIGHT_MID_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*RIGHT_MID_SONAR* 4)
(intern "*RIGHT_BACK_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*RIGHT_BACK_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*RIGHT_BACK_SONAR* 5)
(intern "*BACK_RIGHT_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*BACK_RIGHT_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*BACK_RIGHT_SONAR* 6)
(intern "*BACK_MID_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*BACK_MID_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*BACK_MID_SONAR* 7)
(intern "*BACK_LEFT_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*BACK_LEFT_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*BACK_LEFT_SONAR* 8)
(intern "*LEFT_BACK_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*LEFT_BACK_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*LEFT_BACK_SONAR* 9)
(intern "*LEFT_MID_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*LEFT_MID_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*LEFT_MID_SONAR* 10)
(intern "*LEFT_FRONT_SONAR*" (find-package "TWINNY_MSGS::SONARREPORT"))
(shadow '*LEFT_FRONT_SONAR* (find-package "TWINNY_MSGS::SONARREPORT"))
(defconstant twinny_msgs::SonarReport::*LEFT_FRONT_SONAR* 11)
(defclass twinny_msgs::SonarReport
  :super ros::object
  :slots (_header _sonar_range ))

(defmethod twinny_msgs::SonarReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sonar_range __sonar_range) (let (r) (dotimes (i 12) (push (instance sensor_msgs::Range :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sonar_range __sonar_range)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sonar_range
   (&rest __sonar_range)
   (if (keywordp (car __sonar_range))
       (send* _sonar_range __sonar_range)
     (progn
       (if __sonar_range (setq _sonar_range (car __sonar_range)))
       _sonar_range)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/Range[12] _sonar_range
    (apply #'+ (send-all _sonar_range :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/Range[12] _sonar_range
     (dolist (elem _sonar_range)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/Range[12] _sonar_range
   (dotimes (i 12)
     (send (elt _sonar_range i) :deserialize buf ptr-) (incf ptr- (send (elt _sonar_range i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get twinny_msgs::SonarReport :md5sum-) "12459e57aa4616e3ed20f17651e15882")
(setf (get twinny_msgs::SonarReport :datatype-) "twinny_msgs/SonarReport")
(setf (get twinny_msgs::SonarReport :definition-)
      "Header header
uint8 LEFT_SONAR=0
uint8 FRONT_SONAR=1
uint8 RIGHT_SONAR=2

uint8 FRONT_LEFT_SONAR=0
uint8 FRONT_MID_SONAR=1
uint8 FRONT_RIGHT_SONAR=2

uint8 RIGHT_FRONT_SONAR=3
uint8 RIGHT_MID_SONAR=4
uint8 RIGHT_BACK_SONAR=5

uint8 BACK_RIGHT_SONAR=6
uint8 BACK_MID_SONAR=7
uint8 BACK_LEFT_SONAR=8

uint8 LEFT_BACK_SONAR=9
uint8 LEFT_MID_SONAR=10
uint8 LEFT_FRONT_SONAR=11

sensor_msgs/Range[12] sonar_range

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/Range
# Single range reading from an active ranger that emits energy and reports
# one range reading that is valid along an arc at the distance measured. 
# This message is  not appropriate for laser scanners. See the LaserScan
# message if you are working with a laser scanner.

# This message also can represent a fixed-distance (binary) ranger.  This
# sensor will have min_range===max_range===distance of detection.
# These sensors follow REP 117 and will output -Inf if the object is detected
# and +Inf if the object is outside of the detection range.

Header header           # timestamp in the header is the time the ranger
                        # returned the distance reading

# Radiation type enums
# If you want a value added to this list, send an email to the ros-users list
uint8 ULTRASOUND=0
uint8 INFRARED=1

uint8 radiation_type    # the type of radiation used by the sensor
                        # (sound, IR, etc) [enum]

float32 field_of_view   # the size of the arc that the distance reading is
                        # valid for [rad]
                        # the object causing the range reading may have
                        # been anywhere within -field_of_view/2 and
                        # field_of_view/2 at the measured range. 
                        # 0 angle corresponds to the x-axis of the sensor.

float32 min_range       # minimum range value [m]
float32 max_range       # maximum range value [m]
                        # Fixed distance rangers require min_range==max_range

float32 range           # range data [m]
                        # (Note: values < range_min or > range_max
                        # should be discarded)
                        # Fixed distance rangers only output -Inf or +Inf.
                        # -Inf represents a detection within fixed distance.
                        # (Detection too close to the sensor to quantify)
                        # +Inf represents no detection within the fixed distance.
                        # (Object out of range)
")



(provide :twinny_msgs/SonarReport "12459e57aa4616e3ed20f17651e15882")


