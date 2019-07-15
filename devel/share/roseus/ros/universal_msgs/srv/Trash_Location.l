;; Auto-generated. Do not edit!


(when (boundp 'universal_msgs::Trash_Location)
  (if (not (find-package "UNIVERSAL_MSGS"))
    (make-package "UNIVERSAL_MSGS"))
  (shadow 'Trash_Location (find-package "UNIVERSAL_MSGS")))
(unless (find-package "UNIVERSAL_MSGS::TRASH_LOCATION")
  (make-package "UNIVERSAL_MSGS::TRASH_LOCATION"))
(unless (find-package "UNIVERSAL_MSGS::TRASH_LOCATIONREQUEST")
  (make-package "UNIVERSAL_MSGS::TRASH_LOCATIONREQUEST"))
(unless (find-package "UNIVERSAL_MSGS::TRASH_LOCATIONRESPONSE")
  (make-package "UNIVERSAL_MSGS::TRASH_LOCATIONRESPONSE"))

(in-package "ROS")





(defclass universal_msgs::Trash_LocationRequest
  :super ros::object
  :slots (_x _y ))

(defmethod universal_msgs::Trash_LocationRequest
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass universal_msgs::Trash_LocationResponse
  :super ros::object
  :slots (_success ))

(defmethod universal_msgs::Trash_LocationResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass universal_msgs::Trash_Location
  :super ros::object
  :slots ())

(setf (get universal_msgs::Trash_Location :md5sum-) "297290d6ee8d47376b41d0866bb23c06")
(setf (get universal_msgs::Trash_Location :datatype-) "universal_msgs/Trash_Location")
(setf (get universal_msgs::Trash_Location :request) universal_msgs::Trash_LocationRequest)
(setf (get universal_msgs::Trash_Location :response) universal_msgs::Trash_LocationResponse)

(defmethod universal_msgs::Trash_LocationRequest
  (:response () (instance universal_msgs::Trash_LocationResponse :init)))

(setf (get universal_msgs::Trash_LocationRequest :md5sum-) "297290d6ee8d47376b41d0866bb23c06")
(setf (get universal_msgs::Trash_LocationRequest :datatype-) "universal_msgs/Trash_LocationRequest")
(setf (get universal_msgs::Trash_LocationRequest :definition-)
      "int32 x
int32 y
---
bool success

")

(setf (get universal_msgs::Trash_LocationResponse :md5sum-) "297290d6ee8d47376b41d0866bb23c06")
(setf (get universal_msgs::Trash_LocationResponse :datatype-) "universal_msgs/Trash_LocationResponse")
(setf (get universal_msgs::Trash_LocationResponse :definition-)
      "int32 x
int32 y
---
bool success

")



(provide :universal_msgs/Trash_Location "297290d6ee8d47376b41d0866bb23c06")


