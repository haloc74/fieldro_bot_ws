;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::BumperReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'BumperReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::BUMPERREPORT")
  (make-package "TWINNY_MSGS::BUMPERREPORT"))

(in-package "ROS")
;;//! \htmlinclude BumperReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::BumperReport
  :super ros::object
  :slots (_header _bumper_flag _left_bumper _mid_bumper _right_bumper _back_bumper _sub1_bumper _sub2_bumper _sub3_bumper _sub4_bumper ))

(defmethod twinny_msgs::BumperReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bumper_flag __bumper_flag) nil)
    ((:left_bumper __left_bumper) nil)
    ((:mid_bumper __mid_bumper) nil)
    ((:right_bumper __right_bumper) nil)
    ((:back_bumper __back_bumper) nil)
    ((:sub1_bumper __sub1_bumper) nil)
    ((:sub2_bumper __sub2_bumper) nil)
    ((:sub3_bumper __sub3_bumper) nil)
    ((:sub4_bumper __sub4_bumper) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _bumper_flag __bumper_flag)
   (setq _left_bumper __left_bumper)
   (setq _mid_bumper __mid_bumper)
   (setq _right_bumper __right_bumper)
   (setq _back_bumper __back_bumper)
   (setq _sub1_bumper __sub1_bumper)
   (setq _sub2_bumper __sub2_bumper)
   (setq _sub3_bumper __sub3_bumper)
   (setq _sub4_bumper __sub4_bumper)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bumper_flag
   (&optional __bumper_flag)
   (if __bumper_flag (setq _bumper_flag __bumper_flag)) _bumper_flag)
  (:left_bumper
   (&optional __left_bumper)
   (if __left_bumper (setq _left_bumper __left_bumper)) _left_bumper)
  (:mid_bumper
   (&optional __mid_bumper)
   (if __mid_bumper (setq _mid_bumper __mid_bumper)) _mid_bumper)
  (:right_bumper
   (&optional __right_bumper)
   (if __right_bumper (setq _right_bumper __right_bumper)) _right_bumper)
  (:back_bumper
   (&optional __back_bumper)
   (if __back_bumper (setq _back_bumper __back_bumper)) _back_bumper)
  (:sub1_bumper
   (&optional __sub1_bumper)
   (if __sub1_bumper (setq _sub1_bumper __sub1_bumper)) _sub1_bumper)
  (:sub2_bumper
   (&optional __sub2_bumper)
   (if __sub2_bumper (setq _sub2_bumper __sub2_bumper)) _sub2_bumper)
  (:sub3_bumper
   (&optional __sub3_bumper)
   (if __sub3_bumper (setq _sub3_bumper __sub3_bumper)) _sub3_bumper)
  (:sub4_bumper
   (&optional __sub4_bumper)
   (if __sub4_bumper (setq _sub4_bumper __sub4_bumper)) _sub4_bumper)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _bumper_flag
    1
    ;; bool _left_bumper
    1
    ;; bool _mid_bumper
    1
    ;; bool _right_bumper
    1
    ;; bool _back_bumper
    1
    ;; bool _sub1_bumper
    1
    ;; bool _sub2_bumper
    1
    ;; bool _sub3_bumper
    1
    ;; bool _sub4_bumper
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _bumper_flag
       (if _bumper_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_bumper
       (if _left_bumper (write-byte -1 s) (write-byte 0 s))
     ;; bool _mid_bumper
       (if _mid_bumper (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_bumper
       (if _right_bumper (write-byte -1 s) (write-byte 0 s))
     ;; bool _back_bumper
       (if _back_bumper (write-byte -1 s) (write-byte 0 s))
     ;; bool _sub1_bumper
       (if _sub1_bumper (write-byte -1 s) (write-byte 0 s))
     ;; bool _sub2_bumper
       (if _sub2_bumper (write-byte -1 s) (write-byte 0 s))
     ;; bool _sub3_bumper
       (if _sub3_bumper (write-byte -1 s) (write-byte 0 s))
     ;; bool _sub4_bumper
       (if _sub4_bumper (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _bumper_flag
     (setq _bumper_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_bumper
     (setq _left_bumper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mid_bumper
     (setq _mid_bumper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_bumper
     (setq _right_bumper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _back_bumper
     (setq _back_bumper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sub1_bumper
     (setq _sub1_bumper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sub2_bumper
     (setq _sub2_bumper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sub3_bumper
     (setq _sub3_bumper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sub4_bumper
     (setq _sub4_bumper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::BumperReport :md5sum-) "2405e56ac30b979aef601f898841758f")
(setf (get twinny_msgs::BumperReport :datatype-) "twinny_msgs/BumperReport")
(setf (get twinny_msgs::BumperReport :definition-)
      "Header header

bool bumper_flag
bool left_bumper
bool mid_bumper
bool right_bumper
bool back_bumper

bool sub1_bumper
bool sub2_bumper
bool sub3_bumper
bool sub4_bumper

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



(provide :twinny_msgs/BumperReport "2405e56ac30b979aef601f898841758f")


