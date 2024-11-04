// Auto-generated. Do not edit!

// (in-package trash_bot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UnitActionComplete {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_stamp = null;
      this.receive_object = null;
      this.action_object = null;
      this.complete_action = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('receive_object')) {
        this.receive_object = initObj.receive_object
      }
      else {
        this.receive_object = 0;
      }
      if (initObj.hasOwnProperty('action_object')) {
        this.action_object = initObj.action_object
      }
      else {
        this.action_object = 0;
      }
      if (initObj.hasOwnProperty('complete_action')) {
        this.complete_action = initObj.complete_action
      }
      else {
        this.complete_action = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnitActionComplete
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.time(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [receive_object]
    bufferOffset = _serializer.int32(obj.receive_object, buffer, bufferOffset);
    // Serialize message field [action_object]
    bufferOffset = _serializer.int32(obj.action_object, buffer, bufferOffset);
    // Serialize message field [complete_action]
    bufferOffset = _serializer.int32(obj.complete_action, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnitActionComplete
    let len;
    let data = new UnitActionComplete(null);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [receive_object]
    data.receive_object = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [action_object]
    data.action_object = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [complete_action]
    data.complete_action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'trash_bot/UnitActionComplete';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8cfdf36b4b872dd50c9838483632d5fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    ## 각 구성 unit이 요청된 동작을 완료 시킨면 발생되는 메세지
    
    time  time_stamp        # 발행시간
    int32 receive_object    # 수신객체    (unit_index.h)
    int32 action_object     # 동작 객체   (unit_index.h)
    int32 complete_action   # 완료 동작   (unit_action_index.h)
    int32 error_code        # Error-Code  (error_code.h) 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnitActionComplete(null);
    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = {secs: 0, nsecs: 0}
    }

    if (msg.receive_object !== undefined) {
      resolved.receive_object = msg.receive_object;
    }
    else {
      resolved.receive_object = 0
    }

    if (msg.action_object !== undefined) {
      resolved.action_object = msg.action_object;
    }
    else {
      resolved.action_object = 0
    }

    if (msg.complete_action !== undefined) {
      resolved.complete_action = msg.complete_action;
    }
    else {
      resolved.complete_action = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    return resolved;
    }
};

module.exports = UnitActionComplete;
