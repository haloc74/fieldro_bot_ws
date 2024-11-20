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

class PositionCompensatorCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.id = null;
      this.localized_line_A_x = null;
      this.localized_line_A_y = null;
      this.localized_line_B_x = null;
      this.localized_line_B_y = null;
      this.type = null;
      this.equipment_desired_x = null;
      this.equipment_desired_y = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('localized_line_A_x')) {
        this.localized_line_A_x = initObj.localized_line_A_x
      }
      else {
        this.localized_line_A_x = 0.0;
      }
      if (initObj.hasOwnProperty('localized_line_A_y')) {
        this.localized_line_A_y = initObj.localized_line_A_y
      }
      else {
        this.localized_line_A_y = 0.0;
      }
      if (initObj.hasOwnProperty('localized_line_B_x')) {
        this.localized_line_B_x = initObj.localized_line_B_x
      }
      else {
        this.localized_line_B_x = 0.0;
      }
      if (initObj.hasOwnProperty('localized_line_B_y')) {
        this.localized_line_B_y = initObj.localized_line_B_y
      }
      else {
        this.localized_line_B_y = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('equipment_desired_x')) {
        this.equipment_desired_x = initObj.equipment_desired_x
      }
      else {
        this.equipment_desired_x = 0.0;
      }
      if (initObj.hasOwnProperty('equipment_desired_y')) {
        this.equipment_desired_y = initObj.equipment_desired_y
      }
      else {
        this.equipment_desired_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionCompensatorCommandRequest
    // Serialize message field [command]
    bufferOffset = _serializer.int32(obj.command, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [localized_line_A_x]
    bufferOffset = _serializer.float64(obj.localized_line_A_x, buffer, bufferOffset);
    // Serialize message field [localized_line_A_y]
    bufferOffset = _serializer.float64(obj.localized_line_A_y, buffer, bufferOffset);
    // Serialize message field [localized_line_B_x]
    bufferOffset = _serializer.float64(obj.localized_line_B_x, buffer, bufferOffset);
    // Serialize message field [localized_line_B_y]
    bufferOffset = _serializer.float64(obj.localized_line_B_y, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [equipment_desired_x]
    bufferOffset = _serializer.float64(obj.equipment_desired_x, buffer, bufferOffset);
    // Serialize message field [equipment_desired_y]
    bufferOffset = _serializer.float64(obj.equipment_desired_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionCompensatorCommandRequest
    let len;
    let data = new PositionCompensatorCommandRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localized_line_A_x]
    data.localized_line_A_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [localized_line_A_y]
    data.localized_line_A_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [localized_line_B_x]
    data.localized_line_B_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [localized_line_B_y]
    data.localized_line_B_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [equipment_desired_x]
    data.equipment_desired_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [equipment_desired_y]
    data.equipment_desired_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/PositionCompensatorCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a1735ad405e3a523cd261b59cc6c1ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 START = 0
    int32 STOP = 1
    int32 command
    
    int32 id
    
    float64 localized_line_A_x
    float64 localized_line_A_y
    float64 localized_line_B_x
    float64 localized_line_B_y
    
    int32 HANA_MACHINE_LONG = 1
    int32 HANA_MACHINE_SHORT_SINGLE_EDGE = 2
    int32 HANA_STOCKER = 3
    int32 HANA_MACHINE_SHORT_DOUBLE_EDGE = 4
    int32 NEPESARK_SHELF = 5
    int32 type
    
    float64 equipment_desired_x
    float64 equipment_desired_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionCompensatorCommandRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.localized_line_A_x !== undefined) {
      resolved.localized_line_A_x = msg.localized_line_A_x;
    }
    else {
      resolved.localized_line_A_x = 0.0
    }

    if (msg.localized_line_A_y !== undefined) {
      resolved.localized_line_A_y = msg.localized_line_A_y;
    }
    else {
      resolved.localized_line_A_y = 0.0
    }

    if (msg.localized_line_B_x !== undefined) {
      resolved.localized_line_B_x = msg.localized_line_B_x;
    }
    else {
      resolved.localized_line_B_x = 0.0
    }

    if (msg.localized_line_B_y !== undefined) {
      resolved.localized_line_B_y = msg.localized_line_B_y;
    }
    else {
      resolved.localized_line_B_y = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.equipment_desired_x !== undefined) {
      resolved.equipment_desired_x = msg.equipment_desired_x;
    }
    else {
      resolved.equipment_desired_x = 0.0
    }

    if (msg.equipment_desired_y !== undefined) {
      resolved.equipment_desired_y = msg.equipment_desired_y;
    }
    else {
      resolved.equipment_desired_y = 0.0
    }

    return resolved;
    }
};

// Constants for message
PositionCompensatorCommandRequest.Constants = {
  START: 0,
  STOP: 1,
  HANA_MACHINE_LONG: 1,
  HANA_MACHINE_SHORT_SINGLE_EDGE: 2,
  HANA_STOCKER: 3,
  HANA_MACHINE_SHORT_DOUBLE_EDGE: 4,
  NEPESARK_SHELF: 5,
}

class PositionCompensatorCommandResponse {
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
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionCompensatorCommandResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionCompensatorCommandResponse
    let len;
    let data = new PositionCompensatorCommandResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/PositionCompensatorCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40e5817d267ae22e3d2f2cb90f71a2f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 SUCCESS = 1
    int32 NOT_READY = -1
    int32 WRONG_COMMAND = -99
    
    int32 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionCompensatorCommandResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

// Constants for message
PositionCompensatorCommandResponse.Constants = {
  SUCCESS: 1,
  NOT_READY: -1,
  WRONG_COMMAND: -99,
}

module.exports = {
  Request: PositionCompensatorCommandRequest,
  Response: PositionCompensatorCommandResponse,
  md5sum() { return '64c066ac648eab7e36cd5c86a14aa3c6'; },
  datatype() { return 'twinny_msgs/PositionCompensatorCommand'; }
};
