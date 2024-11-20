// Auto-generated. Do not edit!

// (in-package twinny_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BatteryCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Charger_start_command = null;
      this.Docking_start_command = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Charger_start_command')) {
        this.Charger_start_command = initObj.Charger_start_command
      }
      else {
        this.Charger_start_command = 0;
      }
      if (initObj.hasOwnProperty('Docking_start_command')) {
        this.Docking_start_command = initObj.Docking_start_command
      }
      else {
        this.Docking_start_command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Charger_start_command]
    bufferOffset = _serializer.uint8(obj.Charger_start_command, buffer, bufferOffset);
    // Serialize message field [Docking_start_command]
    bufferOffset = _serializer.uint8(obj.Docking_start_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryCommand
    let len;
    let data = new BatteryCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Charger_start_command]
    data.Charger_start_command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Docking_start_command]
    data.Docking_start_command = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/BatteryCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc2720bd2873f6b3e7e414316c28d4d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 CHARGER_STOP = 0
    uint8 CHARGER_START = 1
    
    uint8 DOCKING_STOP = 0
    uint8 DOCKING_START =1
    
    uint8 Charger_start_command
    uint8 Docking_start_command
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Charger_start_command !== undefined) {
      resolved.Charger_start_command = msg.Charger_start_command;
    }
    else {
      resolved.Charger_start_command = 0
    }

    if (msg.Docking_start_command !== undefined) {
      resolved.Docking_start_command = msg.Docking_start_command;
    }
    else {
      resolved.Docking_start_command = 0
    }

    return resolved;
    }
};

// Constants for message
BatteryCommand.Constants = {
  CHARGER_STOP: 0,
  CHARGER_START: 1,
  DOCKING_STOP: 0,
  DOCKING_START: 1,
}

module.exports = BatteryCommand;
