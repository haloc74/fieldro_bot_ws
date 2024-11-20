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

class MonitorPowerBoard {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Mode = null;
      this.voltage_flag = null;
      this.charge_current_flag = null;
      this.robot_power_on_mode = null;
      this.motor_relay_error = null;
      this.robot_power_relay_error = null;
      this.pc_switch_error = null;
      this.pc_boot_up_error = null;
      this.pc_boot_off_error = null;
      this.pc_down_error = null;
      this.charge_relay_error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Mode')) {
        this.Mode = initObj.Mode
      }
      else {
        this.Mode = '';
      }
      if (initObj.hasOwnProperty('voltage_flag')) {
        this.voltage_flag = initObj.voltage_flag
      }
      else {
        this.voltage_flag = '';
      }
      if (initObj.hasOwnProperty('charge_current_flag')) {
        this.charge_current_flag = initObj.charge_current_flag
      }
      else {
        this.charge_current_flag = '';
      }
      if (initObj.hasOwnProperty('robot_power_on_mode')) {
        this.robot_power_on_mode = initObj.robot_power_on_mode
      }
      else {
        this.robot_power_on_mode = '';
      }
      if (initObj.hasOwnProperty('motor_relay_error')) {
        this.motor_relay_error = initObj.motor_relay_error
      }
      else {
        this.motor_relay_error = false;
      }
      if (initObj.hasOwnProperty('robot_power_relay_error')) {
        this.robot_power_relay_error = initObj.robot_power_relay_error
      }
      else {
        this.robot_power_relay_error = false;
      }
      if (initObj.hasOwnProperty('pc_switch_error')) {
        this.pc_switch_error = initObj.pc_switch_error
      }
      else {
        this.pc_switch_error = false;
      }
      if (initObj.hasOwnProperty('pc_boot_up_error')) {
        this.pc_boot_up_error = initObj.pc_boot_up_error
      }
      else {
        this.pc_boot_up_error = false;
      }
      if (initObj.hasOwnProperty('pc_boot_off_error')) {
        this.pc_boot_off_error = initObj.pc_boot_off_error
      }
      else {
        this.pc_boot_off_error = false;
      }
      if (initObj.hasOwnProperty('pc_down_error')) {
        this.pc_down_error = initObj.pc_down_error
      }
      else {
        this.pc_down_error = false;
      }
      if (initObj.hasOwnProperty('charge_relay_error')) {
        this.charge_relay_error = initObj.charge_relay_error
      }
      else {
        this.charge_relay_error = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonitorPowerBoard
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Mode]
    bufferOffset = _serializer.string(obj.Mode, buffer, bufferOffset);
    // Serialize message field [voltage_flag]
    bufferOffset = _serializer.string(obj.voltage_flag, buffer, bufferOffset);
    // Serialize message field [charge_current_flag]
    bufferOffset = _serializer.string(obj.charge_current_flag, buffer, bufferOffset);
    // Serialize message field [robot_power_on_mode]
    bufferOffset = _serializer.string(obj.robot_power_on_mode, buffer, bufferOffset);
    // Serialize message field [motor_relay_error]
    bufferOffset = _serializer.bool(obj.motor_relay_error, buffer, bufferOffset);
    // Serialize message field [robot_power_relay_error]
    bufferOffset = _serializer.bool(obj.robot_power_relay_error, buffer, bufferOffset);
    // Serialize message field [pc_switch_error]
    bufferOffset = _serializer.bool(obj.pc_switch_error, buffer, bufferOffset);
    // Serialize message field [pc_boot_up_error]
    bufferOffset = _serializer.bool(obj.pc_boot_up_error, buffer, bufferOffset);
    // Serialize message field [pc_boot_off_error]
    bufferOffset = _serializer.bool(obj.pc_boot_off_error, buffer, bufferOffset);
    // Serialize message field [pc_down_error]
    bufferOffset = _serializer.bool(obj.pc_down_error, buffer, bufferOffset);
    // Serialize message field [charge_relay_error]
    bufferOffset = _serializer.bool(obj.charge_relay_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonitorPowerBoard
    let len;
    let data = new MonitorPowerBoard(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Mode]
    data.Mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [voltage_flag]
    data.voltage_flag = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [charge_current_flag]
    data.charge_current_flag = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_power_on_mode]
    data.robot_power_on_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [motor_relay_error]
    data.motor_relay_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [robot_power_relay_error]
    data.robot_power_relay_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pc_switch_error]
    data.pc_switch_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pc_boot_up_error]
    data.pc_boot_up_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pc_boot_off_error]
    data.pc_boot_off_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pc_down_error]
    data.pc_down_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [charge_relay_error]
    data.charge_relay_error = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.Mode.length;
    length += object.voltage_flag.length;
    length += object.charge_current_flag.length;
    length += object.robot_power_on_mode.length;
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/MonitorPowerBoard';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd786489e7a443dba4376961f64ea7161';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    string Mode
    
    string voltage_flag
    string charge_current_flag
    
    string robot_power_on_mode
    
    bool motor_relay_error
    bool robot_power_relay_error
    bool pc_switch_error
    bool pc_boot_up_error
    bool pc_boot_off_error
    bool pc_down_error
    bool charge_relay_error
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
    const resolved = new MonitorPowerBoard(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Mode !== undefined) {
      resolved.Mode = msg.Mode;
    }
    else {
      resolved.Mode = ''
    }

    if (msg.voltage_flag !== undefined) {
      resolved.voltage_flag = msg.voltage_flag;
    }
    else {
      resolved.voltage_flag = ''
    }

    if (msg.charge_current_flag !== undefined) {
      resolved.charge_current_flag = msg.charge_current_flag;
    }
    else {
      resolved.charge_current_flag = ''
    }

    if (msg.robot_power_on_mode !== undefined) {
      resolved.robot_power_on_mode = msg.robot_power_on_mode;
    }
    else {
      resolved.robot_power_on_mode = ''
    }

    if (msg.motor_relay_error !== undefined) {
      resolved.motor_relay_error = msg.motor_relay_error;
    }
    else {
      resolved.motor_relay_error = false
    }

    if (msg.robot_power_relay_error !== undefined) {
      resolved.robot_power_relay_error = msg.robot_power_relay_error;
    }
    else {
      resolved.robot_power_relay_error = false
    }

    if (msg.pc_switch_error !== undefined) {
      resolved.pc_switch_error = msg.pc_switch_error;
    }
    else {
      resolved.pc_switch_error = false
    }

    if (msg.pc_boot_up_error !== undefined) {
      resolved.pc_boot_up_error = msg.pc_boot_up_error;
    }
    else {
      resolved.pc_boot_up_error = false
    }

    if (msg.pc_boot_off_error !== undefined) {
      resolved.pc_boot_off_error = msg.pc_boot_off_error;
    }
    else {
      resolved.pc_boot_off_error = false
    }

    if (msg.pc_down_error !== undefined) {
      resolved.pc_down_error = msg.pc_down_error;
    }
    else {
      resolved.pc_down_error = false
    }

    if (msg.charge_relay_error !== undefined) {
      resolved.charge_relay_error = msg.charge_relay_error;
    }
    else {
      resolved.charge_relay_error = false
    }

    return resolved;
    }
};

module.exports = MonitorPowerBoard;
