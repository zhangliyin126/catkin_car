
(cl:in-package :asdf)

(defsystem "universal_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SendHitBallLocationABS" :depends-on ("_package_SendHitBallLocationABS"))
    (:file "_package_SendHitBallLocationABS" :depends-on ("_package"))
    (:file "Trash_Location" :depends-on ("_package_Trash_Location"))
    (:file "_package_Trash_Location" :depends-on ("_package"))
  ))