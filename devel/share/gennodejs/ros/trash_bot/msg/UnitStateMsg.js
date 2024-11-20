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
      this.alive = null;
      this.states = null;
    }
    else {
      if (initObj.hasOwnProperty('alive')) {
        this.alive = initObj.alive
      }
      else {
        this.alive = 0;
      }
      if (initObj.hasOwnProperty('states')) {
        this.states = initObj.states
      }
      else {
        this.states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnitStateMsg
    // Serialize message field [alive]
    bufferOffset = _serializer.int32(obj.alive, buffer, bufferOffset);
    // Serialize message field [states]
    bufferOffset = _arraySerializer.int32(obj.states, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnitStateMsg
    let len;
    let data = new UnitStateMsg(null);
    // Deserialize message field [alive]
    data.alive = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [states]
    data.states = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.states.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'trash_bot/UnitStateMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '090390084faae6402e136d50389ae081';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # UnitStateMsg.msg
    
    # bit flag를 통해 각 unit index와 1:1 매칭된다.
    # 0:alive , 1:dead or timeout
    int32 alive
    
    # Array for unit states
    int32[] states
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnitStateMsg(null);
    if (msg.alive !== undefined) {
      resolved.alive = msg.alive;
    }
    else {
      resolved.alive = 0
    }

    if (msg.states !== undefined) {
      resolved.states = msg.states;
    }
    else {
      resolved.states = []
    }

    return resolved;
    }
};

module.exports = UnitStateMsg;
