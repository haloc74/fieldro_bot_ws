;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::JoystickReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'JoystickReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::JOYSTICKREPORT")
  (make-package "TWINNY_MSGS::JOYSTICKREPORT"))

(in-package "ROS")
;;//! \htmlinclude JoystickReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::JoystickReport
  :super ros::object
  :slots (_header _ON_flag _up_flag _up_right_flag _right_flag _down_right_flag _down_flag _down_left_flag _left_flag _up_left_flag ))

(defmethod twinny_msgs::JoystickReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ON_flag __ON_flag) nil)
    ((:up_flag __up_flag) nil)
    ((:up_right_flag __up_right_flag) nil)
    ((:right_flag __right_flag) nil)
    ((:down_right_flag __down_right_flag) nil)
    ((:down_flag __down_flag) nil)
    ((:down_left_flag __down_left_flag) nil)
    ((:left_flag __left_flag) nil)
    ((:up_left_flag __up_left_flag) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ON_flag __ON_flag)
   (setq _up_flag __up_flag)
   (setq _up_right_flag __up_right_flag)
   (setq _right_flag __right_flag)
   (setq _down_right_flag __down_right_flag)
   (setq _down_flag __down_flag)
   (setq _down_left_flag __down_left_flag)
   (setq _left_flag __left_flag)
   (setq _up_left_flag __up_left_flag)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ON_flag
   (&optional __ON_flag)
   (if __ON_flag (setq _ON_flag __ON_flag)) _ON_flag)
  (:up_flag
   (&optional __up_flag)
   (if __up_flag (setq _up_flag __up_flag)) _up_flag)
  (:up_right_flag
   (&optional __up_right_flag)
   (if __up_right_flag (setq _up_right_flag __up_right_flag)) _up_right_flag)
  (:right_flag
   (&optional __right_flag)
   (if __right_flag (setq _right_flag __right_flag)) _right_flag)
  (:down_right_flag
   (&optional __down_right_flag)
   (if __down_right_flag (setq _down_right_flag __down_right_flag)) _down_right_flag)
  (:down_flag
   (&optional __down_flag)
   (if __down_flag (setq _down_flag __down_flag)) _down_flag)
  (:down_left_flag
   (&optional __down_left_flag)
   (if __down_left_flag (setq _down_left_flag __down_left_flag)) _down_left_flag)
  (:left_flag
   (&optional __left_flag)
   (if __left_flag (setq _left_flag __left_flag)) _left_flag)
  (:up_left_flag
   (&optional __up_left_flag)
   (if __up_left_flag (setq _up_left_flag __up_left_flag)) _up_left_flag)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _ON_flag
    1
    ;; bool _up_flag
    1
    ;; bool _up_right_flag
    1
    ;; bool _right_flag
    1
    ;; bool _down_right_flag
    1
    ;; bool _down_flag
    1
    ;; bool _down_left_flag
    1
    ;; bool _left_flag
    1
    ;; bool _up_left_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _ON_flag
       (if _ON_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _up_flag
       (if _up_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _up_right_flag
       (if _up_right_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_flag
       (if _right_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _down_right_flag
       (if _down_right_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _down_flag
       (if _down_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _down_left_flag
       (if _down_left_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_flag
       (if _left_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _up_left_flag
       (if _up_left_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _ON_flag
     (setq _ON_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _up_flag
     (setq _up_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _up_right_flag
     (setq _up_right_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_flag
     (setq _right_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _down_right_flag
     (setq _down_right_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _down_flag
     (setq _down_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _down_left_flag
     (setq _down_left_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_flag
     (setq _left_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _up_left_flag
     (setq _up_left_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::JoystickReport :md5sum-) "7f4a780f53de1b487d4c703611a6ecdd")
(setf (get twinny_msgs::JoystickReport :datatype-) "twinny_msgs/JoystickReport")
(setf (get twinny_msgs::JoystickReport :definition-)
      "Header header

bool ON_flag

bool up_flag
bool up_right_flag
bool right_flag
bool down_right_flag
bool down_flag
bool down_left_flag
bool left_flag
bool up_left_flag



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



(provide :twinny_msgs/JoystickReport "7f4a780f53de1b487d4c703611a6ecdd")


