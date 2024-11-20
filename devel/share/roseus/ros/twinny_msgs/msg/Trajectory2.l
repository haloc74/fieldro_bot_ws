;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::Trajectory2)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'Trajectory2 (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::TRAJECTORY2")
  (make-package "TWINNY_MSGS::TRAJECTORY2"))

(in-package "ROS")
;;//! \htmlinclude Trajectory2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MAX_LENGTH*" (find-package "TWINNY_MSGS::TRAJECTORY2"))
(shadow '*MAX_LENGTH* (find-package "TWINNY_MSGS::TRAJECTORY2"))
(defconstant twinny_msgs::Trajectory2::*MAX_LENGTH* 200)
(intern "*NORMAL*" (find-package "TWINNY_MSGS::TRAJECTORY2"))
(shadow '*NORMAL* (find-package "TWINNY_MSGS::TRAJECTORY2"))
(defconstant twinny_msgs::Trajectory2::*NORMAL* 0)
(intern "*VEL_ONLY*" (find-package "TWINNY_MSGS::TRAJECTORY2"))
(shadow '*VEL_ONLY* (find-package "TWINNY_MSGS::TRAJECTORY2"))
(defconstant twinny_msgs::Trajectory2::*VEL_ONLY* 1)
(intern "*E_STOP*" (find-package "TWINNY_MSGS::TRAJECTORY2"))
(shadow '*E_STOP* (find-package "TWINNY_MSGS::TRAJECTORY2"))
(defconstant twinny_msgs::Trajectory2::*E_STOP* 2)
(intern "*STOP_AND_ROTATION*" (find-package "TWINNY_MSGS::TRAJECTORY2"))
(shadow '*STOP_AND_ROTATION* (find-package "TWINNY_MSGS::TRAJECTORY2"))
(defconstant twinny_msgs::Trajectory2::*STOP_AND_ROTATION* 3)
(intern "*FOCUSING*" (find-package "TWINNY_MSGS::TRAJECTORY2"))
(shadow '*FOCUSING* (find-package "TWINNY_MSGS::TRAJECTORY2"))
(defconstant twinny_msgs::Trajectory2::*FOCUSING* 4)
(defclass twinny_msgs::Trajectory2
  :super ros::object
  :slots (_header _command_mode _command_value _path_legnth _sampling_period _state _object ))

(defmethod twinny_msgs::Trajectory2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:command_mode __command_mode) 0)
    ((:command_value __command_value) 0)
    ((:path_legnth __path_legnth) 0)
    ((:sampling_period __sampling_period) 0.0)
    ((:state __state) (let (r) (dotimes (i 201) (push (instance twinny_msgs::DWMRState :init) r)) r))
    ((:object __object) (instance twinny_msgs::Position :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _command_mode (round __command_mode))
   (setq _command_value (round __command_value))
   (setq _path_legnth (round __path_legnth))
   (setq _sampling_period (float __sampling_period))
   (setq _state __state)
   (setq _object __object)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:command_mode
   (&optional __command_mode)
   (if __command_mode (setq _command_mode __command_mode)) _command_mode)
  (:command_value
   (&optional __command_value)
   (if __command_value (setq _command_value __command_value)) _command_value)
  (:path_legnth
   (&optional __path_legnth)
   (if __path_legnth (setq _path_legnth __path_legnth)) _path_legnth)
  (:sampling_period
   (&optional __sampling_period)
   (if __sampling_period (setq _sampling_period __sampling_period)) _sampling_period)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:object
   (&rest __object)
   (if (keywordp (car __object))
       (send* _object __object)
     (progn
       (if __object (setq _object (car __object)))
       _object)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _command_mode
    1
    ;; uint8 _command_value
    1
    ;; uint8 _path_legnth
    1
    ;; float64 _sampling_period
    8
    ;; twinny_msgs/DWMRState[201] _state
    (apply #'+ (send-all _state :serialization-length))
    ;; twinny_msgs/Position _object
    (send _object :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _command_mode
       (write-byte _command_mode s)
     ;; uint8 _command_value
       (write-byte _command_value s)
     ;; uint8 _path_legnth
       (write-byte _path_legnth s)
     ;; float64 _sampling_period
       (sys::poke _sampling_period (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; twinny_msgs/DWMRState[201] _state
     (dolist (elem _state)
       (send elem :serialize s)
       )
     ;; twinny_msgs/Position _object
       (send _object :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _command_mode
     (setq _command_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _command_value
     (setq _command_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _path_legnth
     (setq _path_legnth (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _sampling_period
     (setq _sampling_period (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; twinny_msgs/DWMRState[201] _state
   (dotimes (i 201)
     (send (elt _state i) :deserialize buf ptr-) (incf ptr- (send (elt _state i) :serialization-length))
     )
   ;; twinny_msgs/Position _object
     (send _object :deserialize buf ptr-) (incf ptr- (send _object :serialization-length))
   ;;
   self)
  )

(setf (get twinny_msgs::Trajectory2 :md5sum-) "18cd86ccdebc7c18b59adf258bbbe2f5")
(setf (get twinny_msgs::Trajectory2 :datatype-) "twinny_msgs/Trajectory2")
(setf (get twinny_msgs::Trajectory2 :definition-)
      "Header header
uint8 MAX_LENGTH=200

uint8 NORMAL=0
uint8 VEL_ONLY=1
uint8 E_STOP=2
uint8 STOP_AND_ROTATION=3

uint8 FOCUSING=4

uint8 command_mode
uint8 command_value
uint8 path_legnth

float64 sampling_period

twinny_msgs/DWMRState[201] state

twinny_msgs/Position object

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
MSG: twinny_msgs/DWMRState
twinny_msgs/LinearAngular velocity
twinny_msgs/Pose3D pose
================================================================================
MSG: twinny_msgs/LinearAngular
float64 linear
float64 angular

================================================================================
MSG: twinny_msgs/Pose3D
Header header
float64 x
float64 y
float64 theta

================================================================================
MSG: twinny_msgs/Position
float64 x
float64 y
")



(provide :twinny_msgs/Trajectory2 "18cd86ccdebc7c18b59adf258bbbe2f5")


