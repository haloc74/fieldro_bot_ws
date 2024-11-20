;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::LinearAngular)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'LinearAngular (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::LINEARANGULAR")
  (make-package "TWINNY_MSGS::LINEARANGULAR"))

(in-package "ROS")
;;//! \htmlinclude LinearAngular.msg.html


(defclass twinny_msgs::LinearAngular
  :super ros::object
  :slots (_linear _angular ))

(defmethod twinny_msgs::LinearAngular
  (:init
   (&key
    ((:linear __linear) 0.0)
    ((:angular __angular) 0.0)
    )
   (send-super :init)
   (setq _linear (float __linear))
   (setq _angular (float __angular))
   self)
  (:linear
   (&optional __linear)
   (if __linear (setq _linear __linear)) _linear)
  (:angular
   (&optional __angular)
   (if __angular (setq _angular __angular)) _angular)
  (:serialization-length
   ()
   (+
    ;; float64 _linear
    8
    ;; float64 _angular
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear
       (sys::poke _linear (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular
       (sys::poke _angular (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear
     (setq _linear (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular
     (setq _angular (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get twinny_msgs::LinearAngular :md5sum-) "144a16e4d6b53a0dbadc2e617460a173")
(setf (get twinny_msgs::LinearAngular :datatype-) "twinny_msgs/LinearAngular")
(setf (get twinny_msgs::LinearAngular :definition-)
      "float64 linear
float64 angular

")



(provide :twinny_msgs/LinearAngular "144a16e4d6b53a0dbadc2e617460a173")


