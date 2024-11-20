;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::SellingStartCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'SellingStartCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::SELLINGSTARTCOMMAND")
  (make-package "TWINNY_MSGS::SELLINGSTARTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude SellingStartCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::SellingStartCommand
  :super ros::object
  :slots (_header _selling_flag ))

(defmethod twinny_msgs::SellingStartCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:selling_flag __selling_flag) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _selling_flag __selling_flag)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:selling_flag
   (&optional __selling_flag)
   (if __selling_flag (setq _selling_flag __selling_flag)) _selling_flag)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _selling_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _selling_flag
       (if _selling_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _selling_flag
     (setq _selling_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::SellingStartCommand :md5sum-) "4f032b0a824008a30ea74bfa6397be14")
(setf (get twinny_msgs::SellingStartCommand :datatype-) "twinny_msgs/SellingStartCommand")
(setf (get twinny_msgs::SellingStartCommand :definition-)
      "Header header
bool selling_flag

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



(provide :twinny_msgs/SellingStartCommand "4f032b0a824008a30ea74bfa6397be14")


