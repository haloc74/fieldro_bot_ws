;; Auto-generated. Do not edit!


(when (boundp 'trash_bot::UnitAliveMsg)
  (if (not (find-package "TRASH_BOT"))
    (make-package "TRASH_BOT"))
  (shadow 'UnitAliveMsg (find-package "TRASH_BOT")))
(unless (find-package "TRASH_BOT::UNITALIVEMSG")
  (make-package "TRASH_BOT::UNITALIVEMSG"))

(in-package "ROS")
;;//! \htmlinclude UnitAliveMsg.msg.html


(defclass trash_bot::UnitAliveMsg
  :super ros::object
  :slots (_index _state ))

(defmethod trash_bot::UnitAliveMsg
  (:init
   (&key
    ((:index __index) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _state (round __state))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get trash_bot::UnitAliveMsg :md5sum-) "3580be06e9860f4561cd6b311dfacef3")
(setf (get trash_bot::UnitAliveMsg :datatype-) "trash_bot/UnitAliveMsg")
(setf (get trash_bot::UnitAliveMsg :definition-)
      "
# UnitAliveMsg.msg

# Unit index
int32 index

# unit states
int32 state


")



(provide :trash_bot/UnitAliveMsg "3580be06e9860f4561cd6b311dfacef3")


