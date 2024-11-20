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

class PowerRelayCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Motor_power_relay_control = null;
      this.PC_MCU_power_relay_control = null;
      this.Charger_start_command = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Motor_power_relay_control')) {
        this.Motor_power_relay_control = initObj.Motor_power_relay_control
      }
      else {
        this.Motor_power_relay_control = 0;
      }
      if (initObj.hasOwnProperty('PC_MCU_power_relay_control')) {
        this.PC_MCU_power_relay_control = initObj.PC_MCU_power_relay_control
      }
      else {
        this.PC_MCU_power_relay_control = 0;
      }
      if (initObj.hasOwnProperty('Charger_start_command')) {
        this.Charger_start_command = initObj.Charger_start_command
      }
      else {
        this.Charger_start_command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerRelayCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Motor_power_relay_control]
    bufferOffset = _serializer.uint8(obj.Motor_power_relay_control, buffer, bufferOffset);
    // Serialize message field [PC_MCU_power_relay_control]
    bufferOffset = _serializer.uint8(obj.PC_MCU_power_relay_control, buffer, bufferOffset);
    // Serialize message field [Charger_start_command]
    bufferOffset = _serializer.uint8(obj.Charger_start_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerRelayCommand
    let len;
    let data = new PowerRelayCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Motor_power_relay_control]
    data.Motor_power_relay_control = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [PC_MCU_power_relay_control]
    data.PC_MCU_power_relay_control = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Charger_start_command]
    data.Charger_start_command = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/PowerRelayCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c82c51a774f35c41519d2c48627f1d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    uint8 Motor_power_relay_control
    uint8 PC_MCU_power_relay_control
    uint8 Charger_start_command
    
    uint8 FORCED_OFF = 0
    uint8 ON = 1
    uint8 KEEP = 2
    
    uint8 CHARGER_OFF = 0
    uint8 CHARGER_ON = 1
    uint8 CHARGER_KEEP = 2
    
    uint8 MOTOR_RELAY_OFF = 0
    uint8 MOTOR_RELAY_ON = 1
    uint8 MOTOR_RELAY_KEEP = 2
    
    uint8 PC_MCU_RELAY_OFF = 0
    uint8 PC_MCU_RELAY_ON = 1
    uint8 PC_MCU_RELAY_KEEP = 2
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
    const resolved = new PowerRelayCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Motor_power_relay_control !== undefined) {
      resolved.Motor_power_relay_control = msg.Motor_power_relay_control;
    }
    else {
      resolved.Motor_power_relay_control = 0
    }

    if (msg.PC_MCU_power_relay_control !== undefined) {
      resolved.PC_MCU_power_relay_control = msg.PC_MCU_power_relay_control;
    }
    else {
      resolved.PC_MCU_power_relay_control = 0
    }

    if (msg.Charger_start_command !== undefined) {
      resolved.Charger_start_command = msg.Charger_start_command;
    }
    else {
      resolved.Charger_start_command = 0
    }

    return resolved;
    }
};

// Constants for message
PowerRelayCommand.Constants = {
  FORCED_OFF: 0,
  ON: 1,
  KEEP: 2,
  CHARGER_OFF: 0,
  CHARGER_ON: 1,
  CHARGER_KEEP: 2,
  MOTOR_RELAY_OFF: 0,
  MOTOR_RELAY_ON: 1,
  MOTOR_RELAY_KEEP: 2,
  PC_MCU_RELAY_OFF: 0,
  PC_MCU_RELAY_ON: 1,
  PC_MCU_RELAY_KEEP: 2,
}

module.exports = PowerRelayCommand;
