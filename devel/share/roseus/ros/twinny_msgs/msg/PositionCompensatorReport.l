;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PositionCompensatorReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PositionCompensatorReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT")
  (make-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))

(in-package "ROS")
;;//! \htmlinclude PositionCompensatorReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*READY*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*READY* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*READY* 1)
(intern "*RUNNING*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*RUNNING* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*RUNNING* 2)
(intern "*ERROR*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*ERROR* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*ERROR* -99)
(intern "*NO_EVENT*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*NO_EVENT* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*NO_EVENT* 0)
(intern "*GET_START*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*GET_START* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*GET_START* 1)
(intern "*GET_STOP*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*GET_STOP* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*GET_STOP* 2)
(intern "*FIND_STATION*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*FIND_STATION* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*FIND_STATION* 11)
(intern "*FINISHED*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*FINISHED* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*FINISHED* 21)
(intern "*BUMPER_ACTIVATED*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*BUMPER_ACTIVATED* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*BUMPER_ACTIVATED* 31)
(intern "*BUMPER_RELEASED*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*BUMPER_RELEASED* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*BUMPER_RELEASED* 32)
(intern "*RECOVERY_WORKING*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*RECOVERY_WORKING* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*RECOVERY_WORKING* 41)
(intern "*FAIL_DUETO_NO_STATION*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*FAIL_DUETO_NO_STATION* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*FAIL_DUETO_NO_STATION* -1)
(intern "*FAIL_DUETO_OVER_RECOVERY*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*FAIL_DUETO_OVER_RECOVERY* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*FAIL_DUETO_OVER_RECOVERY* -2)
(intern "*FAIL_DUETO_LENGTH_ERROR*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*FAIL_DUETO_LENGTH_ERROR* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*FAIL_DUETO_LENGTH_ERROR* -3)
(intern "*FAIL_DUETO_ANGLE_ERROR*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*FAIL_DUETO_ANGLE_ERROR* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*FAIL_DUETO_ANGLE_ERROR* -4)
(intern "*ERROR_OCCUR*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(shadow '*ERROR_OCCUR* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORREPORT"))
(defconstant twinny_msgs::PositionCompensatorReport::*ERROR_OCCUR* -99)
(defclass twinny_msgs::PositionCompensatorReport
  :super ros::object
  :slots (_header _command_id _state _last_event _final_x_error _final_y_error _final_theta_error ))

(defmethod twinny_msgs::PositionCompensatorReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:command_id __command_id) 0)
    ((:state __state) 0)
    ((:last_event __last_event) 0)
    ((:final_x_error __final_x_error) 0.0)
    ((:final_y_error __final_y_error) 0.0)
    ((:final_theta_error __final_theta_error) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _command_id (round __command_id))
   (setq _state (round __state))
   (setq _last_event (round __last_event))
   (setq _final_x_error (float __final_x_error))
   (setq _final_y_error (float __final_y_error))
   (setq _final_theta_error (float __final_theta_error))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:command_id
   (&optional __command_id)
   (if __command_id (setq _command_id __command_id)) _command_id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:last_event
   (&optional __last_event)
   (if __last_event (setq _last_event __last_event)) _last_event)
  (:final_x_error
   (&optional __final_x_error)
   (if __final_x_error (setq _final_x_error __final_x_error)) _final_x_error)
  (:final_y_error
   (&optional __final_y_error)
   (if __final_y_error (setq _final_y_error __final_y_error)) _final_y_error)
  (:final_theta_error
   (&optional __final_theta_error)
   (if __final_theta_error (setq _final_theta_error __final_theta_error)) _final_theta_error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _command_id
    4
    ;; int32 _state
    4
    ;; int32 _last_event
    4
    ;; float64 _final_x_error
    8
    ;; float64 _final_y_error
    8
    ;; float64 _final_theta_error
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _command_id
       (write-long _command_id s)
     ;; int32 _state
       (write-long _state s)
     ;; int32 _last_event
       (write-long _last_event s)
     ;; float64 _final_x_error
       (sys::poke _final_x_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _final_y_error
       (sys::poke _final_y_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _final_theta_error
       (sys::poke _final_theta_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _command_id
     (setq _command_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _last_event
     (setq _last_event (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _final_x_error
     (setq _final_x_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _final_y_error
     (setq _final_y_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _final_theta_error
     (setq _final_theta_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get twinny_msgs::PositionCompensatorReport :md5sum-) "ce394262ae46a810715d34454a160030")
(setf (get twinny_msgs::PositionCompensatorReport :datatype-) "twinny_msgs/PositionCompensatorReport")
(setf (get twinny_msgs::PositionCompensatorReport :definition-)
      "Header header

int32 command_id

int32 READY = 1
int32 RUNNING = 2
int32 ERROR = -99
int32 state

int32 NO_EVENT = 0
int32 GET_START = 1
int32 GET_STOP = 2

int32 FIND_STATION = 11
int32 FINISHED = 21

int32 BUMPER_ACTIVATED = 31
int32 BUMPER_RELEASED = 32

int32 RECOVERY_WORKING = 41

int32 FAIL_DUETO_NO_STATION = -1
int32 FAIL_DUETO_OVER_RECOVERY = -2
int32 FAIL_DUETO_LENGTH_ERROR = -3
int32 FAIL_DUETO_ANGLE_ERROR = -4

int32 ERROR_OCCUR = -99

int32 last_event

float64 final_x_error
float64 final_y_error
float64 final_theta_error
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



(provide :twinny_msgs/PositionCompensatorReport "ce394262ae46a810715d34454a160030")


