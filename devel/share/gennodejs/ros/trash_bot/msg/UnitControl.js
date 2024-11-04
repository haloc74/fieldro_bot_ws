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

class UnitControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_stamp = null;
      this.target_object = null;
      this.action = null;
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('target_object')) {
        this.target_object = initObj.target_object
      }
      else {
        this.target_object = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnitControl
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.time(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [target_object]
    bufferOffset = _serializer.int32(obj.target_object, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnitControl
    let len;
    let data = new UnitControl(null);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [target_object]
    data.target_object = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.command.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'trash_bot/UnitControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb3cb3b598c0c81e52aabe15081f3bd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    # 각 Unit에게 동작 요청하는 메세지 
    
    time  time_stamp        # 발행 시간 
    int32 target_object     # 대상 객체 (H/W Index Enum, unit_index.h)
    int32 action            # 명령 동작 Action Index , unit_action_index.h
    string command          # 명령 문자열 (ex. "start", "stop", "reset", "pause", "resume")
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnitControl(null);
    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = {secs: 0, nsecs: 0}
    }

    if (msg.target_object !== undefined) {
      resolved.target_object = msg.target_object;
    }
    else {
      resolved.target_object = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    return resolved;
    }
};

module.exports = UnitControl;
