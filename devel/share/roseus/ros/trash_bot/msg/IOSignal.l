;; Auto-generated. Do not edit!


(when (boundp 'trash_bot::IOSignal)
  (if (not (find-package "TRASH_BOT"))
    (make-package "TRASH_BOT"))
  (shadow 'IOSignal (find-package "TRASH_BOT")))
(unless (find-package "TRASH_BOT::IOSIGNAL")
  (make-package "TRASH_BOT::IOSIGNAL"))

(in-package "ROS")
;;//! \htmlinclude IOSignal.msg.html


(defclass trash_bot::IOSignal
  :super ros::object
  :slots (_time_stamp _signal_bit ))

(defmethod trash_bot::IOSignal
  (:init
   (&key
    ((:time_stamp __time_stamp) (instance ros::time :init))
    ((:signal_bit __signal_bit) 0)
    )
   (send-super :init)
   (setq _time_stamp __time_stamp)
   (setq _signal_bit (round __signal_bit))
   self)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:signal_bit
   (&optional __signal_bit)
   (if __signal_bit (setq _signal_bit __signal_bit)) _signal_bit)
  (:serialization-length
   ()
   (+
    ;; time _time_stamp
    8
    ;; int64 _signal_bit
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time_stamp
       (write-long (send _time_stamp :sec) s) (write-long (send _time_stamp :nsec) s)
     ;; int64 _signal_bit
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _signal_bit (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _signal_bit) (= (length (_signal_bit . bv)) 2)) ;; bignum
              (write-long (ash (elt (_signal_bit . bv) 0) 0) s)
              (write-long (ash (elt (_signal_bit . bv) 1) -1) s))
             ((and (class _signal_bit) (= (length (_signal_bit . bv)) 1)) ;; big1
              (write-long (elt (_signal_bit . bv) 0) s)
              (write-long (if (>= _signal_bit 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _signal_bit s)(write-long (if (>= _signal_bit 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time_stamp
     (send _time_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int64 _signal_bit
#+(or :alpha :irix6 :x86_64)
      (setf _signal_bit (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _signal_bit (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get trash_bot::IOSignal :md5sum-) "4b2bc2f69e0aff659bc5c2a1a7f822b2")
(setf (get trash_bot::IOSignal :datatype-) "trash_bot/IOSignal")
(setf (get trash_bot::IOSignal :definition-)
      "
time time_stamp     # Message 발행 시간 (ros::Time)
int64 signal_bit    # Total Signal Value (bit operation)

")



(provide :trash_bot/IOSignal "4b2bc2f69e0aff659bc5c2a1a7f822b2")


