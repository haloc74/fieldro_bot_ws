;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PalletLiftCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PalletLiftCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::PALLETLIFTCOMMAND")
  (make-package "TWINNY_MSGS::PALLETLIFTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PalletLiftCommand.msg.html


(intern "*SETTLE*" (find-package "TWINNY_MSGS::PALLETLIFTCOMMAND"))
(shadow '*SETTLE* (find-package "TWINNY_MSGS::PALLETLIFTCOMMAND"))
(defconstant twinny_msgs::PalletLiftCommand::*SETTLE* "settle")
(intern "*READY_TO_LOAD*" (find-package "TWINNY_MSGS::PALLETLIFTCOMMAND"))
(shadow '*READY_TO_LOAD* (find-package "TWINNY_MSGS::PALLETLIFTCOMMAND"))
(defconstant twinny_msgs::PalletLiftCommand::*READY_TO_LOAD* "ready_to_load")
(intern "*LOAD*" (find-package "TWINNY_MSGS::PALLETLIFTCOMMAND"))
(shadow '*LOAD* (find-package "TWINNY_MSGS::PALLETLIFTCOMMAND"))
(defconstant twinny_msgs::PalletLiftCommand::*LOAD* "load")
(intern "*READY_TO_UNLOAD*" (find-package "TWINNY_MSGS::PALLETLIFTCOMMAND"))
(shadow '*READY_TO_UNLOAD* (find-package "TWINNY_MSGS::PALLETLIFTCOMMAND"))
(defconstant twinny_msgs::PalletLiftCommand::*READY_TO_UNLOAD* "ready_to_unload")
(intern "*UNLOAD*" (find-package "TWINNY_MSGS::PALLETLIFTCOMMAND"))
(shadow '*UNLOAD* (find-package "TWINNY_MSGS::PALLETLIFTCOMMAND"))
(defconstant twinny_msgs::PalletLiftCommand::*UNLOAD* "unload")
(defclass twinny_msgs::PalletLiftCommand
  :super ros::object
  :slots (_command _type ))

(defmethod twinny_msgs::PalletLiftCommand
  (:init
   (&key
    ((:command __command) "")
    ((:type __type) "")
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _type (string __type))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get twinny_msgs::PalletLiftCommand :md5sum-) "26fb3be129c5aec0fc705f9631d5551c")
(setf (get twinny_msgs::PalletLiftCommand :datatype-) "twinny_msgs/PalletLiftCommand")
(setf (get twinny_msgs::PalletLiftCommand :definition-)
      "string SETTLE=settle
string READY_TO_LOAD=ready_to_load
string LOAD=load
string READY_TO_UNLOAD=ready_to_unload
string UNLOAD=unload

string command
string type
")



(provide :twinny_msgs/PalletLiftCommand "26fb3be129c5aec0fc705f9631d5551c")


