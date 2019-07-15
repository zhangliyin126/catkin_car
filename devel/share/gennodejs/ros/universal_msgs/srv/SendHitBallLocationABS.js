// Auto-generated. Do not edit!

// (in-package universal_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SendHitBallLocationABSRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coord = null;
    }
    else {
      if (initObj.hasOwnProperty('coord')) {
        this.coord = initObj.coord
      }
      else {
        this.coord = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendHitBallLocationABSRequest
    // Serialize message field [coord]
    bufferOffset = _arraySerializer.float64(obj.coord, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendHitBallLocationABSRequest
    let len;
    let data = new SendHitBallLocationABSRequest(null);
    // Deserialize message field [coord]
    data.coord = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.coord.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'universal_msgs/SendHitBallLocationABSRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a8680fa1e111dec9b1dbfc1af00ea9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] coord
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendHitBallLocationABSRequest(null);
    if (msg.coord !== undefined) {
      resolved.coord = msg.coord;
    }
    else {
      resolved.coord = []
    }

    return resolved;
    }
};

class SendHitBallLocationABSResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendHitBallLocationABSResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendHitBallLocationABSResponse
    let len;
    let data = new SendHitBallLocationABSResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'universal_msgs/SendHitBallLocationABSResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendHitBallLocationABSResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SendHitBallLocationABSRequest,
  Response: SendHitBallLocationABSResponse,
  md5sum() { return 'e50c9458a00924d9c4c833a9c3c086a0'; },
  datatype() { return 'universal_msgs/SendHitBallLocationABS'; }
};
