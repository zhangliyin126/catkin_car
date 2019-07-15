// Auto-generated. Do not edit!

// (in-package universal_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Ball_Locations {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.number = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ball_Locations
    // Serialize message field [x]
    bufferOffset = _arraySerializer.int32(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.int32(obj.y, buffer, bufferOffset, null);
    // Serialize message field [number]
    bufferOffset = _arraySerializer.int32(obj.number, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ball_Locations
    let len;
    let data = new Ball_Locations(null);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [number]
    data.number = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.x.length;
    length += 4 * object.y.length;
    length += 4 * object.number.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'universal_msgs/Ball_Locations';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd76591bbd656c7519d60041cd4b0411';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] x
    int32[] y
    int32[] number
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ball_Locations(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = []
    }

    return resolved;
    }
};

module.exports = Ball_Locations;
