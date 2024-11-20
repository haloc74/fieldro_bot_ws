;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::TempLidarMerger)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'TempLidarMerger (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::TEMPLIDARMERGER")
  (make-package "TWINNY_MSGS::TEMPLIDARMERGER"))
(unless (find-package "TWINNY_MSGS::TEMPLIDARMERGERREQUEST")
  (make-package "TWINNY_MSGS::TEMPLIDARMERGERREQUEST"))
(unless (find-package "TWINNY_MSGS::TEMPLIDARMERGERRESPONSE")
  (make-package "TWINNY_MSGS::TEMPLIDARMERGERRESPONSE"))

(in-package "ROS")





(defclass twinny_msgs::TempLidarMergerRequest
  :super ros::object
  :slots (_x_min _x_max _y_min _y_max ))

(defmethod twinny_msgs::TempLidarMergerRequest
  (:init
   (&key
    ((:x_min __x_min) 0.0)
    ((:x_max __x_max) 0.0)
    ((:y_min __y_min) 0.0)
    ((:y_max __y_max) 0.0)
    )
   (send-super :init)
   (setq _x_min (float __x_min))
   (setq _x_max (float __x_max))
   (setq _y_min (float __y_min))
   (setq _y_max (float __y_max))
   self)
  (:x_min
   (&optional __x_min)
   (if __x_min (setq _x_min __x_min)) _x_min)
  (:x_max
   (&optional __x_max)
   (if __x_max (setq _x_max __x_max)) _x_max)
  (:y_min
   (&optional __y_min)
   (if __y_min (setq _y_min __y_min)) _y_min)
  (:y_max
   (&optional __y_max)
   (if __y_max (setq _y_max __y_max)) _y_max)
  (:serialization-length
   ()
   (+
    ;; float64 _x_min
    8
    ;; float64 _x_max
    8
    ;; float64 _y_min
    8
    ;; float64 _y_max
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x_min
       (sys::poke _x_min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_max
       (sys::poke _x_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_min
       (sys::poke _y_min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_max
       (sys::poke _y_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x_min
     (setq _x_min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_max
     (setq _x_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_min
     (setq _y_min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_max
     (setq _y_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass twinny_msgs::TempLidarMergerResponse
  :super ros::object
  :slots (_result ))

(defmethod twinny_msgs::TempLidarMergerResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass twinny_msgs::TempLidarMerger
  :super ros::object
  :slots ())

(setf (get twinny_msgs::TempLidarMerger :md5sum-) "e8e1e3f1f578fce614ecb20fa50c446a")
(setf (get twinny_msgs::TempLidarMerger :datatype-) "twinny_msgs/TempLidarMerger")
(setf (get twinny_msgs::TempLidarMerger :request) twinny_msgs::TempLidarMergerRequest)
(setf (get twinny_msgs::TempLidarMerger :response) twinny_msgs::TempLidarMergerResponse)

(defmethod twinny_msgs::TempLidarMergerRequest
  (:response () (instance twinny_msgs::TempLidarMergerResponse :init)))

(setf (get twinny_msgs::TempLidarMergerRequest :md5sum-) "e8e1e3f1f578fce614ecb20fa50c446a")
(setf (get twinny_msgs::TempLidarMergerRequest :datatype-) "twinny_msgs/TempLidarMergerRequest")
(setf (get twinny_msgs::TempLidarMergerRequest :definition-)
      "float64 x_min
float64 x_max
float64 y_min
float64 y_max

---
int32 result

")

(setf (get twinny_msgs::TempLidarMergerResponse :md5sum-) "e8e1e3f1f578fce614ecb20fa50c446a")
(setf (get twinny_msgs::TempLidarMergerResponse :datatype-) "twinny_msgs/TempLidarMergerResponse")
(setf (get twinny_msgs::TempLidarMergerResponse :definition-)
      "float64 x_min
float64 x_max
float64 y_min
float64 y_max

---
int32 result

")



(provide :twinny_msgs/TempLidarMerger "e8e1e3f1f578fce614ecb20fa50c446a")


