; Auto-generated. Do not edit!


(cl:in-package universal_msgs-srv)


;//! \htmlinclude Trash_Location-request.msg.html

(cl:defclass <Trash_Location-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass Trash_Location-request (<Trash_Location-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trash_Location-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trash_Location-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name universal_msgs-srv:<Trash_Location-request> is deprecated: use universal_msgs-srv:Trash_Location-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Trash_Location-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader universal_msgs-srv:x-val is deprecated.  Use universal_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Trash_Location-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader universal_msgs-srv:y-val is deprecated.  Use universal_msgs-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trash_Location-request>) ostream)
  "Serializes a message object of type '<Trash_Location-request>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trash_Location-request>) istream)
  "Deserializes a message object of type '<Trash_Location-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trash_Location-request>)))
  "Returns string type for a service object of type '<Trash_Location-request>"
  "universal_msgs/Trash_LocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trash_Location-request)))
  "Returns string type for a service object of type 'Trash_Location-request"
  "universal_msgs/Trash_LocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trash_Location-request>)))
  "Returns md5sum for a message object of type '<Trash_Location-request>"
  "297290d6ee8d47376b41d0866bb23c06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trash_Location-request)))
  "Returns md5sum for a message object of type 'Trash_Location-request"
  "297290d6ee8d47376b41d0866bb23c06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trash_Location-request>)))
  "Returns full string definition for message of type '<Trash_Location-request>"
  (cl:format cl:nil "int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trash_Location-request)))
  "Returns full string definition for message of type 'Trash_Location-request"
  (cl:format cl:nil "int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trash_Location-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trash_Location-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Trash_Location-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude Trash_Location-response.msg.html

(cl:defclass <Trash_Location-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Trash_Location-response (<Trash_Location-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trash_Location-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trash_Location-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name universal_msgs-srv:<Trash_Location-response> is deprecated: use universal_msgs-srv:Trash_Location-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Trash_Location-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader universal_msgs-srv:success-val is deprecated.  Use universal_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trash_Location-response>) ostream)
  "Serializes a message object of type '<Trash_Location-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trash_Location-response>) istream)
  "Deserializes a message object of type '<Trash_Location-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trash_Location-response>)))
  "Returns string type for a service object of type '<Trash_Location-response>"
  "universal_msgs/Trash_LocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trash_Location-response)))
  "Returns string type for a service object of type 'Trash_Location-response"
  "universal_msgs/Trash_LocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trash_Location-response>)))
  "Returns md5sum for a message object of type '<Trash_Location-response>"
  "297290d6ee8d47376b41d0866bb23c06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trash_Location-response)))
  "Returns md5sum for a message object of type 'Trash_Location-response"
  "297290d6ee8d47376b41d0866bb23c06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trash_Location-response>)))
  "Returns full string definition for message of type '<Trash_Location-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trash_Location-response)))
  "Returns full string definition for message of type 'Trash_Location-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trash_Location-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trash_Location-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Trash_Location-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Trash_Location)))
  'Trash_Location-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Trash_Location)))
  'Trash_Location-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trash_Location)))
  "Returns string type for a service object of type '<Trash_Location>"
  "universal_msgs/Trash_Location")