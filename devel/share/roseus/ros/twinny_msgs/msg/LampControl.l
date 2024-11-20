;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::LampControl)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'LampControl (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::LAMPCONTROL")
  (make-package "TWINNY_MSGS::LAMPCONTROL"))

(in-package "ROS")
;;//! \htmlinclude LampControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LAMP_CONTROL_OFF*" (find-package "TWINNY_MSGS::LAMPCONTROL"))
(shadow '*LAMP_CONTROL_OFF* (find-package "TWINNY_MSGS::LAMPCONTROL"))
(defconstant twinny_msgs::LampControl::*LAMP_CONTROL_OFF* 0)
(intern "*LAMP_CONTROL_RED*" (find-package "TWINNY_MSGS::LAMPCONTROL"))
(shadow '*LAMP_CONTROL_RED* (find-package "TWINNY_MSGS::LAMPCONTROL"))
(defconstant twinny_msgs::LampControl::*LAMP_CONTROL_RED* 1)
(intern "*LAMP_CONTROL_AMBER*" (find-package "TWINNY_MSGS::LAMPCONTROL"))
(shadow '*LAMP_CONTROL_AMBER* (find-package "TWINNY_MSGS::LAMPCONTROL"))
(defconstant twinny_msgs::LampControl::*LAMP_CONTROL_AMBER* 2)
(intern "*LAMP_CONTROL_RED_AMBER*" (find-package "TWINNY_MSGS::LAMPCONTROL"))
(shadow '*LAMP_CONTROL_RED_AMBER* (find-package "TWINNY_MSGS::LAMPCONTROL"))
(defconstant twinny_msgs::LampControl::*LAMP_CONTROL_RED_AMBER* 3)
(intern "*LAMP_CONTROL_GREEN*" (find-package "TWINNY_MSGS::LAMPCONTROL"))
(shadow '*LAMP_CONTROL_GREEN* (find-package "TWINNY_MSGS::LAMPCONTROL"))
(defconstant twinny_msgs::LampControl::*LAMP_CONTROL_GREEN* 4)
(intern "*LAMP_CONTROL_RED_GREEN*" (find-package "TWINNY_MSGS::LAMPCONTROL"))
(shadow '*LAMP_CONTROL_RED_GREEN* (find-package "TWINNY_MSGS::LAMPCONTROL"))
(defconstant twinny_msgs::LampControl::*LAMP_CONTROL_RED_GREEN* 5)
(intern "*LAMP_CONTROL_AMBER_GREEN*" (find-package "TWINNY_MSGS::LAMPCONTROL"))
(shadow '*LAMP_CONTROL_AMBER_GREEN* (find-package "TWINNY_MSGS::LAMPCONTROL"))
(defconstant twinny_msgs::LampControl::*LAMP_CONTROL_AMBER_GREEN* 6)
(intern "*LAMP_CONTROL_ALL*" (find-package "TWINNY_MSGS::LAMPCONTROL"))
(shadow '*LAMP_CONTROL_ALL* (find-package "TWINNY_MSGS::LAMPCONTROL"))
(defconstant twinny_msgs::LampControl::*LAMP_CONTROL_ALL* 7)
(defclass twinny_msgs::LampControl
  :super ros::object
  :slots (_header _type _lamp_control ))

(defmethod twinny_msgs::LampControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:lamp_control __lamp_control) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _lamp_control (round __lamp_control))
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
  (:lamp_control
   (&optional __lamp_control)
   (if __lamp_control (setq _lamp_control __lamp_control)) _lamp_control)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint8 _lamp_control
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
     ;; uint8 _lamp_control
       (write-byte _lamp_control s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _lamp_control
     (setq _lamp_control (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::LampControl :md5sum-) "5ecbc415e2e3fe2c315df80bc2d55b1d")
(setf (get twinny_msgs::LampControl :datatype-) "twinny_msgs/LampControl")
(setf (get twinny_msgs::LampControl :definition-)
      "Header header
string type

uint8 LAMP_CONTROL_OFF=0
uint8 LAMP_CONTROL_RED=1
uint8 LAMP_CONTROL_AMBER=2
uint8 LAMP_CONTROL_RED_AMBER=3
uint8 LAMP_CONTROL_GREEN=4
uint8 LAMP_CONTROL_RED_GREEN=5
uint8 LAMP_CONTROL_AMBER_GREEN=6
uint8 LAMP_CONTROL_ALL=7

uint8 lamp_control
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



(provide :twinny_msgs/LampControl "5ecbc415e2e3fe2c315df80bc2d55b1d")


