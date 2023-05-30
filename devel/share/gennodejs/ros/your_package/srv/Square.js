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

class SquareRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.A = null;
    }
    else {
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SquareRequest
    // Serialize message field [A]
    bufferOffset = _serializer.float32(obj.A, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SquareRequest
    let len;
    let data = new SquareRequest(null);
    // Deserialize message field [A]
    data.A = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'your_package/SquareRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86dc5e57feab1a2b50e6db6b5a647d08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 A
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SquareRequest(null);
    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = 0.0
    }

    return resolved;
    }
};

class SquareResponse {
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
    // Serializes a message object of type SquareResponse
    // Serialize message field [result]
    bufferOffset = _serializer.float32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SquareResponse
    let len;
    let data = new SquareResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'your_package/SquareResponse';
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
    const resolved = new SquareResponse(null);
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
  Request: SquareRequest,
  Response: SquareResponse,
  md5sum() { return '5679ee031be5856b91b9f28dfed8edff'; },
  datatype() { return 'your_package/Square'; }
};
