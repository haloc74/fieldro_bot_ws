// Auto-generated. Do not edit!

// (in-package twinny_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PlcAdditionalCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.additional_command = null;
    }
    else {
      if (initObj.hasOwnProperty('additional_command')) {
        this.additional_command = initObj.additional_command
      }
      else {
        this.additional_command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlcAdditionalCommand
    // Serialize message field [additional_command]
    bufferOffset = _serializer.uint32(obj.additional_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlcAdditionalCommand
    let len;
    let data = new PlcAdditionalCommand(null);
    // Deserialize message field [additional_command]
    data.additional_command = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/PlcAdditionalCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5c07594b5c15ce708f5c56e70ab299e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 additional_command
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlcAdditionalCommand(null);
    if (msg.additional_command !== undefined) {
      resolved.additional_command = msg.additional_command;
    }
    else {
      resolved.additional_command = 0
    }

    return resolved;
    }
};

module.exports = PlcAdditionalCommand;
