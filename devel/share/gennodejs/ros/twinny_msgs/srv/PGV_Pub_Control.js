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

class PGV_Pub_ControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cnt = null;
    }
    else {
      if (initObj.hasOwnProperty('cnt')) {
        this.cnt = initObj.cnt
      }
      else {
        this.cnt = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PGV_Pub_ControlRequest
    // Serialize message field [cnt]
    bufferOffset = _serializer.int32(obj.cnt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PGV_Pub_ControlRequest
    let len;
    let data = new PGV_Pub_ControlRequest(null);
    // Deserialize message field [cnt]
    data.cnt = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/PGV_Pub_ControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c240d5cef53d2e30e78dfd2f8329070';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 cnt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PGV_Pub_ControlRequest(null);
    if (msg.cnt !== undefined) {
      resolved.cnt = msg.cnt;
    }
    else {
      resolved.cnt = 0
    }

    return resolved;
    }
};

class PGV_Pub_ControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ack = null;
    }
    else {
      if (initObj.hasOwnProperty('ack')) {
        this.ack = initObj.ack
      }
      else {
        this.ack = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PGV_Pub_ControlResponse
    // Serialize message field [ack]
    bufferOffset = _serializer.bool(obj.ack, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PGV_Pub_ControlResponse
    let len;
    let data = new PGV_Pub_ControlResponse(null);
    // Deserialize message field [ack]
    data.ack = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/PGV_Pub_ControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f5729177853f34b146e2e57766d4dc2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ack
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PGV_Pub_ControlResponse(null);
    if (msg.ack !== undefined) {
      resolved.ack = msg.ack;
    }
    else {
      resolved.ack = false
    }

    return resolved;
    }
};

module.exports = {
  Request: PGV_Pub_ControlRequest,
  Response: PGV_Pub_ControlResponse,
  md5sum() { return 'd818899d86a02c4f5208ad53722b29ab'; },
  datatype() { return 'twinny_msgs/PGV_Pub_Control'; }
};
