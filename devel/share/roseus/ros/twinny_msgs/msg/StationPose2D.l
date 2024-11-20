;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::StationPose2D)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'StationPose2D (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::STATIONPOSE2D")
  (make-package "TWINNY_MSGS::STATIONPOSE2D"))

(in-package "ROS")
;;//! \htmlinclude StationPose2D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SUCCESS*" (find-package "TWINNY_MSGS::STATIONPOSE2D"))
(shadow '*SUCCESS* (find-package "TWINNY_MSGS::STATIONPOSE2D"))
(defconstant twinny_msgs::StationPose2D::*SUCCESS* 1)
(intern "*FAILED_TO_DETECT*" (find-package "TWINNY_MSGS::STATIONPOSE2D"))
(shadow '*FAILED_TO_DETECT* (find-package "TWINNY_MSGS::STATIONPOSE2D"))
(defconstant twinny_msgs::StationPose2D::*FAILED_TO_DETECT* 2)
(intern "*FAILED_TO_GET_CAMERA_DATA*" (find-package "TWINNY_MSGS::STATIONPOSE2D"))
(shadow '*FAILED_TO_GET_CAMERA_DATA* (find-package "TWINNY_MSGS::STATIONPOSE2D"))
(defconstant twinny_msgs::StationPose2D::*FAILED_TO_GET_CAMERA_DATA* 3)
(intern "*FAILED_TO_GET_LIDAR_DATA*" (find-package "TWINNY_MSGS::STATIONPOSE2D"))
(shadow '*FAILED_TO_GET_LIDAR_DATA* (find-package "TWINNY_MSGS::STATIONPOSE2D"))
(defconstant twinny_msgs::StationPose2D::*FAILED_TO_GET_LIDAR_DATA* 4)
(intern "*FAILED_TO_GET_ODOM_DATA*" (find-package "TWINNY_MSGS::STATIONPOSE2D"))
(shadow '*FAILED_TO_GET_ODOM_DATA* (find-package "TWINNY_MSGS::STATIONPOSE2D"))
(defconstant twinny_msgs::StationPose2D::*FAILED_TO_GET_ODOM_DATA* 5)
(defclass twinny_msgs::StationPose2D
  :super ros::object
  :slots (_header _state _pose ))

(defmethod twinny_msgs::StationPose2D
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _state
    1
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _state
       (write-byte _state s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get twinny_msgs::StationPose2D :md5sum-) "78b3f9b8eb94ddaf4ad2ab30d91b5a43")
(setf (get twinny_msgs::StationPose2D :datatype-) "twinny_msgs/StationPose2D")
(setf (get twinny_msgs::StationPose2D :definition-)
      "std_msgs/Header header

uint8 state
uint8 SUCCESS=1
uint8 FAILED_TO_DETECT=2
uint8 FAILED_TO_GET_CAMERA_DATA=3
uint8 FAILED_TO_GET_LIDAR_DATA=4
uint8 FAILED_TO_GET_ODOM_DATA=5

geometry_msgs/Pose2D pose
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



(provide :twinny_msgs/StationPose2D "78b3f9b8eb94ddaf4ad2ab30d91b5a43")


