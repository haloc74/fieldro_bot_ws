;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PGV_Pub_Control)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PGV_Pub_Control (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::PGV_PUB_CONTROL")
  (make-package "TWINNY_MSGS::PGV_PUB_CONTROL"))
(unless (find-package "TWINNY_MSGS::PGV_PUB_CONTROLREQUEST")
  (make-package "TWINNY_MSGS::PGV_PUB_CONTROLREQUEST"))
(unless (find-package "TWINNY_MSGS::PGV_PUB_CONTROLRESPONSE")
  (make-package "TWINNY_MSGS::PGV_PUB_CONTROLRESPONSE"))

(in-package "ROS")





(defclass twinny_msgs::PGV_Pub_ControlRequest
  :super ros::object
  :slots (_cnt ))

(defmethod twinny_msgs::PGV_Pub_ControlRequest
  (:init
   (&key
    ((:cnt __cnt) 0)
    )
   (send-super :init)
   (setq _cnt (round __cnt))
   self)
  (:cnt
   (&optional __cnt)
   (if __cnt (setq _cnt __cnt)) _cnt)
  (:serialization-length
   ()
   (+
    ;; int32 _cnt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cnt
       (write-long _cnt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cnt
     (setq _cnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass twinny_msgs::PGV_Pub_ControlResponse
  :super ros::object
  :slots (_ack ))

(defmethod twinny_msgs::PGV_Pub_ControlResponse
  (:init
   (&key
    ((:ack __ack) nil)
    )
   (send-super :init)
   (setq _ack __ack)
   self)
  (:ack
   (&optional __ack)
   (if __ack (setq _ack __ack)) _ack)
  (:serialization-length
   ()
   (+
    ;; bool _ack
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ack
       (if _ack (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ack
     (setq _ack (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass twinny_msgs::PGV_Pub_Control
  :super ros::object
  :slots ())

(setf (get twinny_msgs::PGV_Pub_Control :md5sum-) "d818899d86a02c4f5208ad53722b29ab")
(setf (get twinny_msgs::PGV_Pub_Control :datatype-) "twinny_msgs/PGV_Pub_Control")
(setf (get twinny_msgs::PGV_Pub_Control :request) twinny_msgs::PGV_Pub_ControlRequest)
(setf (get twinny_msgs::PGV_Pub_Control :response) twinny_msgs::PGV_Pub_ControlResponse)

(defmethod twinny_msgs::PGV_Pub_ControlRequest
  (:response () (instance twinny_msgs::PGV_Pub_ControlResponse :init)))

(setf (get twinny_msgs::PGV_Pub_ControlRequest :md5sum-) "d818899d86a02c4f5208ad53722b29ab")
(setf (get twinny_msgs::PGV_Pub_ControlRequest :datatype-) "twinny_msgs/PGV_Pub_ControlRequest")
(setf (get twinny_msgs::PGV_Pub_ControlRequest :definition-)
      "int32 cnt
---
bool ack

")

(setf (get twinny_msgs::PGV_Pub_ControlResponse :md5sum-) "d818899d86a02c4f5208ad53722b29ab")
(setf (get twinny_msgs::PGV_Pub_ControlResponse :datatype-) "twinny_msgs/PGV_Pub_ControlResponse")
(setf (get twinny_msgs::PGV_Pub_ControlResponse :definition-)
      "int32 cnt
---
bool ack

")



(provide :twinny_msgs/PGV_Pub_Control "d818899d86a02c4f5208ad53722b29ab")


