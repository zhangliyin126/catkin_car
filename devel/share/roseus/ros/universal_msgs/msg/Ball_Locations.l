;; Auto-generated. Do not edit!


(when (boundp 'universal_msgs::Ball_Locations)
  (if (not (find-package "UNIVERSAL_MSGS"))
    (make-package "UNIVERSAL_MSGS"))
  (shadow 'Ball_Locations (find-package "UNIVERSAL_MSGS")))
(unless (find-package "UNIVERSAL_MSGS::BALL_LOCATIONS")
  (make-package "UNIVERSAL_MSGS::BALL_LOCATIONS"))

(in-package "ROS")
;;//! \htmlinclude Ball_Locations.msg.html


(defclass universal_msgs::Ball_Locations
  :super ros::object
  :slots (_x _y _number ))

(defmethod universal_msgs::Ball_Locations
  (:init
   (&key
    ((:x __x) (make-array 0 :initial-element 0 :element-type :integer))
    ((:y __y) (make-array 0 :initial-element 0 :element-type :integer))
    ((:number __number) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _number __number)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; int32[] _x
    (* 4    (length _x)) 4
    ;; int32[] _y
    (* 4    (length _y)) 4
    ;; int32[] _number
    (* 4    (length _number)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (write-long (elt _x i) s)
       )
     ;; int32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (write-long (elt _y i) s)
       )
     ;; int32[] _number
     (write-long (length _number) s)
     (dotimes (i (length _number))
       (write-long (elt _number i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _number
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _number (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _number i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get universal_msgs::Ball_Locations :md5sum-) "dd76591bbd656c7519d60041cd4b0411")
(setf (get universal_msgs::Ball_Locations :datatype-) "universal_msgs/Ball_Locations")
(setf (get universal_msgs::Ball_Locations :definition-)
      "int32[] x
int32[] y
int32[] number

")



(provide :universal_msgs/Ball_Locations "dd76591bbd656c7519d60041cd4b0411")


