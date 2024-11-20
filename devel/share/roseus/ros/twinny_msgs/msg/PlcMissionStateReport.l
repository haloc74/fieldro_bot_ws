;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PlcMissionStateReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PlcMissionStateReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT")
  (make-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))

(in-package "ROS")
;;//! \htmlinclude PlcMissionStateReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*READY*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*READY* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*READY* 0)
(intern "*WORKING*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*WORKING* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*WORKING* 1)
(intern "*COMPLETE*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*COMPLETE* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*COMPLETE* 2)
(intern "*FAIL*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*FAIL* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*FAIL* 3)
(intern "*NO_ALARM*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*NO_ALARM* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*NO_ALARM* 0)
(intern "*ALARM_DRIVE_DISABLE*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_DRIVE_DISABLE* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_DRIVE_DISABLE* 1)
(intern "*ALARM_LOAD_VISION_NG*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_LOAD_VISION_NG* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_LOAD_VISION_NG* 11)
(intern "*ALARM_LOAD_WORKSPACE_NG*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_LOAD_WORKSPACE_NG* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_LOAD_WORKSPACE_NG* 12)
(intern "*ALARM_UNLOAD_BAN*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_UNLOAD_BAN* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_UNLOAD_BAN* 13)
(intern "*ALARM_LOAD_RFID_READ_NG*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_LOAD_RFID_READ_NG* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_LOAD_RFID_READ_NG* 14)
(intern "*ALARM_LOAD_RFID_CHECK*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_LOAD_RFID_CHECK* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_LOAD_RFID_CHECK* 15)
(intern "*ALARM_UNLOAD_VISION_NG*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_UNLOAD_VISION_NG* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_UNLOAD_VISION_NG* 21)
(intern "*ALARM_UNLOAD_WORKSPACE_NG*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_UNLOAD_WORKSPACE_NG* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_UNLOAD_WORKSPACE_NG* 22)
(intern "*ALARM_UNLOAD_RFID_CHECK*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_UNLOAD_RFID_CHECK* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_UNLOAD_RFID_CHECK* 23)
(intern "*ALARM_BATTERY_VISION_NG*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_BATTERY_VISION_NG* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_BATTERY_VISION_NG* 31)
(intern "*ALARM_BATTERY_WORKSPACE_NG*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_BATTERY_WORKSPACE_NG* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_BATTERY_WORKSPACE_NG* 32)
(intern "*ALARM_PIO_READY_DELAY*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_PIO_READY_DELAY* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_PIO_READY_DELAY* 33)
(intern "*ALARM_PIO_BATTERY_REQUEST_RESPONSE_DELAY*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_PIO_BATTERY_REQUEST_RESPONSE_DELAY* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_PIO_BATTERY_REQUEST_RESPONSE_DELAY* 34)
(intern "*ALARM_PIO_BATTERY_COMPLETE_DELAY*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_PIO_BATTERY_COMPLETE_DELAY* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_PIO_BATTERY_COMPLETE_DELAY* 35)
(intern "*ALARM_PIO_IF_COMPLETE_DELAY*" (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(shadow '*ALARM_PIO_IF_COMPLETE_DELAY* (find-package "TWINNY_MSGS::PLCMISSIONSTATEREPORT"))
(defconstant twinny_msgs::PlcMissionStateReport::*ALARM_PIO_IF_COMPLETE_DELAY* 36)
(defclass twinny_msgs::PlcMissionStateReport
  :super ros::object
  :slots (_header _type _is_manual _status _magazine_slot _error ))

(defmethod twinny_msgs::PlcMissionStateReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:is_manual __is_manual) nil)
    ((:status __status) 0)
    ((:magazine_slot __magazine_slot) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _is_manual __is_manual)
   (setq _status (round __status))
   (setq _magazine_slot __magazine_slot)
   (setq _error (round __error))
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
  (:is_manual
   (&optional __is_manual)
   (if __is_manual (setq _is_manual __is_manual)) _is_manual)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:magazine_slot
   (&optional __magazine_slot)
   (if __magazine_slot (setq _magazine_slot __magazine_slot)) _magazine_slot)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; bool _is_manual
    1
    ;; uint8 _status
    1
    ;; string[] _magazine_slot
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _magazine_slot)) 4
    ;; uint32 _error
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; bool _is_manual
       (if _is_manual (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _status
       (write-byte _status s)
     ;; string[] _magazine_slot
     (write-long (length _magazine_slot) s)
     (dolist (elem _magazine_slot)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint32 _error
       (write-long _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_manual
     (setq _is_manual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string[] _magazine_slot
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _magazine_slot (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _magazine_slot i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint32 _error
     (setq _error (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get twinny_msgs::PlcMissionStateReport :md5sum-) "f2b9c2a3491b99084010a4db4b12614d")
(setf (get twinny_msgs::PlcMissionStateReport :datatype-) "twinny_msgs/PlcMissionStateReport")
(setf (get twinny_msgs::PlcMissionStateReport :definition-)
      "Header header
string type

bool is_manual

uint8 READY = 0
uint8 WORKING = 1
uint8 COMPLETE = 2
uint8 FAIL = 3
uint8 status

uint32 NO_ALARM = 0
uint32 ALARM_DRIVE_DISABLE = 1

uint32 ALARM_LOAD_VISION_NG = 11
uint32 ALARM_LOAD_WORKSPACE_NG = 12
uint32 ALARM_UNLOAD_BAN = 13
uint32 ALARM_LOAD_RFID_READ_NG = 14
uint32 ALARM_LOAD_RFID_CHECK = 15

uint32 ALARM_UNLOAD_VISION_NG = 21
uint32 ALARM_UNLOAD_WORKSPACE_NG = 22
uint32 ALARM_UNLOAD_RFID_CHECK = 23

uint32 ALARM_BATTERY_VISION_NG = 31
uint32 ALARM_BATTERY_WORKSPACE_NG = 32
uint32 ALARM_PIO_READY_DELAY = 33
uint32 ALARM_PIO_BATTERY_REQUEST_RESPONSE_DELAY = 34
uint32 ALARM_PIO_BATTERY_COMPLETE_DELAY =35
uint32 ALARM_PIO_IF_COMPLETE_DELAY = 36

string[] magazine_slot
uint32 error
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



(provide :twinny_msgs/PlcMissionStateReport "f2b9c2a3491b99084010a4db4b12614d")


