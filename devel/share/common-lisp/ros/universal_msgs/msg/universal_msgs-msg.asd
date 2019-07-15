
(cl:in-package :asdf)

(defsystem "universal_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Ball_Locations" :depends-on ("_package_Ball_Locations"))
    (:file "_package_Ball_Locations" :depends-on ("_package"))
  ))