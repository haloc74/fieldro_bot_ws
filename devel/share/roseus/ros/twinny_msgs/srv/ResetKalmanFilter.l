;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::ResetKalmanFilter)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'ResetKalmanFilter (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::RESETKALMANFILTER")
  (make-package "TWINNY_MSGS::RESETKALMANFILTER"))
(unless (find-package "TWINNY_MSGS::RESETKALMANFILTERREQUEST")
  (make-package "TWINNY_MSGS::RESETKALMANFILTERREQUEST"))
(unless (find-package "TWINNY_MSGS::RESETKALMANFILTERRESPONSE")
  (make-package "TWINNY_MSGS::RESETKALMANFILTERRESPONSE"))

(in-package "ROS")





(defclass twinny_msgs::ResetKalmanFilterRequest
  :super ros::object
  :slots ())

(defmethod twinny_msgs::ResetKalmanFilterRequest
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

(intern "*SUCCESS*" (find-package "TWINNY_MSGS::RESETKALMANFILTERRESPONSE"))
(shadow '*SUCCESS* (find-package "TWINNY_MSGS::RESETKALMANFILTERRESPONSE"))
(defconstant twinny_msgs::ResetKalmanFilterResponse::*SUCCESS* 1)
(intern "*NOT_PERMIT_IN_DISABLE_MODE*" (find-package "TWINNY_MSGS::RESETKALMANFILTERRESPONSE"))
(shadow '*NOT_PERMIT_IN_DISABLE_MODE* (find-package "TWINNY_MSGS::RESETKALMANFILTERRESPONSE"))
(defconstant twinny_msgs::ResetKalmanFilterResponse::*NOT_PERMIT_IN_DISABLE_MODE* -2)
(intern "*UNKNOWN_ERROR*" (find-package "TWINNY_MSGS::RESETKALMANFILTERRESPONSE"))
(shadow '*UNKNOWN_ERROR* (find-package "TWINNY_MSGS::RESETKALMANFILTERRESPONSE"))
(defconstant twinny_msgs::ResetKalmanFilterResponse::*UNKNOWN_ERROR* -404)
(defclass twinny_msgs::ResetKalmanFilterResponse
  :super ros::object
  :slots (_state ))

(defmethod twinny_msgs::ResetKalmanFilterResponse
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass twinny_msgs::ResetKalmanFilter
  :super ros::object
  :slots ())

(setf (get twinny_msgs::ResetKalmanFilter :md5sum-) "6c52dd7ca4d559768802719a649d3a8a")
(setf (get twinny_msgs::ResetKalmanFilter :datatype-) "twinny_msgs/ResetKalmanFilter")
(setf (get twinny_msgs::ResetKalmanFilter :request) twinny_msgs::ResetKalmanFilterRequest)
(setf (get twinny_msgs::ResetKalmanFilter :response) twinny_msgs::ResetKalmanFilterResponse)

(defmethod twinny_msgs::ResetKalmanFilterRequest
  (:response () (instance twinny_msgs::ResetKalmanFilterResponse :init)))

(setf (get twinny_msgs::ResetKalmanFilterRequest :md5sum-) "6c52dd7ca4d559768802719a649d3a8a")
(setf (get twinny_msgs::ResetKalmanFilterRequest :datatype-) "twinny_msgs/ResetKalmanFilterRequest")
(setf (get twinny_msgs::ResetKalmanFilterRequest :definition-)
      "---
int32 state

int32 SUCCESS=1
int32 NOT_PERMIT_IN_DISABLE_MODE=-2
int32 UNKNOWN_ERROR=-404
")

(setf (get twinny_msgs::ResetKalmanFilterResponse :md5sum-) "6c52dd7ca4d559768802719a649d3a8a")
(setf (get twinny_msgs::ResetKalmanFilterResponse :datatype-) "twinny_msgs/ResetKalmanFilterResponse")
(setf (get twinny_msgs::ResetKalmanFilterResponse :definition-)
      "---
int32 state

int32 SUCCESS=1
int32 NOT_PERMIT_IN_DISABLE_MODE=-2
int32 UNKNOWN_ERROR=-404
")



(provide :twinny_msgs/ResetKalmanFilter "6c52dd7ca4d559768802719a649d3a8a")


