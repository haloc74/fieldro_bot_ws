;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PalletMoveReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PalletMoveReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::PALLETMOVEREPORT")
  (make-package "TWINNY_MSGS::PALLETMOVEREPORT"))

(in-package "ROS")
;;//! \htmlinclude PalletMoveReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::PalletMoveReport
  :super ros::object
  :slots (_header _type _lift_id _lift_state _fork_left_state _fork_right_state _is_loaded _error_code ))

(defmethod twinny_msgs::PalletMoveReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:lift_id __lift_id) 0)
    ((:lift_state __lift_state) 0)
    ((:fork_left_state __fork_left_state) nil)
    ((:fork_right_state __fork_right_state) nil)
    ((:is_loaded __is_loaded) nil)
    ((:error_code __error_code) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _lift_id (round __lift_id))
   (setq _lift_state (round __lift_state))
   (setq _fork_left_state __fork_left_state)
   (setq _fork_right_state __fork_right_state)
   (setq _is_loaded __is_loaded)
   (setq _error_code __error_code)
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
  (:lift_id
   (&optional __lift_id)
   (if __lift_id (setq _lift_id __lift_id)) _lift_id)
  (:lift_state
   (&optional __lift_state)
   (if __lift_state (setq _lift_state __lift_state)) _lift_state)
  (:fork_left_state
   (&optional __fork_left_state)
   (if __fork_left_state (setq _fork_left_state __fork_left_state)) _fork_left_state)
  (:fork_right_state
   (&optional __fork_right_state)
   (if __fork_right_state (setq _fork_right_state __fork_right_state)) _fork_right_state)
  (:is_loaded
   (&optional __is_loaded)
   (if __is_loaded (setq _is_loaded __is_loaded)) _is_loaded)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint32 _lift_id
    4
    ;; int32 _lift_state
    4
    ;; bool _fork_left_state
    1
    ;; bool _fork_right_state
    1
    ;; bool _is_loaded
    1
    ;; int32[] _error_code
    (* 4    (length _error_code)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint32 _lift_id
       (write-long _lift_id s)
     ;; int32 _lift_state
       (write-long _lift_state s)
     ;; bool _fork_left_state
       (if _fork_left_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _fork_right_state
       (if _fork_right_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_loaded
       (if _is_loaded (write-byte -1 s) (write-byte 0 s))
     ;; int32[] _error_code
     (write-long (length _error_code) s)
     (dotimes (i (length _error_code))
       (write-long (elt _error_code i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _lift_id
     (setq _lift_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lift_state
     (setq _lift_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _fork_left_state
     (setq _fork_left_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fork_right_state
     (setq _fork_right_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_loaded
     (setq _is_loaded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32[] _error_code
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _error_code (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _error_code i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get twinny_msgs::PalletMoveReport :md5sum-) "7a9fb6eb718a9c5a979b0cd80bea2835")
(setf (get twinny_msgs::PalletMoveReport :datatype-) "twinny_msgs/PalletMoveReport")
(setf (get twinny_msgs::PalletMoveReport :definition-)
      "Header header
string type

uint32 lift_id
int32 lift_state
bool fork_left_state
bool fork_right_state
bool is_loaded
int32[] error_code
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



(provide :twinny_msgs/PalletMoveReport "7a9fb6eb718a9c5a979b0cd80bea2835")


