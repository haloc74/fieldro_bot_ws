;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PGVReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PGVReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::PGVREPORT")
  (make-package "TWINNY_MSGS::PGVREPORT"))

(in-package "ROS")
;;//! \htmlinclude PGVReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::PGVReport
  :super ros::object
  :slots (_header _TagDetected _TagID _LineDetected _LineID _ControlDetected _ControlID _Fault _Warning _X _Y _theta _test_cmd ))

(defmethod twinny_msgs::PGVReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:TagDetected __TagDetected) nil)
    ((:TagID __TagID) 0)
    ((:LineDetected __LineDetected) 0)
    ((:LineID __LineID) 0)
    ((:ControlDetected __ControlDetected) nil)
    ((:ControlID __ControlID) 0)
    ((:Fault __Fault) 0)
    ((:Warning __Warning) 0)
    ((:X __X) 0.0)
    ((:Y __Y) 0.0)
    ((:theta __theta) 0.0)
    ((:test_cmd __test_cmd) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _TagDetected __TagDetected)
   (setq _TagID (round __TagID))
   (setq _LineDetected (round __LineDetected))
   (setq _LineID (round __LineID))
   (setq _ControlDetected __ControlDetected)
   (setq _ControlID (round __ControlID))
   (setq _Fault (round __Fault))
   (setq _Warning (round __Warning))
   (setq _X (float __X))
   (setq _Y (float __Y))
   (setq _theta (float __theta))
   (setq _test_cmd (round __test_cmd))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:TagDetected
   (&optional __TagDetected)
   (if __TagDetected (setq _TagDetected __TagDetected)) _TagDetected)
  (:TagID
   (&optional __TagID)
   (if __TagID (setq _TagID __TagID)) _TagID)
  (:LineDetected
   (&optional __LineDetected)
   (if __LineDetected (setq _LineDetected __LineDetected)) _LineDetected)
  (:LineID
   (&optional __LineID)
   (if __LineID (setq _LineID __LineID)) _LineID)
  (:ControlDetected
   (&optional __ControlDetected)
   (if __ControlDetected (setq _ControlDetected __ControlDetected)) _ControlDetected)
  (:ControlID
   (&optional __ControlID)
   (if __ControlID (setq _ControlID __ControlID)) _ControlID)
  (:Fault
   (&optional __Fault)
   (if __Fault (setq _Fault __Fault)) _Fault)
  (:Warning
   (&optional __Warning)
   (if __Warning (setq _Warning __Warning)) _Warning)
  (:X
   (&optional __X)
   (if __X (setq _X __X)) _X)
  (:Y
   (&optional __Y)
   (if __Y (setq _Y __Y)) _Y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:test_cmd
   (&optional __test_cmd)
   (if __test_cmd (setq _test_cmd __test_cmd)) _test_cmd)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _TagDetected
    1
    ;; uint32 _TagID
    4
    ;; uint8 _LineDetected
    1
    ;; uint32 _LineID
    4
    ;; bool _ControlDetected
    1
    ;; uint32 _ControlID
    4
    ;; int8 _Fault
    1
    ;; int8 _Warning
    1
    ;; float32 _X
    4
    ;; float32 _Y
    4
    ;; float32 _theta
    4
    ;; int8 _test_cmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _TagDetected
       (if _TagDetected (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _TagID
       (write-long _TagID s)
     ;; uint8 _LineDetected
       (write-byte _LineDetected s)
     ;; uint32 _LineID
       (write-long _LineID s)
     ;; bool _ControlDetected
       (if _ControlDetected (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _ControlID
       (write-long _ControlID s)
     ;; int8 _Fault
       (write-byte _Fault s)
     ;; int8 _Warning
       (write-byte _Warning s)
     ;; float32 _X
       (sys::poke _X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Y
       (sys::poke _Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _test_cmd
       (write-byte _test_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _TagDetected
     (setq _TagDetected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _TagID
     (setq _TagID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _LineDetected
     (setq _LineDetected (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _LineID
     (setq _LineID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _ControlDetected
     (setq _ControlDetected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _ControlID
     (setq _ControlID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _Fault
     (setq _Fault (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Fault 127) (setq _Fault (- _Fault 256)))
   ;; int8 _Warning
     (setq _Warning (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Warning 127) (setq _Warning (- _Warning 256)))
   ;; float32 _X
     (setq _X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Y
     (setq _Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _test_cmd
     (setq _test_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _test_cmd 127) (setq _test_cmd (- _test_cmd 256)))
   ;;
   self)
  )

(setf (get twinny_msgs::PGVReport :md5sum-) "34222d408912e06515bf5962c05f1613")
(setf (get twinny_msgs::PGVReport :datatype-) "twinny_msgs/PGVReport")
(setf (get twinny_msgs::PGVReport :definition-)
      "Header header

bool TagDetected
uint32 TagID

uint8 LineDetected
uint32 LineID

bool ControlDetected
uint32 ControlID

int8 Fault
int8 Warning

float32 X
float32 Y
float32 theta

int8 test_cmd
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



(provide :twinny_msgs/PGVReport "34222d408912e06515bf5962c05f1613")


