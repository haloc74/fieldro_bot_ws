;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PalletLiftReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PalletLiftReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::PALLETLIFTREPORT")
  (make-package "TWINNY_MSGS::PALLETLIFTREPORT"))

(in-package "ROS")
;;//! \htmlinclude PalletLiftReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MOVING*" (find-package "TWINNY_MSGS::PALLETLIFTREPORT"))
(shadow '*MOVING* (find-package "TWINNY_MSGS::PALLETLIFTREPORT"))
(defconstant twinny_msgs::PalletLiftReport::*MOVING* "moving")
(intern "*SETTLE*" (find-package "TWINNY_MSGS::PALLETLIFTREPORT"))
(shadow '*SETTLE* (find-package "TWINNY_MSGS::PALLETLIFTREPORT"))
(defconstant twinny_msgs::PalletLiftReport::*SETTLE* "settle")
(intern "*READY_TO_LOAD*" (find-package "TWINNY_MSGS::PALLETLIFTREPORT"))
(shadow '*READY_TO_LOAD* (find-package "TWINNY_MSGS::PALLETLIFTREPORT"))
(defconstant twinny_msgs::PalletLiftReport::*READY_TO_LOAD* "ready_to_load")
(intern "*LOADED*" (find-package "TWINNY_MSGS::PALLETLIFTREPORT"))
(shadow '*LOADED* (find-package "TWINNY_MSGS::PALLETLIFTREPORT"))
(defconstant twinny_msgs::PalletLiftReport::*LOADED* "loaded")
(intern "*READY_TO_UNLOAD*" (find-package "TWINNY_MSGS::PALLETLIFTREPORT"))
(shadow '*READY_TO_UNLOAD* (find-package "TWINNY_MSGS::PALLETLIFTREPORT"))
(defconstant twinny_msgs::PalletLiftReport::*READY_TO_UNLOAD* "ready_to_unload")
(intern "*UNLOADED*" (find-package "TWINNY_MSGS::PALLETLIFTREPORT"))
(shadow '*UNLOADED* (find-package "TWINNY_MSGS::PALLETLIFTREPORT"))
(defconstant twinny_msgs::PalletLiftReport::*UNLOADED* "unloaded")
(defclass twinny_msgs::PalletLiftReport
  :super ros::object
  :slots (_header _type _lift_state _is_robot_loaded _is_station_loaded _is_alarm _last_command ))

(defmethod twinny_msgs::PalletLiftReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:lift_state __lift_state) "")
    ((:is_robot_loaded __is_robot_loaded) nil)
    ((:is_station_loaded __is_station_loaded) nil)
    ((:is_alarm __is_alarm) nil)
    ((:last_command __last_command) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _lift_state (string __lift_state))
   (setq _is_robot_loaded __is_robot_loaded)
   (setq _is_station_loaded __is_station_loaded)
   (setq _is_alarm __is_alarm)
   (setq _last_command (string __last_command))
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
  (:lift_state
   (&optional __lift_state)
   (if __lift_state (setq _lift_state __lift_state)) _lift_state)
  (:is_robot_loaded
   (&optional __is_robot_loaded)
   (if __is_robot_loaded (setq _is_robot_loaded __is_robot_loaded)) _is_robot_loaded)
  (:is_station_loaded
   (&optional __is_station_loaded)
   (if __is_station_loaded (setq _is_station_loaded __is_station_loaded)) _is_station_loaded)
  (:is_alarm
   (&optional __is_alarm)
   (if __is_alarm (setq _is_alarm __is_alarm)) _is_alarm)
  (:last_command
   (&optional __last_command)
   (if __last_command (setq _last_command __last_command)) _last_command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; string _lift_state
    4 (length _lift_state)
    ;; bool _is_robot_loaded
    1
    ;; bool _is_station_loaded
    1
    ;; bool _is_alarm
    1
    ;; string _last_command
    4 (length _last_command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _lift_state
       (write-long (length _lift_state) s) (princ _lift_state s)
     ;; bool _is_robot_loaded
       (if _is_robot_loaded (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_station_loaded
       (if _is_station_loaded (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_alarm
       (if _is_alarm (write-byte -1 s) (write-byte 0 s))
     ;; string _last_command
       (write-long (length _last_command) s) (princ _last_command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _lift_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lift_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_robot_loaded
     (setq _is_robot_loaded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_station_loaded
     (setq _is_station_loaded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_alarm
     (setq _is_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _last_command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get twinny_msgs::PalletLiftReport :md5sum-) "00b1730e0b05bdf263d85c2341b4fab7")
(setf (get twinny_msgs::PalletLiftReport :datatype-) "twinny_msgs/PalletLiftReport")
(setf (get twinny_msgs::PalletLiftReport :definition-)
      "string MOVING=moving
string SETTLE=settle
string READY_TO_LOAD=ready_to_load
string LOADED=loaded
string READY_TO_UNLOAD=ready_to_unload
string UNLOADED=unloaded

Header header
string type
string lift_state
bool is_robot_loaded
bool is_station_loaded
bool is_alarm
string last_command
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



(provide :twinny_msgs/PalletLiftReport "00b1730e0b05bdf263d85c2341b4fab7")


