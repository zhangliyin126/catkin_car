; Auto-generated. Do not edit!


(cl:in-package universal_msgs-srv)


;//! \htmlinclude SendHitBallLocationABS-request.msg.html

(cl:defclass <SendHitBallLocationABS-request> (roslisp-msg-protocol:ros-message)
  ((coord
    :reader coord
    :initarg :coord
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SendHitBallLocationABS-request (<SendHitBallLocationABS-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendHitBallLocationABS-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendHitBallLocationABS-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name universal_msgs-srv:<SendHitBallLocationABS-request> is deprecated: use universal_msgs-srv:SendHitBallLocationABS-request instead.")))

(cl:ensure-generic-function 'coord-val :lambda-list '(m))
(cl:defmethod coord-val ((m <SendHitBallLocationABS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader universal_msgs-srv:coord-val is deprecated.  Use universal_msgs-srv:coord instead.")
  (coord m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendHitBallLocationABS-request>) ostream)
  "Serializes a message object of type '<SendHitBallLocationABS-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coord))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'coord))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendHitBallLocationABS-request>) istream)
  "Deserializes a message object of type '<SendHitBallLocationABS-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coord) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coord)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendHitBallLocationABS-request>)))
  "Returns string type for a service object of type '<SendHitBallLocationABS-request>"
  "universal_msgs/SendHitBallLocationABSRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendHitBallLocationABS-request)))
  "Returns string type for a service object of type 'SendHitBallLocationABS-request"
  "universal_msgs/SendHitBallLocationABSRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendHitBallLocationABS-request>)))
  "Returns md5sum for a message object of type '<SendHitBallLocationABS-request>"
  "e50c9458a00924d9c4c833a9c3c086a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendHitBallLocationABS-request)))
  "Returns md5sum for a message object of type 'SendHitBallLocationABS-request"
  "e50c9458a00924d9c4c833a9c3c086a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendHitBallLocationABS-request>)))
  "Returns full string definition for message of type '<SendHitBallLocationABS-request>"
  (cl:format cl:nil "float64[] coord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendHitBallLocationABS-request)))
  "Returns full string definition for message of type 'SendHitBallLocationABS-request"
  (cl:format cl:nil "float64[] coord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendHitBallLocationABS-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coord) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendHitBallLocationABS-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendHitBallLocationABS-request
    (cl:cons ':coord (coord msg))
))
;//! \htmlinclude SendHitBallLocationABS-response.msg.html

(cl:defclass <SendHitBallLocationABS-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendHitBallLocationABS-response (<SendHitBallLocationABS-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendHitBallLocationABS-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendHitBallLocationABS-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name universal_msgs-srv:<SendHitBallLocationABS-response> is deprecated: use universal_msgs-srv:SendHitBallLocationABS-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SendHitBallLocationABS-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader universal_msgs-srv:success-val is deprecated.  Use universal_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendHitBallLocationABS-response>) ostream)
  "Serializes a message object of type '<SendHitBallLocationABS-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendHitBallLocationABS-response>) istream)
  "Deserializes a message object of type '<SendHitBallLocationABS-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendHitBallLocationABS-response>)))
  "Returns string type for a service object of type '<SendHitBallLocationABS-response>"
  "universal_msgs/SendHitBallLocationABSResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendHitBallLocationABS-response)))
  "Returns string type for a service object of type 'SendHitBallLocationABS-response"
  "universal_msgs/SendHitBallLocationABSResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendHitBallLocationABS-response>)))
  "Returns md5sum for a message object of type '<SendHitBallLocationABS-response>"
  "e50c9458a00924d9c4c833a9c3c086a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendHitBallLocationABS-response)))
  "Returns md5sum for a message object of type 'SendHitBallLocationABS-response"
  "e50c9458a00924d9c4c833a9c3c086a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendHitBallLocationABS-response>)))
  "Returns full string definition for message of type '<SendHitBallLocationABS-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendHitBallLocationABS-response)))
  "Returns full string definition for message of type 'SendHitBallLocationABS-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendHitBallLocationABS-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendHitBallLocationABS-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendHitBallLocationABS-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendHitBallLocationABS)))
  'SendHitBallLocationABS-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendHitBallLocationABS)))
  'SendHitBallLocationABS-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendHitBallLocationABS)))
  "Returns string type for a service object of type '<SendHitBallLocationABS>"
  "universal_msgs/SendHitBallLocationABS")