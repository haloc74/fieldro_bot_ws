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

class Kinematics_ModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_mode = null;
      this.x = null;
      this.y = null;
      this.theta = null;
    }
    else {
      if (initObj.hasOwnProperty('input_mode')) {
        this.input_mode = initObj.input_mode
      }
      else {
        this.input_mode = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Kinematics_ModeRequest
    // Serialize message field [input_mode]
    bufferOffset = _serializer.uint8(obj.input_mode, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Kinematics_ModeRequest
    let len;
    let data = new Kinematics_ModeRequest(null);
    // Deserialize message field [input_mode]
    data.input_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/Kinematics_ModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88dc5723bd0c25a744933b153686c526';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 REQUEST_MODE=0
    uint8 MANUAL_MODE=1
    uint8 AUTO_MODE=2
    
    uint8 IO_RESET_POSE=3
    uint8 IO_SET_POSE=4
    
    uint8 SET_ROBOT_RADIUS=5
    uint8 SET_WHEEL_RADIUS=6
    uint8 SET_GEAR_RATIO=7
    
    uint8 input_mode
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Kinematics_ModeRequest(null);
    if (msg.input_mode !== undefined) {
      resolved.input_mode = msg.input_mode;
    }
    else {
      resolved.input_mode = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    return resolved;
    }
};

// Constants for message
Kinematics_ModeRequest.Constants = {
  REQUEST_MODE: 0,
  MANUAL_MODE: 1,
  AUTO_MODE: 2,
  IO_RESET_POSE: 3,
  IO_SET_POSE: 4,
  SET_ROBOT_RADIUS: 5,
  SET_WHEEL_RADIUS: 6,
  SET_GEAR_RATIO: 7,
}

class Kinematics_ModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_mode = null;
      this.current_arg = null;
    }
    else {
      if (initObj.hasOwnProperty('current_mode')) {
        this.current_mode = initObj.current_mode
      }
      else {
        this.current_mode = 0;
      }
      if (initObj.hasOwnProperty('current_arg')) {
        this.current_arg = initObj.current_arg
      }
      else {
        this.current_arg = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Kinematics_ModeResponse
    // Serialize message field [current_mode]
    bufferOffset = _serializer.uint8(obj.current_mode, buffer, bufferOffset);
    // Serialize message field [current_arg]
    bufferOffset = _serializer.float64(obj.current_arg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Kinematics_ModeResponse
    let len;
    let data = new Kinematics_ModeResponse(null);
    // Deserialize message field [current_mode]
    data.current_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current_arg]
    data.current_arg = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/Kinematics_ModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8767c226c94c53c8a28ce405bdd34c65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 current_mode
    float64 current_arg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Kinematics_ModeResponse(null);
    if (msg.current_mode !== undefined) {
      resolved.current_mode = msg.current_mode;
    }
    else {
      resolved.current_mode = 0
    }

    if (msg.current_arg !== undefined) {
      resolved.current_arg = msg.current_arg;
    }
    else {
      resolved.current_arg = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: Kinematics_ModeRequest,
  Response: Kinematics_ModeResponse,
  md5sum() { return '7998890966523349a389338408eec21f'; },
  datatype() { return 'twinny_msgs/Kinematics_Mode'; }
};
