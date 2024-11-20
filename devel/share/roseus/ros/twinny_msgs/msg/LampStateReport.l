;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::LampStateReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'LampStateReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::LAMPSTATEREPORT")
  (make-package "TWINNY_MSGS::LAMPSTATEREPORT"))

(in-package "ROS")
;;//! \htmlinclude LampStateReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LAMP_STATUS_OFF*" (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(shadow '*LAMP_STATUS_OFF* (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(defconstant twinny_msgs::LampStateReport::*LAMP_STATUS_OFF* 0)
(intern "*LAMP_STATUS_RED*" (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(shadow '*LAMP_STATUS_RED* (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(defconstant twinny_msgs::LampStateReport::*LAMP_STATUS_RED* 1)
(intern "*LAMP_STATUS_AMBER*" (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(shadow '*LAMP_STATUS_AMBER* (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(defconstant twinny_msgs::LampStateReport::*LAMP_STATUS_AMBER* 2)
(intern "*LAMP_STATUS_RED_AMBER*" (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(shadow '*LAMP_STATUS_RED_AMBER* (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(defconstant twinny_msgs::LampStateReport::*LAMP_STATUS_RED_AMBER* 3)
(intern "*LAMP_STATUS_GREEN*" (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(shadow '*LAMP_STATUS_GREEN* (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(defconstant twinny_msgs::LampStateReport::*LAMP_STATUS_GREEN* 4)
(intern "*LAMP_STATUS_RED_GREEN*" (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(shadow '*LAMP_STATUS_RED_GREEN* (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(defconstant twinny_msgs::LampStateReport::*LAMP_STATUS_RED_GREEN* 5)
(intern "*LAMP_STATUS_AMBER_GREEN*" (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(shadow '*LAMP_STATUS_AMBER_GREEN* (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(defconstant twinny_msgs::LampStateReport::*LAMP_STATUS_AMBER_GREEN* 6)
(intern "*LAMP_STATUS_ALL*" (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(shadow '*LAMP_STATUS_ALL* (find-package "TWINNY_MSGS::LAMPSTATEREPORT"))
(defconstant twinny_msgs::LampStateReport::*LAMP_STATUS_ALL* 7)
(defclass twinny_msgs::LampStateReport
  :super ros::object
  :slots (_header _type _lamp_state ))

(defmethod twinny_msgs::LampStateReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:lamp_state __lamp_state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _lamp_state (round __lamp_state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:lamp_state
   (&optional __lamp_state)
   (if __lamp_state (setq _lamp_state __lamp_state)) _lamp_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint8 _lamp_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint8 _lamp_state
       (write-byte _lamp_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _lamp_state
     (setq _lamp_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::LampStateReport :md5sum-) "51065b6ca361ab348ad809d22534f3d3")
(setf (get twinny_msgs::LampStateReport :datatype-) "twinny_msgs/LampStateReport")
(setf (get twinny_msgs::LampStateReport :definition-)
      "Header header
string type

uint8 LAMP_STATUS_OFF=0
uint8 LAMP_STATUS_RED=1
uint8 LAMP_STATUS_AMBER=2
uint8 LAMP_STATUS_RED_AMBER=3
uint8 LAMP_STATUS_GREEN=4
uint8 LAMP_STATUS_RED_GREEN=5
uint8 LAMP_STATUS_AMBER_GREEN=6
uint8 LAMP_STATUS_ALL=7

uint8 lamp_state
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

")



(provide :twinny_msgs/LampStateReport "51065b6ca361ab348ad809d22534f3d3")


