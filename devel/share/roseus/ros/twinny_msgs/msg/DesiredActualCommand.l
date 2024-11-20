;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::DesiredActualCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'DesiredActualCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::DESIREDACTUALCOMMAND")
  (make-package "TWINNY_MSGS::DESIREDACTUALCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude DesiredActualCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::DesiredActualCommand
  :super ros::object
  :slots (_header _desiredPose _desiredVel _actualPose _actualVel _commandVel ))

(defmethod twinny_msgs::DesiredActualCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:desiredPose __desiredPose) (instance geometry_msgs::Vector3 :init))
    ((:desiredVel __desiredVel) (instance geometry_msgs::Vector3 :init))
    ((:actualPose __actualPose) (instance geometry_msgs::Vector3 :init))
    ((:actualVel __actualVel) (instance geometry_msgs::Vector3 :init))
    ((:commandVel __commandVel) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _desiredPose __desiredPose)
   (setq _desiredVel __desiredVel)
   (setq _actualPose __actualPose)
   (setq _actualVel __actualVel)
   (setq _commandVel __commandVel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:desiredPose
   (&rest __desiredPose)
   (if (keywordp (car __desiredPose))
       (send* _desiredPose __desiredPose)
     (progn
       (if __desiredPose (setq _desiredPose (car __desiredPose)))
       _desiredPose)))
  (:desiredVel
   (&rest __desiredVel)
   (if (keywordp (car __desiredVel))
       (send* _desiredVel __desiredVel)
     (progn
       (if __desiredVel (setq _desiredVel (car __desiredVel)))
       _desiredVel)))
  (:actualPose
   (&rest __actualPose)
   (if (keywordp (car __actualPose))
       (send* _actualPose __actualPose)
     (progn
       (if __actualPose (setq _actualPose (car __actualPose)))
       _actualPose)))
  (:actualVel
   (&rest __actualVel)
   (if (keywordp (car __actualVel))
       (send* _actualVel __actualVel)
     (progn
       (if __actualVel (setq _actualVel (car __actualVel)))
       _actualVel)))
  (:commandVel
   (&rest __commandVel)
   (if (keywordp (car __commandVel))
       (send* _commandVel __commandVel)
     (progn
       (if __commandVel (setq _commandVel (car __commandVel)))
       _commandVel)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _desiredPose
    (send _desiredPose :serialization-length)
    ;; geometry_msgs/Vector3 _desiredVel
    (send _desiredVel :serialization-length)
    ;; geometry_msgs/Vector3 _actualPose
    (send _actualPose :serialization-length)
    ;; geometry_msgs/Vector3 _actualVel
    (send _actualVel :serialization-length)
    ;; geometry_msgs/Vector3 _commandVel
    (send _commandVel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _desiredPose
       (send _desiredPose :serialize s)
     ;; geometry_msgs/Vector3 _desiredVel
       (send _desiredVel :serialize s)
     ;; geometry_msgs/Vector3 _actualPose
       (send _actualPose :serialize s)
     ;; geometry_msgs/Vector3 _actualVel
       (send _actualVel :serialize s)
     ;; geometry_msgs/Vector3 _commandVel
       (send _commandVel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _desiredPose
     (send _desiredPose :deserialize buf ptr-) (incf ptr- (send _desiredPose :serialization-length))
   ;; geometry_msgs/Vector3 _desiredVel
     (send _desiredVel :deserialize buf ptr-) (incf ptr- (send _desiredVel :serialization-length))
   ;; geometry_msgs/Vector3 _actualPose
     (send _actualPose :deserialize buf ptr-) (incf ptr- (send _actualPose :serialization-length))
   ;; geometry_msgs/Vector3 _actualVel
     (send _actualVel :deserialize buf ptr-) (incf ptr- (send _actualVel :serialization-length))
   ;; geometry_msgs/Vector3 _commandVel
     (send _commandVel :deserialize buf ptr-) (incf ptr- (send _commandVel :serialization-length))
   ;;
   self)
  )

(setf (get twinny_msgs::DesiredActualCommand :md5sum-) "eed852e2eabe4ebf8afd3f4ced2b8875")
(setf (get twinny_msgs::DesiredActualCommand :datatype-) "twinny_msgs/DesiredActualCommand")
(setf (get twinny_msgs::DesiredActualCommand :definition-)
      "Header header
geometry_msgs/Vector3 desiredPose
geometry_msgs/Vector3 desiredVel
geometry_msgs/Vector3 actualPose
geometry_msgs/Vector3 actualVel
geometry_msgs/Vector3 commandVel


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



(provide :twinny_msgs/DesiredActualCommand "eed852e2eabe4ebf8afd3f4ced2b8875")


