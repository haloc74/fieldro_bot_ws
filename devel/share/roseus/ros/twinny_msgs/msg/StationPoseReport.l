;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::StationPoseReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'StationPoseReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::STATIONPOSEREPORT")
  (make-package "TWINNY_MSGS::STATIONPOSEREPORT"))

(in-package "ROS")
;;//! \htmlinclude StationPoseReport.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*UNKNOWN*" (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(shadow '*UNKNOWN* (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(defconstant twinny_msgs::StationPoseReport::*UNKNOWN* "unknown")
(intern "*PPS_O*" (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(shadow '*PPS_O* (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(defconstant twinny_msgs::StationPoseReport::*PPS_O* "pps_o")
(intern "*PPS_C*" (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(shadow '*PPS_C* (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(defconstant twinny_msgs::StationPoseReport::*PPS_C* "pps_c")
(intern "*VL*" (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(shadow '*VL* (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(defconstant twinny_msgs::StationPoseReport::*VL* "vl")
(intern "*START_MODE*" (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(shadow '*START_MODE* (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(defconstant twinny_msgs::StationPoseReport::*START_MODE* 0)
(intern "*STOP_MODE*" (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(shadow '*STOP_MODE* (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(defconstant twinny_msgs::StationPoseReport::*STOP_MODE* 1)
(intern "*PAUSE_MODE*" (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(shadow '*PAUSE_MODE* (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(defconstant twinny_msgs::StationPoseReport::*PAUSE_MODE* 2)
(intern "*READY_STATE*" (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(shadow '*READY_STATE* (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(defconstant twinny_msgs::StationPoseReport::*READY_STATE* 10)
(intern "*PROCESSING_STATE*" (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(shadow '*PROCESSING_STATE* (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(defconstant twinny_msgs::StationPoseReport::*PROCESSING_STATE* 11)
(intern "*FOUND_STATE*" (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(shadow '*FOUND_STATE* (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(defconstant twinny_msgs::StationPoseReport::*FOUND_STATE* 12)
(intern "*LOST_STATE*" (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(shadow '*LOST_STATE* (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(defconstant twinny_msgs::StationPoseReport::*LOST_STATE* 13)
(intern "*ERROR_STATE*" (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(shadow '*ERROR_STATE* (find-package "TWINNY_MSGS::STATIONPOSEREPORT"))
(defconstant twinny_msgs::StationPoseReport::*ERROR_STATE* 15)
(defclass twinny_msgs::StationPoseReport
  :super ros::object
  :slots (_header _type _mode _state _station_pose _reliability _extra_field ))

(defmethod twinny_msgs::StationPoseReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:mode __mode) 0)
    ((:state __state) 0)
    ((:station_pose __station_pose) (instance geometry_msgs::Pose2D :init))
    ((:reliability __reliability) (instance geometry_msgs::Pose2D :init))
    ((:extra_field __extra_field) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _mode (round __mode))
   (setq _state (round __state))
   (setq _station_pose __station_pose)
   (setq _reliability __reliability)
   (setq _extra_field (string __extra_field))
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
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:station_pose
   (&rest __station_pose)
   (if (keywordp (car __station_pose))
       (send* _station_pose __station_pose)
     (progn
       (if __station_pose (setq _station_pose (car __station_pose)))
       _station_pose)))
  (:reliability
   (&rest __reliability)
   (if (keywordp (car __reliability))
       (send* _reliability __reliability)
     (progn
       (if __reliability (setq _reliability (car __reliability)))
       _reliability)))
  (:extra_field
   (&optional __extra_field)
   (if __extra_field (setq _extra_field __extra_field)) _extra_field)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint8 _mode
    1
    ;; uint8 _state
    1
    ;; geometry_msgs/Pose2D _station_pose
    (send _station_pose :serialization-length)
    ;; geometry_msgs/Pose2D _reliability
    (send _reliability :serialization-length)
    ;; string _extra_field
    4 (length _extra_field)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _state
       (write-byte _state s)
     ;; geometry_msgs/Pose2D _station_pose
       (send _station_pose :serialize s)
     ;; geometry_msgs/Pose2D _reliability
       (send _reliability :serialize s)
     ;; string _extra_field
       (write-long (length _extra_field) s) (princ _extra_field s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Pose2D _station_pose
     (send _station_pose :deserialize buf ptr-) (incf ptr- (send _station_pose :serialization-length))
   ;; geometry_msgs/Pose2D _reliability
     (send _reliability :deserialize buf ptr-) (incf ptr- (send _reliability :serialization-length))
   ;; string _extra_field
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _extra_field (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get twinny_msgs::StationPoseReport :md5sum-) "314691c7f777c0fde4015cc5521a4d44")
(setf (get twinny_msgs::StationPoseReport :datatype-) "twinny_msgs/StationPoseReport")
(setf (get twinny_msgs::StationPoseReport :definition-)
      "std_msgs/Header header


string UNKNOWN = unknown
string PPS_O = pps_o
string PPS_C = pps_c
string VL = vl
string type

uint8 START_MODE = 0
uint8 STOP_MODE = 1
uint8 PAUSE_MODE = 2
# uint8 ERROR_MODE = 3
uint8 mode

#uint8 DISABLE_STATE = 0
#uint8 ENABLE_STATE = 1
#uint8 WARNING_STATE = 2
#uint8 PROCESSING_STATE = 3
 
uint8 READY_STATE = 10 #구동중이 아닐때, (STOP이거나 PAUSE mode일시에는 이걸로 고정)
uint8 PROCESSING_STATE = 11 #DISABLE_STATE, PROCESSING_STATE, 아직 스테이션을 못찾음
uint8 FOUND_STATE = 12 # 스테이션을 찾았음
uint8 LOST_STATE = 13 # 스테이션을 찾았었으나(FOUND_STATE), 도중에 실패함. 이때 station_pose는 가장 마지막에 찾은 스테이션 정보가 입력됨.
#uint8 FOUND_STABLE_STATE = 12 #ENABLE_STATE 스테이션을 잘 찾았음
#uint8 FOUND_UNSTABLE_STATE = 13 #WARNING_STATE 스테이션을 찾았는데 좀 불안한 경우
uint8 ERROR_STATE = 15 # 언제나 존재, 알고리즘 내부에서 문제갸 터진 경우. 초기화 필요/
uint8 state

geometry_msgs/Pose2D station_pose
geometry_msgs/Pose2D reliability # station_pose의 +- 오차 범위를 나타낸다. 알 수 없는 경우 -1.0

string extra_field

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
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :twinny_msgs/StationPoseReport "314691c7f777c0fde4015cc5521a4d44")


