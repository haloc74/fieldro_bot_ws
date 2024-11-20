;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::CargoBoxControl)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'CargoBoxControl (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::CARGOBOXCONTROL")
  (make-package "TWINNY_MSGS::CARGOBOXCONTROL"))

(in-package "ROS")
;;//! \htmlinclude CargoBoxControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CARGOBOX_CMD_INIT*" (find-package "TWINNY_MSGS::CARGOBOXCONTROL"))
(shadow '*CARGOBOX_CMD_INIT* (find-package "TWINNY_MSGS::CARGOBOXCONTROL"))
(defconstant twinny_msgs::CargoBoxControl::*CARGOBOX_CMD_INIT* 0)
(intern "*CARGOBOX_CMD_LOCK*" (find-package "TWINNY_MSGS::CARGOBOXCONTROL"))
(shadow '*CARGOBOX_CMD_LOCK* (find-package "TWINNY_MSGS::CARGOBOXCONTROL"))
(defconstant twinny_msgs::CargoBoxControl::*CARGOBOX_CMD_LOCK* 1)
(intern "*CARGOBOX_CMD_UNLOCK*" (find-package "TWINNY_MSGS::CARGOBOXCONTROL"))
(shadow '*CARGOBOX_CMD_UNLOCK* (find-package "TWINNY_MSGS::CARGOBOXCONTROL"))
(defconstant twinny_msgs::CargoBoxControl::*CARGOBOX_CMD_UNLOCK* 2)
(intern "*CARGOBOX_CMD_LAMP_ON*" (find-package "TWINNY_MSGS::CARGOBOXCONTROL"))
(shadow '*CARGOBOX_CMD_LAMP_ON* (find-package "TWINNY_MSGS::CARGOBOXCONTROL"))
(defconstant twinny_msgs::CargoBoxControl::*CARGOBOX_CMD_LAMP_ON* 3)
(intern "*CARGOBOX_CMD_LAMP_OFF*" (find-package "TWINNY_MSGS::CARGOBOXCONTROL"))
(shadow '*CARGOBOX_CMD_LAMP_OFF* (find-package "TWINNY_MSGS::CARGOBOXCONTROL"))
(defconstant twinny_msgs::CargoBoxControl::*CARGOBOX_CMD_LAMP_OFF* 4)
(defclass twinny_msgs::CargoBoxControl
  :super ros::object
  :slots (_header _type _cargobox_id _cargobox_command ))

(defmethod twinny_msgs::CargoBoxControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:cargobox_id __cargobox_id) 0)
    ((:cargobox_command __cargobox_command) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _cargobox_id (round __cargobox_id))
   (setq _cargobox_command (round __cargobox_command))
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
  (:cargobox_id
   (&optional __cargobox_id)
   (if __cargobox_id (setq _cargobox_id __cargobox_id)) _cargobox_id)
  (:cargobox_command
   (&optional __cargobox_command)
   (if __cargobox_command (setq _cargobox_command __cargobox_command)) _cargobox_command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint32 _cargobox_id
    4
    ;; int32 _cargobox_command
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
     ;; uint32 _cargobox_id
       (write-long _cargobox_id s)
     ;; int32 _cargobox_command
       (write-long _cargobox_command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _cargobox_id
     (setq _cargobox_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cargobox_command
     (setq _cargobox_command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get twinny_msgs::CargoBoxControl :md5sum-) "c439b05678863e7514e389ae7882b3f5")
(setf (get twinny_msgs::CargoBoxControl :datatype-) "twinny_msgs/CargoBoxControl")
(setf (get twinny_msgs::CargoBoxControl :definition-)
      "Header header
string type

uint32 cargobox_id

int32 CARGOBOX_CMD_INIT=0
int32 CARGOBOX_CMD_LOCK=1
int32 CARGOBOX_CMD_UNLOCK=2
int32 CARGOBOX_CMD_LAMP_ON=3
int32 CARGOBOX_CMD_LAMP_OFF=4

int32 cargobox_command

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



(provide :twinny_msgs/CargoBoxControl "c439b05678863e7514e389ae7882b3f5")


