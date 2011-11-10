
(cl:in-package :asdf)

(defsystem "RosDispatcher-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "movement" :depends-on ("_package_movement"))
    (:file "_package_movement" :depends-on ("_package"))
  ))