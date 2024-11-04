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

class IOSignal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_stamp = null;
      this.signal_bit = null;
    }
    else {
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('signal_bit')) {
        this.signal_bit = initObj.signal_bit
      }
      else {
        this.signal_bit = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOSignal
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.time(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [signal_bit]
    bufferOffset = _serializer.int64(obj.signal_bit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOSignal
    let len;
    let data = new IOSignal(null);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [signal_bit]
    data.signal_bit = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'trash_bot/IOSignal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b2bc2f69e0aff659bc5c2a1a7f822b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    time time_stamp     # Message 발행 시간 (ros::Time)
    int64 signal_bit    # Total Signal Value (bit operation)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IOSignal(null);
    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = {secs: 0, nsecs: 0}
    }

    if (msg.signal_bit !== undefined) {
      resolved.signal_bit = msg.signal_bit;
    }
    else {
      resolved.signal_bit = 0
    }

    return resolved;
    }
};

module.exports = IOSignal;
