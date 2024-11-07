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
  :slots (_unit_id _state ))

(defmethod trash_bot::UnitStateMsg
  (:init
   (&key
    ((:unit_id __unit_id) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _unit_id (round __unit_id))
   (setq _state (round __state))
   self)
  (:unit_id
   (&optional __unit_id)
   (if __unit_id (setq _unit_id __unit_id)) _unit_id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _unit_id
    4
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _unit_id
       (write-long _unit_id s)
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _unit_id
     (setq _unit_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get trash_bot::UnitStateMsg :md5sum-) "7cd06622fe3c1b94199887fecbe639f5")
(setf (get trash_bot::UnitStateMsg :datatype-) "trash_bot/UnitStateMsg")
(setf (get trash_bot::UnitStateMsg :definition-)
      "
# 각 Unit이 현재의 상태를 보고 하는 Message
int32 unit_id           # Unit ID
int32 state             # 현재 상태 (UnitState index, unit_define.h)
")



(provide :trash_bot/UnitStateMsg "7cd06622fe3c1b94199887fecbe639f5")


