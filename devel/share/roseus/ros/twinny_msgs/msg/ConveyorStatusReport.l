;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::ConveyorStatusReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'ConveyorStatusReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::CONVEYORSTATUSREPORT")
  (make-package "TWINNY_MSGS::CONVEYORSTATUSREPORT"))

(in-package "ROS")
;;//! \htmlinclude ConveyorStatusReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CONVEYOR_STATUS_REVERSE*" (find-package "TWINNY_MSGS::CONVEYORSTATUSREPORT"))
(shadow '*CONVEYOR_STATUS_REVERSE* (find-package "TWINNY_MSGS::CONVEYORSTATUSREPORT"))
(defconstant twinny_msgs::ConveyorStatusReport::*CONVEYOR_STATUS_REVERSE* -1)
(intern "*CONVEYOR_STATUS_STOP*" (find-package "TWINNY_MSGS::CONVEYORSTATUSREPORT"))
(shadow '*CONVEYOR_STATUS_STOP* (find-package "TWINNY_MSGS::CONVEYORSTATUSREPORT"))
(defconstant twinny_msgs::ConveyorStatusReport::*CONVEYOR_STATUS_STOP* 0)
(intern "*CONVEYOR_STATUS_FORWARD*" (find-package "TWINNY_MSGS::CONVEYORSTATUSREPORT"))
(shadow '*CONVEYOR_STATUS_FORWARD* (find-package "TWINNY_MSGS::CONVEYORSTATUSREPORT"))
(defconstant twinny_msgs::ConveyorStatusReport::*CONVEYOR_STATUS_FORWARD* 1)
(defclass twinny_msgs::ConveyorStatusReport
  :super ros::object
  :slots (_header _type _conveyor1_status _conveyor2_status _is_loaded_conveyor1_1 _is_loaded_conveyor1_2 _is_loaded_conveyor2_1 _is_loaded_conveyor2_2 _is_alarm_conveyor1 _is_alarm_conveyor2 _door_open_status _fall_prevention_device_status ))

(defmethod twinny_msgs::ConveyorStatusReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:conveyor1_status __conveyor1_status) 0)
    ((:conveyor2_status __conveyor2_status) 0)
    ((:is_loaded_conveyor1_1 __is_loaded_conveyor1_1) nil)
    ((:is_loaded_conveyor1_2 __is_loaded_conveyor1_2) nil)
    ((:is_loaded_conveyor2_1 __is_loaded_conveyor2_1) nil)
    ((:is_loaded_conveyor2_2 __is_loaded_conveyor2_2) nil)
    ((:is_alarm_conveyor1 __is_alarm_conveyor1) nil)
    ((:is_alarm_conveyor2 __is_alarm_conveyor2) nil)
    ((:door_open_status __door_open_status) nil)
    ((:fall_prevention_device_status __fall_prevention_device_status) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _conveyor1_status (round __conveyor1_status))
   (setq _conveyor2_status (round __conveyor2_status))
   (setq _is_loaded_conveyor1_1 __is_loaded_conveyor1_1)
   (setq _is_loaded_conveyor1_2 __is_loaded_conveyor1_2)
   (setq _is_loaded_conveyor2_1 __is_loaded_conveyor2_1)
   (setq _is_loaded_conveyor2_2 __is_loaded_conveyor2_2)
   (setq _is_alarm_conveyor1 __is_alarm_conveyor1)
   (setq _is_alarm_conveyor2 __is_alarm_conveyor2)
   (setq _door_open_status __door_open_status)
   (setq _fall_prevention_device_status __fall_prevention_device_status)
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
  (:conveyor1_status
   (&optional __conveyor1_status)
   (if __conveyor1_status (setq _conveyor1_status __conveyor1_status)) _conveyor1_status)
  (:conveyor2_status
   (&optional __conveyor2_status)
   (if __conveyor2_status (setq _conveyor2_status __conveyor2_status)) _conveyor2_status)
  (:is_loaded_conveyor1_1
   (&optional __is_loaded_conveyor1_1)
   (if __is_loaded_conveyor1_1 (setq _is_loaded_conveyor1_1 __is_loaded_conveyor1_1)) _is_loaded_conveyor1_1)
  (:is_loaded_conveyor1_2
   (&optional __is_loaded_conveyor1_2)
   (if __is_loaded_conveyor1_2 (setq _is_loaded_conveyor1_2 __is_loaded_conveyor1_2)) _is_loaded_conveyor1_2)
  (:is_loaded_conveyor2_1
   (&optional __is_loaded_conveyor2_1)
   (if __is_loaded_conveyor2_1 (setq _is_loaded_conveyor2_1 __is_loaded_conveyor2_1)) _is_loaded_conveyor2_1)
  (:is_loaded_conveyor2_2
   (&optional __is_loaded_conveyor2_2)
   (if __is_loaded_conveyor2_2 (setq _is_loaded_conveyor2_2 __is_loaded_conveyor2_2)) _is_loaded_conveyor2_2)
  (:is_alarm_conveyor1
   (&optional __is_alarm_conveyor1)
   (if __is_alarm_conveyor1 (setq _is_alarm_conveyor1 __is_alarm_conveyor1)) _is_alarm_conveyor1)
  (:is_alarm_conveyor2
   (&optional __is_alarm_conveyor2)
   (if __is_alarm_conveyor2 (setq _is_alarm_conveyor2 __is_alarm_conveyor2)) _is_alarm_conveyor2)
  (:door_open_status
   (&optional __door_open_status)
   (if __door_open_status (setq _door_open_status __door_open_status)) _door_open_status)
  (:fall_prevention_device_status
   (&optional __fall_prevention_device_status)
   (if __fall_prevention_device_status (setq _fall_prevention_device_status __fall_prevention_device_status)) _fall_prevention_device_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; int8 _conveyor1_status
    1
    ;; int8 _conveyor2_status
    1
    ;; bool _is_loaded_conveyor1_1
    1
    ;; bool _is_loaded_conveyor1_2
    1
    ;; bool _is_loaded_conveyor2_1
    1
    ;; bool _is_loaded_conveyor2_2
    1
    ;; bool _is_alarm_conveyor1
    1
    ;; bool _is_alarm_conveyor2
    1
    ;; bool _door_open_status
    1
    ;; bool _fall_prevention_device_status
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
     ;; int8 _conveyor1_status
       (write-byte _conveyor1_status s)
     ;; int8 _conveyor2_status
       (write-byte _conveyor2_status s)
     ;; bool _is_loaded_conveyor1_1
       (if _is_loaded_conveyor1_1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_loaded_conveyor1_2
       (if _is_loaded_conveyor1_2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_loaded_conveyor2_1
       (if _is_loaded_conveyor2_1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_loaded_conveyor2_2
       (if _is_loaded_conveyor2_2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_alarm_conveyor1
       (if _is_alarm_conveyor1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_alarm_conveyor2
       (if _is_alarm_conveyor2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _door_open_status
       (if _door_open_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _fall_prevention_device_status
       (if _fall_prevention_device_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _conveyor1_status
     (setq _conveyor1_status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _conveyor1_status 127) (setq _conveyor1_status (- _conveyor1_status 256)))
   ;; int8 _conveyor2_status
     (setq _conveyor2_status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _conveyor2_status 127) (setq _conveyor2_status (- _conveyor2_status 256)))
   ;; bool _is_loaded_conveyor1_1
     (setq _is_loaded_conveyor1_1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_loaded_conveyor1_2
     (setq _is_loaded_conveyor1_2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_loaded_conveyor2_1
     (setq _is_loaded_conveyor2_1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_loaded_conveyor2_2
     (setq _is_loaded_conveyor2_2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_alarm_conveyor1
     (setq _is_alarm_conveyor1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_alarm_conveyor2
     (setq _is_alarm_conveyor2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _door_open_status
     (setq _door_open_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fall_prevention_device_status
     (setq _fall_prevention_device_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::ConveyorStatusReport :md5sum-) "edac1cb1f807055427a86099e42b8c69")
(setf (get twinny_msgs::ConveyorStatusReport :datatype-) "twinny_msgs/ConveyorStatusReport")
(setf (get twinny_msgs::ConveyorStatusReport :definition-)
      "Header header
string type

int8 CONVEYOR_STATUS_REVERSE = -1
int8 CONVEYOR_STATUS_STOP = 0
int8 CONVEYOR_STATUS_FORWARD = 1

int8 conveyor1_status
int8 conveyor2_status

bool is_loaded_conveyor1_1
bool is_loaded_conveyor1_2
bool is_loaded_conveyor2_1
bool is_loaded_conveyor2_2

bool is_alarm_conveyor1
bool is_alarm_conveyor2

bool door_open_status

bool fall_prevention_device_status


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



(provide :twinny_msgs/ConveyorStatusReport "edac1cb1f807055427a86099e42b8c69")


