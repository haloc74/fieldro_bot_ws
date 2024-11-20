;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::MD_Mode)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'MD_Mode (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MD_MODE")
  (make-package "TWINNY_MSGS::MD_MODE"))
(unless (find-package "TWINNY_MSGS::MD_MODEREQUEST")
  (make-package "TWINNY_MSGS::MD_MODEREQUEST"))
(unless (find-package "TWINNY_MSGS::MD_MODERESPONSE")
  (make-package "TWINNY_MSGS::MD_MODERESPONSE"))

(in-package "ROS")





(intern "*NORMAL_MODE*" (find-package "TWINNY_MSGS::MD_MODEREQUEST"))
(shadow '*NORMAL_MODE* (find-package "TWINNY_MSGS::MD_MODEREQUEST"))
(defconstant twinny_msgs::MD_ModeRequest::*NORMAL_MODE* 0)
(intern "*TORQUE_FREE*" (find-package "TWINNY_MSGS::MD_MODEREQUEST"))
(shadow '*TORQUE_FREE* (find-package "TWINNY_MSGS::MD_MODEREQUEST"))
(defconstant twinny_msgs::MD_ModeRequest::*TORQUE_FREE* 1)
(intern "*BRAKING*" (find-package "TWINNY_MSGS::MD_MODEREQUEST"))
(shadow '*BRAKING* (find-package "TWINNY_MSGS::MD_MODEREQUEST"))
(defconstant twinny_msgs::MD_ModeRequest::*BRAKING* 2)
(intern "*ERROR*" (find-package "TWINNY_MSGS::MD_MODEREQUEST"))
(shadow '*ERROR* (find-package "TWINNY_MSGS::MD_MODEREQUEST"))
(defconstant twinny_msgs::MD_ModeRequest::*ERROR* 3)
(intern "*SETTING*" (find-package "TWINNY_MSGS::MD_MODEREQUEST"))
(shadow '*SETTING* (find-package "TWINNY_MSGS::MD_MODEREQUEST"))
(defconstant twinny_msgs::MD_ModeRequest::*SETTING* 4)
(defclass twinny_msgs::MD_ModeRequest
  :super ros::object
  :slots (_input_mode _argument ))

(defmethod twinny_msgs::MD_ModeRequest
  (:init
   (&key
    ((:input_mode __input_mode) 0)
    ((:argument __argument) 0)
    )
   (send-super :init)
   (setq _input_mode (round __input_mode))
   (setq _argument (round __argument))
   self)
  (:input_mode
   (&optional __input_mode)
   (if __input_mode (setq _input_mode __input_mode)) _input_mode)
  (:argument
   (&optional __argument)
   (if __argument (setq _argument __argument)) _argument)
  (:serialization-length
   ()
   (+
    ;; uint8 _input_mode
    1
    ;; uint8 _argument
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _input_mode
       (write-byte _input_mode s)
     ;; uint8 _argument
       (write-byte _argument s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _input_mode
     (setq _input_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _argument
     (setq _argument (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass twinny_msgs::MD_ModeResponse
  :super ros::object
  :slots (_current_mode _current_error ))

(defmethod twinny_msgs::MD_ModeResponse
  (:init
   (&key
    ((:current_mode __current_mode) 0)
    ((:current_error __current_error) 0)
    )
   (send-super :init)
   (setq _current_mode (round __current_mode))
   (setq _current_error (round __current_error))
   self)
  (:current_mode
   (&optional __current_mode)
   (if __current_mode (setq _current_mode __current_mode)) _current_mode)
  (:current_error
   (&optional __current_error)
   (if __current_error (setq _current_error __current_error)) _current_error)
  (:serialization-length
   ()
   (+
    ;; uint8 _current_mode
    1
    ;; uint8 _current_error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _current_mode
       (write-byte _current_mode s)
     ;; uint8 _current_error
       (write-byte _current_error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _current_mode
     (setq _current_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _current_error
     (setq _current_error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass twinny_msgs::MD_Mode
  :super ros::object
  :slots ())

(setf (get twinny_msgs::MD_Mode :md5sum-) "31fbd060b8f49cd4b847897a2ec4ef55")
(setf (get twinny_msgs::MD_Mode :datatype-) "twinny_msgs/MD_Mode")
(setf (get twinny_msgs::MD_Mode :request) twinny_msgs::MD_ModeRequest)
(setf (get twinny_msgs::MD_Mode :response) twinny_msgs::MD_ModeResponse)

(defmethod twinny_msgs::MD_ModeRequest
  (:response () (instance twinny_msgs::MD_ModeResponse :init)))

(setf (get twinny_msgs::MD_ModeRequest :md5sum-) "31fbd060b8f49cd4b847897a2ec4ef55")
(setf (get twinny_msgs::MD_ModeRequest :datatype-) "twinny_msgs/MD_ModeRequest")
(setf (get twinny_msgs::MD_ModeRequest :definition-)
      "uint8 NORMAL_MODE=0
uint8 TORQUE_FREE=1
uint8 BRAKING=2
uint8 ERROR=3
uint8 SETTING=4

uint8 input_mode
uint8 argument
---
uint8 current_mode
uint8 current_error

")

(setf (get twinny_msgs::MD_ModeResponse :md5sum-) "31fbd060b8f49cd4b847897a2ec4ef55")
(setf (get twinny_msgs::MD_ModeResponse :datatype-) "twinny_msgs/MD_ModeResponse")
(setf (get twinny_msgs::MD_ModeResponse :definition-)
      "uint8 NORMAL_MODE=0
uint8 TORQUE_FREE=1
uint8 BRAKING=2
uint8 ERROR=3
uint8 SETTING=4

uint8 input_mode
uint8 argument
---
uint8 current_mode
uint8 current_error

")



(provide :twinny_msgs/MD_Mode "31fbd060b8f49cd4b847897a2ec4ef55")


