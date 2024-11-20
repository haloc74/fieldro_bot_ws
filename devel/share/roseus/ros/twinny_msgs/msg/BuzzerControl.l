;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::BuzzerControl)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'BuzzerControl (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::BUZZERCONTROL")
  (make-package "TWINNY_MSGS::BUZZERCONTROL"))

(in-package "ROS")
;;//! \htmlinclude BuzzerControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*BUZZER_CONTROL_OFF*" (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(shadow '*BUZZER_CONTROL_OFF* (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(defconstant twinny_msgs::BuzzerControl::*BUZZER_CONTROL_OFF* 0)
(intern "*BUZZER_CONTROL_1*" (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(shadow '*BUZZER_CONTROL_1* (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(defconstant twinny_msgs::BuzzerControl::*BUZZER_CONTROL_1* 1)
(intern "*BUZZER_CONTROL_2*" (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(shadow '*BUZZER_CONTROL_2* (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(defconstant twinny_msgs::BuzzerControl::*BUZZER_CONTROL_2* 2)
(intern "*BUZZER_CONTROL_1_2*" (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(shadow '*BUZZER_CONTROL_1_2* (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(defconstant twinny_msgs::BuzzerControl::*BUZZER_CONTROL_1_2* 3)
(intern "*BUZZER_CONTROL_3*" (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(shadow '*BUZZER_CONTROL_3* (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(defconstant twinny_msgs::BuzzerControl::*BUZZER_CONTROL_3* 4)
(intern "*BUZZER_CONTROL_1_3*" (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(shadow '*BUZZER_CONTROL_1_3* (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(defconstant twinny_msgs::BuzzerControl::*BUZZER_CONTROL_1_3* 5)
(intern "*BUZZER_CONTROL_2_3*" (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(shadow '*BUZZER_CONTROL_2_3* (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(defconstant twinny_msgs::BuzzerControl::*BUZZER_CONTROL_2_3* 6)
(intern "*BUZZER_CONTROL_ALL*" (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(shadow '*BUZZER_CONTROL_ALL* (find-package "TWINNY_MSGS::BUZZERCONTROL"))
(defconstant twinny_msgs::BuzzerControl::*BUZZER_CONTROL_ALL* 7)
(defclass twinny_msgs::BuzzerControl
  :super ros::object
  :slots (_header _type _buzzer_control ))

(defmethod twinny_msgs::BuzzerControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:buzzer_control __buzzer_control) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _buzzer_control (round __buzzer_control))
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
  (:buzzer_control
   (&optional __buzzer_control)
   (if __buzzer_control (setq _buzzer_control __buzzer_control)) _buzzer_control)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint8 _buzzer_control
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
     ;; uint8 _buzzer_control
       (write-byte _buzzer_control s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _buzzer_control
     (setq _buzzer_control (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::BuzzerControl :md5sum-) "2deb2adab106391fb0b57e805d1b2cd7")
(setf (get twinny_msgs::BuzzerControl :datatype-) "twinny_msgs/BuzzerControl")
(setf (get twinny_msgs::BuzzerControl :definition-)
      "Header header
string type

uint8 BUZZER_CONTROL_OFF=0
uint8 BUZZER_CONTROL_1=1
uint8 BUZZER_CONTROL_2=2
uint8 BUZZER_CONTROL_1_2=3
uint8 BUZZER_CONTROL_3=4
uint8 BUZZER_CONTROL_1_3=5
uint8 BUZZER_CONTROL_2_3=6
uint8 BUZZER_CONTROL_ALL=7

uint8 buzzer_control
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



(provide :twinny_msgs/BuzzerControl "2deb2adab106391fb0b57e805d1b2cd7")


