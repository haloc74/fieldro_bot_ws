// Auto-generated. Do not edit!

// (in-package twinny_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ResetKalmanFilterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResetKalmanFilterRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetKalmanFilterRequest
    let len;
    let data = new ResetKalmanFilterRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/ResetKalmanFilterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResetKalmanFilterRequest(null);
    return resolved;
    }
};

class ResetKalmanFilterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResetKalmanFilterResponse
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetKalmanFilterResponse
    let len;
    let data = new ResetKalmanFilterResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/ResetKalmanFilterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c52dd7ca4d559768802719a649d3a8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 state
    
    int32 SUCCESS=1
    int32 NOT_PERMIT_IN_DISABLE_MODE=-2
    int32 UNKNOWN_ERROR=-404
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResetKalmanFilterResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
ResetKalmanFilterResponse.Constants = {
  SUCCESS: 1,
  NOT_PERMIT_IN_DISABLE_MODE: -2,
  UNKNOWN_ERROR: -404,
}

module.exports = {
  Request: ResetKalmanFilterRequest,
  Response: ResetKalmanFilterResponse,
  md5sum() { return '6c52dd7ca4d559768802719a649d3a8a'; },
  datatype() { return 'twinny_msgs/ResetKalmanFilter'; }
};
