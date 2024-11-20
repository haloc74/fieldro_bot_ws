;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PathCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PathCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::PATHCOMMAND")
  (make-package "TWINNY_MSGS::PATHCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PathCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MAX_LENGTH*" (find-package "TWINNY_MSGS::PATHCOMMAND"))
(shadow '*MAX_LENGTH* (find-package "TWINNY_MSGS::PATHCOMMAND"))
(defconstant twinny_msgs::PathCommand::*MAX_LENGTH* 200)
(intern "*DRIVING_MODE*" (find-package "TWINNY_MSGS::PATHCOMMAND"))
(shadow '*DRIVING_MODE* (find-package "TWINNY_MSGS::PATHCOMMAND"))
(defconstant twinny_msgs::PathCommand::*DRIVING_MODE* 1)
(intern "*ROTATING_MODE*" (find-package "TWINNY_MSGS::PATHCOMMAND"))
(shadow '*ROTATING_MODE* (find-package "TWINNY_MSGS::PATHCOMMAND"))
(defconstant twinny_msgs::PathCommand::*ROTATING_MODE* 2)
(intern "*ROTATING_MODE_IN*" (find-package "TWINNY_MSGS::PATHCOMMAND"))
(shadow '*ROTATING_MODE_IN* (find-package "TWINNY_MSGS::PATHCOMMAND"))
(defconstant twinny_msgs::PathCommand::*ROTATING_MODE_IN* 3)
(intern "*ROTATING_MODE_OUT_CW*" (find-package "TWINNY_MSGS::PATHCOMMAND"))
(shadow '*ROTATING_MODE_OUT_CW* (find-package "TWINNY_MSGS::PATHCOMMAND"))
(defconstant twinny_msgs::PathCommand::*ROTATING_MODE_OUT_CW* 4)
(intern "*ROTATING_MODE_OUT_CCW*" (find-package "TWINNY_MSGS::PATHCOMMAND"))
(shadow '*ROTATING_MODE_OUT_CCW* (find-package "TWINNY_MSGS::PATHCOMMAND"))
(defconstant twinny_msgs::PathCommand::*ROTATING_MODE_OUT_CCW* 5)
(defclass twinny_msgs::PathCommand
  :super ros::object
  :slots (_header _valid_length _path _front_vel _current_vel _current_pose _mode ))

(defmethod twinny_msgs::PathCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:valid_length __valid_length) 0)
    ((:path __path) (let (r) (dotimes (i 200) (push (instance geometry_msgs::Pose2D :init) r)) r))
    ((:front_vel __front_vel) (instance geometry_msgs::Twist :init))
    ((:current_vel __current_vel) (instance geometry_msgs::Twist :init))
    ((:current_pose __current_pose) (instance geometry_msgs::Pose2D :init))
    ((:mode __mode) (make-array 200 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _valid_length (round __valid_length))
   (setq _path __path)
   (setq _front_vel __front_vel)
   (setq _current_vel __current_vel)
   (setq _current_pose __current_pose)
   (setq _mode __mode)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:valid_length
   (&optional __valid_length)
   (if __valid_length (setq _valid_length __valid_length)) _valid_length)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:front_vel
   (&rest __front_vel)
   (if (keywordp (car __front_vel))
       (send* _front_vel __front_vel)
     (progn
       (if __front_vel (setq _front_vel (car __front_vel)))
       _front_vel)))
  (:current_vel
   (&rest __current_vel)
   (if (keywordp (car __current_vel))
       (send* _current_vel __current_vel)
     (progn
       (if __current_vel (setq _current_vel (car __current_vel)))
       _current_vel)))
  (:current_pose
   (&rest __current_pose)
   (if (keywordp (car __current_pose))
       (send* _current_pose __current_pose)
     (progn
       (if __current_pose (setq _current_pose (car __current_pose)))
       _current_pose)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _valid_length
    1
    ;; geometry_msgs/Pose2D[200] _path
    (apply #'+ (send-all _path :serialization-length))
    ;; geometry_msgs/Twist _front_vel
    (send _front_vel :serialization-length)
    ;; geometry_msgs/Twist _current_vel
    (send _current_vel :serialization-length)
    ;; geometry_msgs/Pose2D _current_pose
    (send _current_pose :serialization-length)
    ;; uint8[200] _mode
    (* 1    200)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _valid_length
       (write-byte _valid_length s)
     ;; geometry_msgs/Pose2D[200] _path
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Twist _front_vel
       (send _front_vel :serialize s)
     ;; geometry_msgs/Twist _current_vel
       (send _current_vel :serialize s)
     ;; geometry_msgs/Pose2D _current_pose
       (send _current_pose :serialize s)
     ;; uint8[200] _mode
     (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _valid_length
     (setq _valid_length (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Pose2D[200] _path
   (dotimes (i 200)
     (send (elt _path i) :deserialize buf ptr-) (incf ptr- (send (elt _path i) :serialization-length))
     )
   ;; geometry_msgs/Twist _front_vel
     (send _front_vel :deserialize buf ptr-) (incf ptr- (send _front_vel :serialization-length))
   ;; geometry_msgs/Twist _current_vel
     (send _current_vel :deserialize buf ptr-) (incf ptr- (send _current_vel :serialization-length))
   ;; geometry_msgs/Pose2D _current_pose
     (send _current_pose :deserialize buf ptr-) (incf ptr- (send _current_pose :serialization-length))
   ;; uint8[200] _mode
   (setq _mode (make-array 200 :element-type :char))
   (replace _mode buf :start2 ptr-) (incf ptr- 200)
   ;;
   self)
  )

(setf (get twinny_msgs::PathCommand :md5sum-) "07a34c8ab221feb76ed11d3cef84b7c5")
(setf (get twinny_msgs::PathCommand :datatype-) "twinny_msgs/PathCommand")
(setf (get twinny_msgs::PathCommand :definition-)
      "Header header

uint8 MAX_LENGTH=200
uint8 valid_length

geometry_msgs/Pose2D[200] path
geometry_msgs/Twist front_vel
geometry_msgs/Twist current_vel
geometry_msgs/Pose2D current_pose

uint8[200] mode
uint8 DRIVING_MODE=1
uint8 ROTATING_MODE=2
uint8 ROTATING_MODE_IN=3
uint8 ROTATING_MODE_OUT_CW=4
uint8 ROTATING_MODE_OUT_CCW=5
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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :twinny_msgs/PathCommand "07a34c8ab221feb76ed11d3cef84b7c5")


