;; Auto-generated. Do not edit!


(when (boundp 'universal_msgs::SendHitBallLocationABS)
  (if (not (find-package "UNIVERSAL_MSGS"))
    (make-package "UNIVERSAL_MSGS"))
  (shadow 'SendHitBallLocationABS (find-package "UNIVERSAL_MSGS")))
(unless (find-package "UNIVERSAL_MSGS::SENDHITBALLLOCATIONABS")
  (make-package "UNIVERSAL_MSGS::SENDHITBALLLOCATIONABS"))
(unless (find-package "UNIVERSAL_MSGS::SENDHITBALLLOCATIONABSREQUEST")
  (make-package "UNIVERSAL_MSGS::SENDHITBALLLOCATIONABSREQUEST"))
(unless (find-package "UNIVERSAL_MSGS::SENDHITBALLLOCATIONABSRESPONSE")
  (make-package "UNIVERSAL_MSGS::SENDHITBALLLOCATIONABSRESPONSE"))

(in-package "ROS")





(defclass universal_msgs::SendHitBallLocationABSRequest
  :super ros::object
  :slots (_coord ))

(defmethod universal_msgs::SendHitBallLocationABSRequest
  (:init
   (&key
    ((:coord __coord) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _coord __coord)
   self)
  (:coord
   (&optional __coord)
   (if __coord (setq _coord __coord)) _coord)
  (:serialization-length
   ()
   (+
    ;; float64[] _coord
    (* 8    (length _coord)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _coord
     (write-long (length _coord) s)
     (dotimes (i (length _coord))
       (sys::poke (elt _coord i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _coord
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coord (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _coord i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass universal_msgs::SendHitBallLocationABSResponse
  :super ros::object
  :slots (_success ))

(defmethod universal_msgs::SendHitBallLocationABSResponse
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

(defclass universal_msgs::SendHitBallLocationABS
  :super ros::object
  :slots ())

(setf (get universal_msgs::SendHitBallLocationABS :md5sum-) "e50c9458a00924d9c4c833a9c3c086a0")
(setf (get universal_msgs::SendHitBallLocationABS :datatype-) "universal_msgs/SendHitBallLocationABS")
(setf (get universal_msgs::SendHitBallLocationABS :request) universal_msgs::SendHitBallLocationABSRequest)
(setf (get universal_msgs::SendHitBallLocationABS :response) universal_msgs::SendHitBallLocationABSResponse)

(defmethod universal_msgs::SendHitBallLocationABSRequest
  (:response () (instance universal_msgs::SendHitBallLocationABSResponse :init)))

(setf (get universal_msgs::SendHitBallLocationABSRequest :md5sum-) "e50c9458a00924d9c4c833a9c3c086a0")
(setf (get universal_msgs::SendHitBallLocationABSRequest :datatype-) "universal_msgs/SendHitBallLocationABSRequest")
(setf (get universal_msgs::SendHitBallLocationABSRequest :definition-)
      "float64[] coord
---
bool success
")

(setf (get universal_msgs::SendHitBallLocationABSResponse :md5sum-) "e50c9458a00924d9c4c833a9c3c086a0")
(setf (get universal_msgs::SendHitBallLocationABSResponse :datatype-) "universal_msgs/SendHitBallLocationABSResponse")
(setf (get universal_msgs::SendHitBallLocationABSResponse :definition-)
      "float64[] coord
---
bool success
")



(provide :universal_msgs/SendHitBallLocationABS "e50c9458a00924d9c4c833a9c3c086a0")


