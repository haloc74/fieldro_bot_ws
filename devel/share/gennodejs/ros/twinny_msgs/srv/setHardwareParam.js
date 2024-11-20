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

class setHardwareParamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type setHardwareParamRequest
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type setHardwareParamRequest
    let len;
    let data = new setHardwareParamRequest(null);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/setHardwareParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '992ce8a1687cec8c8bd883ec73ca41d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string data                    # json 포멧으로 셋업 결과를 report
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new setHardwareParamRequest(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    return resolved;
    }
};

class setHardwareParamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success_flag = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('success_flag')) {
        this.success_flag = initObj.success_flag
      }
      else {
        this.success_flag = false;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type setHardwareParamResponse
    // Serialize message field [success_flag]
    bufferOffset = _serializer.bool(obj.success_flag, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type setHardwareParamResponse
    let len;
    let data = new setHardwareParamResponse(null);
    // Deserialize message field [success_flag]
    data.success_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/setHardwareParamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '483f758dfacb2bdfad002414e44c9cac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success_flag              # 셋업 성공시 success flag = true
    string data                    # 응답: 저장된 json 데이터
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new setHardwareParamResponse(null);
    if (msg.success_flag !== undefined) {
      resolved.success_flag = msg.success_flag;
    }
    else {
      resolved.success_flag = false
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: setHardwareParamRequest,
  Response: setHardwareParamResponse,
  md5sum() { return '01cf8f3fd0d9c08e7ae80062dcbc18f2'; },
  datatype() { return 'twinny_msgs/setHardwareParam'; }
};
