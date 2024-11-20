;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PalletMoveCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PalletMoveCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::PALLETMOVECOMMAND")
  (make-package "TWINNY_MSGS::PALLETMOVECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PalletMoveCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::PalletMoveCommand
  :super ros::object
  :slots (_header _type _command ))

(defmethod twinny_msgs::PalletMoveCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _command (round __command))
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
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; int32 _command
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; int32 _command
       (write-long _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _command
     (setq _command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get twinny_msgs::PalletMoveCommand :md5sum-) "ad06ba098a6b02ace264aac304182208")
(setf (get twinny_msgs::PalletMoveCommand :datatype-) "twinny_msgs/PalletMoveCommand")
(setf (get twinny_msgs::PalletMoveCommand :definition-)
      "Header header
string type

int32 command

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



(provide :twinny_msgs/PalletMoveCommand "ad06ba098a6b02ace264aac304182208")


