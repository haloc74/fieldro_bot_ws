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

class MD_ModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_mode = null;
      this.argument = null;
    }
    else {
      if (initObj.hasOwnProperty('input_mode')) {
        this.input_mode = initObj.input_mode
      }
      else {
        this.input_mode = 0;
      }
      if (initObj.hasOwnProperty('argument')) {
        this.argument = initObj.argument
      }
      else {
        this.argument = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MD_ModeRequest
    // Serialize message field [input_mode]
    bufferOffset = _serializer.uint8(obj.input_mode, buffer, bufferOffset);
    // Serialize message field [argument]
    bufferOffset = _serializer.uint8(obj.argument, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MD_ModeRequest
    let len;
    let data = new MD_ModeRequest(null);
    // Deserialize message field [input_mode]
    data.input_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [argument]
    data.argument = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/MD_ModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5daa3d274eda4fc00af770984f80415';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NORMAL_MODE=0
    uint8 TORQUE_FREE=1
    uint8 BRAKING=2
    uint8 ERROR=3
    uint8 SETTING=4
    
    uint8 input_mode
    uint8 argument
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MD_ModeRequest(null);
    if (msg.input_mode !== undefined) {
      resolved.input_mode = msg.input_mode;
    }
    else {
      resolved.input_mode = 0
    }

    if (msg.argument !== undefined) {
      resolved.argument = msg.argument;
    }
    else {
      resolved.argument = 0
    }

    return resolved;
    }
};

// Constants for message
MD_ModeRequest.Constants = {
  NORMAL_MODE: 0,
  TORQUE_FREE: 1,
  BRAKING: 2,
  ERROR: 3,
  SETTING: 4,
}

class MD_ModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_mode = null;
      this.current_error = null;
    }
    else {
      if (initObj.hasOwnProperty('current_mode')) {
        this.current_mode = initObj.current_mode
      }
      else {
        this.current_mode = 0;
      }
      if (initObj.hasOwnProperty('current_error')) {
        this.current_error = initObj.current_error
      }
      else {
        this.current_error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MD_ModeResponse
    // Serialize message field [current_mode]
    bufferOffset = _serializer.uint8(obj.current_mode, buffer, bufferOffset);
    // Serialize message field [current_error]
    bufferOffset = _serializer.uint8(obj.current_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MD_ModeResponse
    let len;
    let data = new MD_ModeResponse(null);
    // Deserialize message field [current_mode]
    data.current_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current_error]
    data.current_error = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/MD_ModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '72e1d45a7d2f1f213b79a7544e47751e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 current_mode
    uint8 current_error
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MD_ModeResponse(null);
    if (msg.current_mode !== undefined) {
      resolved.current_mode = msg.current_mode;
    }
    else {
      resolved.current_mode = 0
    }

    if (msg.current_error !== undefined) {
      resolved.current_error = msg.current_error;
    }
    else {
      resolved.current_error = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: MD_ModeRequest,
  Response: MD_ModeResponse,
  md5sum() { return '31fbd060b8f49cd4b847897a2ec4ef55'; },
  datatype() { return 'twinny_msgs/MD_Mode'; }
};
