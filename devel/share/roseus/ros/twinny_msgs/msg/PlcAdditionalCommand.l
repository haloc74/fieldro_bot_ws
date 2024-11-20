;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PlcAdditionalCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PlcAdditionalCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::PLCADDITIONALCOMMAND")
  (make-package "TWINNY_MSGS::PLCADDITIONALCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PlcAdditionalCommand.msg.html


(defclass twinny_msgs::PlcAdditionalCommand
  :super ros::object
  :slots (_additional_command ))

(defmethod twinny_msgs::PlcAdditionalCommand
  (:init
   (&key
    ((:additional_command __additional_command) 0)
    )
   (send-super :init)
   (setq _additional_command (round __additional_command))
   self)
  (:additional_command
   (&optional __additional_command)
   (if __additional_command (setq _additional_command __additional_command)) _additional_command)
  (:serialization-length
   ()
   (+
    ;; uint32 _additional_command
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _additional_command
       (write-long _additional_command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _additional_command
     (setq _additional_command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get twinny_msgs::PlcAdditionalCommand :md5sum-) "e5c07594b5c15ce708f5c56e70ab299e")
(setf (get twinny_msgs::PlcAdditionalCommand :datatype-) "twinny_msgs/PlcAdditionalCommand")
(setf (get twinny_msgs::PlcAdditionalCommand :definition-)
      "uint32 additional_command
")



(provide :twinny_msgs/PlcAdditionalCommand "e5c07594b5c15ce708f5c56e70ab299e")


