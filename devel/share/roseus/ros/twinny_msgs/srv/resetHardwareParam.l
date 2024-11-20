;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::resetHardwareParam)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'resetHardwareParam (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::RESETHARDWAREPARAM")
  (make-package "TWINNY_MSGS::RESETHARDWAREPARAM"))
(unless (find-package "TWINNY_MSGS::RESETHARDWAREPARAMREQUEST")
  (make-package "TWINNY_MSGS::RESETHARDWAREPARAMREQUEST"))
(unless (find-package "TWINNY_MSGS::RESETHARDWAREPARAMRESPONSE")
  (make-package "TWINNY_MSGS::RESETHARDWAREPARAMRESPONSE"))

(in-package "ROS")





(defclass twinny_msgs::resetHardwareParamRequest
  :super ros::object
  :slots ())

(defmethod twinny_msgs::resetHardwareParamRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass twinny_msgs::resetHardwareParamResponse
  :super ros::object
  :slots (_success _message ))

(defmethod twinny_msgs::resetHardwareParamResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass twinny_msgs::resetHardwareParam
  :super ros::object
  :slots ())

(setf (get twinny_msgs::resetHardwareParam :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get twinny_msgs::resetHardwareParam :datatype-) "twinny_msgs/resetHardwareParam")
(setf (get twinny_msgs::resetHardwareParam :request) twinny_msgs::resetHardwareParamRequest)
(setf (get twinny_msgs::resetHardwareParam :response) twinny_msgs::resetHardwareParamResponse)

(defmethod twinny_msgs::resetHardwareParamRequest
  (:response () (instance twinny_msgs::resetHardwareParamResponse :init)))

(setf (get twinny_msgs::resetHardwareParamRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get twinny_msgs::resetHardwareParamRequest :datatype-) "twinny_msgs/resetHardwareParamRequest")
(setf (get twinny_msgs::resetHardwareParamRequest :definition-)
      "---
bool success
string message


")

(setf (get twinny_msgs::resetHardwareParamResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get twinny_msgs::resetHardwareParamResponse :datatype-) "twinny_msgs/resetHardwareParamResponse")
(setf (get twinny_msgs::resetHardwareParamResponse :definition-)
      "---
bool success
string message


")



(provide :twinny_msgs/resetHardwareParam "937c9679a518e3a18d831e57125ea522")


