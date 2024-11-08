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

class UnitStateMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.unit_id = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('unit_id')) {
        this.unit_id = initObj.unit_id
      }
      else {
        this.unit_id = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnitStateMsg
    // Serialize message field [unit_id]
    bufferOffset = _serializer.int32(obj.unit_id, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnitStateMsg
    let len;
    let data = new UnitStateMsg(null);
    // Deserialize message field [unit_id]
    data.unit_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'trash_bot/UnitStateMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7cd06622fe3c1b94199887fecbe639f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # 각 Unit이 현재의 상태를 보고 하는 Message
    int32 unit_id           # Unit ID
    int32 state             # 현재 상태 (UnitState index, unit_define.h)
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnitStateMsg(null);
    if (msg.unit_id !== undefined) {
      resolved.unit_id = msg.unit_id;
    }
    else {
      resolved.unit_id = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

module.exports = UnitStateMsg;
