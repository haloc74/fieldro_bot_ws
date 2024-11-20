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

class PalletLiftCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PalletLiftCommand
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PalletLiftCommand
    let len;
    let data = new PalletLiftCommand(null);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.command.length;
    length += object.type.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/PalletLiftCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26fb3be129c5aec0fc705f9631d5551c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string SETTLE=settle
    string READY_TO_LOAD=ready_to_load
    string LOAD=load
    string READY_TO_UNLOAD=ready_to_unload
    string UNLOAD=unload
    
    string command
    string type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PalletLiftCommand(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    return resolved;
    }
};

// Constants for message
PalletLiftCommand.Constants = {
  SETTLE: 'settle',
  READY_TO_LOAD: 'ready_to_load',
  LOAD: 'load',
  READY_TO_UNLOAD: 'ready_to_unload',
  UNLOAD: 'unload',
}

module.exports = PalletLiftCommand;
