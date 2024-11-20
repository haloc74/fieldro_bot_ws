
(cl:in-package :asdf)

(defsystem "trash_bot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "IOSignal" :depends-on ("_package_IOSignal"))
    (:file "_package_IOSignal" :depends-on ("_package"))
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "UnitActionComplete" :depends-on ("_package_UnitActionComplete"))
    (:file "_package_UnitActionComplete" :depends-on ("_package"))
    (:file "UnitAliveMsg" :depends-on ("_package_UnitAliveMsg"))
    (:file "_package_UnitAliveMsg" :depends-on ("_package"))
    (:file "UnitControl" :depends-on ("_package_UnitControl"))
    (:file "_package_UnitControl" :depends-on ("_package"))
    (:file "UnitStateMsg" :depends-on ("_package_UnitStateMsg"))
    (:file "_package_UnitStateMsg" :depends-on ("_package"))
  ))