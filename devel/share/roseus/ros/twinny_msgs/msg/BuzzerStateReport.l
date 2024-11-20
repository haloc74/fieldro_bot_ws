;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::BuzzerStateReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'BuzzerStateReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::BUZZERSTATEREPORT")
  (make-package "TWINNY_MSGS::BUZZERSTATEREPORT"))

(in-package "ROS")
;;//! \htmlinclude BuzzerStateReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*BUZZER_STATE_OFF*" (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(shadow '*BUZZER_STATE_OFF* (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(defconstant twinny_msgs::BuzzerStateReport::*BUZZER_STATE_OFF* 0)
(intern "*BUZZER_STATE_1*" (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(shadow '*BUZZER_STATE_1* (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(defconstant twinny_msgs::BuzzerStateReport::*BUZZER_STATE_1* 1)
(intern "*BUZZER_STATE_2*" (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(shadow '*BUZZER_STATE_2* (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(defconstant twinny_msgs::BuzzerStateReport::*BUZZER_STATE_2* 2)
(intern "*BUZZER_STATE_1_2*" (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(shadow '*BUZZER_STATE_1_2* (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(defconstant twinny_msgs::BuzzerStateReport::*BUZZER_STATE_1_2* 3)
(intern "*BUZZER_STATE_3*" (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(shadow '*BUZZER_STATE_3* (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(defconstant twinny_msgs::BuzzerStateReport::*BUZZER_STATE_3* 4)
(intern "*BUZZER_STATE_1_3*" (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(shadow '*BUZZER_STATE_1_3* (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(defconstant twinny_msgs::BuzzerStateReport::*BUZZER_STATE_1_3* 5)
(intern "*BUZZER_STATE_2_3*" (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(shadow '*BUZZER_STATE_2_3* (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(defconstant twinny_msgs::BuzzerStateReport::*BUZZER_STATE_2_3* 6)
(intern "*BUZZER_STATE_ALL*" (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(shadow '*BUZZER_STATE_ALL* (find-package "TWINNY_MSGS::BUZZERSTATEREPORT"))
(defconstant twinny_msgs::BuzzerStateReport::*BUZZER_STATE_ALL* 7)
(defclass twinny_msgs::BuzzerStateReport
  :super ros::object
  :slots (_header _type _buzzer_state ))

(defmethod twinny_msgs::BuzzerStateReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:buzzer_state __buzzer_state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _buzzer_state (round __buzzer_state))
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
  (:buzzer_state
   (&optional __buzzer_state)
   (if __buzzer_state (setq _buzzer_state __buzzer_state)) _buzzer_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint8 _buzzer_state
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
     ;; uint8 _buzzer_state
       (write-byte _buzzer_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _buzzer_state
     (setq _buzzer_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::BuzzerStateReport :md5sum-) "04f8c52747d765f6a5272221d071769e")
(setf (get twinny_msgs::BuzzerStateReport :datatype-) "twinny_msgs/BuzzerStateReport")
(setf (get twinny_msgs::BuzzerStateReport :definition-)
      "Header header
string type

uint8 BUZZER_STATE_OFF=0
uint8 BUZZER_STATE_1=1
uint8 BUZZER_STATE_2=2
uint8 BUZZER_STATE_1_2=3
uint8 BUZZER_STATE_3=4
uint8 BUZZER_STATE_1_3=5
uint8 BUZZER_STATE_2_3=6
uint8 BUZZER_STATE_ALL=7

uint8 buzzer_state
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



(provide :twinny_msgs/BuzzerStateReport "04f8c52747d765f6a5272221d071769e")


