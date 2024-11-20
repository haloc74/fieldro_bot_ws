;; Auto-generated. Do not edit!


(when (boundp 'trash_bot::UnitStateMsg)
  (if (not (find-package "TRASH_BOT"))
    (make-package "TRASH_BOT"))
  (shadow 'UnitStateMsg (find-package "TRASH_BOT")))
(unless (find-package "TRASH_BOT::UNITSTATEMSG")
  (make-package "TRASH_BOT::UNITSTATEMSG"))

(in-package "ROS")
;;//! \htmlinclude UnitStateMsg.msg.html


(defclass trash_bot::UnitStateMsg
  :super ros::object
  :slots (_alive _states ))

(defmethod trash_bot::UnitStateMsg
  (:init
   (&key
    ((:alive __alive) 0)
    ((:states __states) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _alive (round __alive))
   (setq _states __states)
   self)
  (:alive
   (&optional __alive)
   (if __alive (setq _alive __alive)) _alive)
  (:states
   (&optional __states)
   (if __states (setq _states __states)) _states)
  (:serialization-length
   ()
   (+
    ;; int32 _alive
    4
    ;; int32[] _states
    (* 4    (length _states)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _alive
       (write-long _alive s)
     ;; int32[] _states
     (write-long (length _states) s)
     (dotimes (i (length _states))
       (write-long (elt _states i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _alive
     (setq _alive (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _states i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get trash_bot::UnitStateMsg :md5sum-) "090390084faae6402e136d50389ae081")
(setf (get trash_bot::UnitStateMsg :datatype-) "trash_bot/UnitStateMsg")
(setf (get trash_bot::UnitStateMsg :definition-)
      "# UnitStateMsg.msg

# bit flag를 통해 각 unit index와 1:1 매칭된다.
# 0:alive , 1:dead or timeout
int32 alive

# Array for unit states
int32[] states
")



(provide :trash_bot/UnitStateMsg "090390084faae6402e136d50389ae081")


