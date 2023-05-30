// Auto-generated. Do not edit!

// (in-package your_package.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TriangleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.A = null;
      this.B = null;
    }
    else {
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = 0.0;
      }
      if (initObj.hasOwnProperty('B')) {
        this.B = initObj.B
      }
      else {
        this.B = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TriangleRequest
    // Serialize message field [A]
    bufferOffset = _serializer.float32(obj.A, buffer, bufferOffset);
    // Serialize message field [B]
    bufferOffset = _serializer.float32(obj.B, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TriangleRequest
    let len;
    let data = new TriangleRequest(null);
    // Deserialize message field [A]
    data.A = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [B]
    data.B = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'your_package/TriangleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35e01614ccf662166c95dcdcb14e928c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 A
    float32 B
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TriangleRequest(null);
    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = 0.0
    }

    if (msg.B !== undefined) {
      resolved.B = msg.B;
    }
    else {
      resolved.B = 0.0
    }

    return resolved;
    }
};

class TriangleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TriangleResponse
    // Serialize message field [result]
    bufferOffset = _serializer.float32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TriangleResponse
    let len;
    let data = new TriangleResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'your_package/TriangleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db954e5de3aba73b237d07575e5cac28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TriangleResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: TriangleRequest,
  Response: TriangleResponse,
  md5sum() { return '16da0fba2ffd05912bc0c78d91df2ea2'; },
  datatype() { return 'your_package/Triangle'; }
};
