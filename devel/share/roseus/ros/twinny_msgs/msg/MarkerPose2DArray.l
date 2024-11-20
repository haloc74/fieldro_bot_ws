;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::MarkerPose2DArray)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'MarkerPose2DArray (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MARKERPOSE2DARRAY")
  (make-package "TWINNY_MSGS::MARKERPOSE2DARRAY"))

(in-package "ROS")
;;//! \htmlinclude MarkerPose2DArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::MarkerPose2DArray
  :super ros::object
  :slots (_header _markerPose2D ))

(defmethod twinny_msgs::MarkerPose2DArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:markerPose2D __markerPose2D) (let (r) (dotimes (i 0) (push (instance twinny_msgs::MarkerPose2D :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _markerPose2D __markerPose2D)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:markerPose2D
   (&rest __markerPose2D)
   (if (keywordp (car __markerPose2D))
       (send* _markerPose2D __markerPose2D)
     (progn
       (if __markerPose2D (setq _markerPose2D (car __markerPose2D)))
       _markerPose2D)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; twinny_msgs/MarkerPose2D[] _markerPose2D
    (apply #'+ (send-all _markerPose2D :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; twinny_msgs/MarkerPose2D[] _markerPose2D
     (write-long (length _markerPose2D) s)
     (dolist (elem _markerPose2D)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; twinny_msgs/MarkerPose2D[] _markerPose2D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markerPose2D (let (r) (dotimes (i n) (push (instance twinny_msgs::MarkerPose2D :init) r)) r))
     (dolist (elem- _markerPose2D)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get twinny_msgs::MarkerPose2DArray :md5sum-) "ef13624f97fd199db36b03b16978e671")
(setf (get twinny_msgs::MarkerPose2DArray :datatype-) "twinny_msgs/MarkerPose2DArray")
(setf (get twinny_msgs::MarkerPose2DArray :definition-)
      "Header header

twinny_msgs/MarkerPose2D[] markerPose2D


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
MSG: twinny_msgs/MarkerPose2D
Header header

uint8 state
uint8 SUCCESS=1
uint8 FAILED_TO_DETECT=2
uint8 FAILED_TO_GET_CAMERA_DATA=3

uint8 markerId

geometry_msgs/Pose2D pose

float32 distance


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



(provide :twinny_msgs/MarkerPose2DArray "ef13624f97fd199db36b03b16978e671")


