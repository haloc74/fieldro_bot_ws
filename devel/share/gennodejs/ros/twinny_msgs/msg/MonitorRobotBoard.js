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

class MonitorRobotBoard {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Mode = null;
      this.motorErrorIndex = null;
      this.pc_to_mcu_heartbeat_hz = null;
      this.pc_to_mcu_heartbeat_error = null;
      this.motor_to_mcu_heartbeat_error = null;
      this.can_error = null;
      this.lin_error = null;
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
      if (initObj.hasOwnProperty('motorErrorIndex')) {
        this.motorErrorIndex = initObj.motorErrorIndex
      }
      else {
        this.motorErrorIndex = 0;
      }
      if (initObj.hasOwnProperty('pc_to_mcu_heartbeat_hz')) {
        this.pc_to_mcu_heartbeat_hz = initObj.pc_to_mcu_heartbeat_hz
      }
      else {
        this.pc_to_mcu_heartbeat_hz = 0;
      }
      if (initObj.hasOwnProperty('pc_to_mcu_heartbeat_error')) {
        this.pc_to_mcu_heartbeat_error = initObj.pc_to_mcu_heartbeat_error
      }
      else {
        this.pc_to_mcu_heartbeat_error = false;
      }
      if (initObj.hasOwnProperty('motor_to_mcu_heartbeat_error')) {
        this.motor_to_mcu_heartbeat_error = initObj.motor_to_mcu_heartbeat_error
      }
      else {
        this.motor_to_mcu_heartbeat_error = false;
      }
      if (initObj.hasOwnProperty('can_error')) {
        this.can_error = initObj.can_error
      }
      else {
        this.can_error = false;
      }
      if (initObj.hasOwnProperty('lin_error')) {
        this.lin_error = initObj.lin_error
      }
      else {
        this.lin_error = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonitorRobotBoard
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Mode]
    bufferOffset = _serializer.string(obj.Mode, buffer, bufferOffset);
    // Serialize message field [motorErrorIndex]
    bufferOffset = _serializer.uint8(obj.motorErrorIndex, buffer, bufferOffset);
    // Serialize message field [pc_to_mcu_heartbeat_hz]
    bufferOffset = _serializer.uint8(obj.pc_to_mcu_heartbeat_hz, buffer, bufferOffset);
    // Serialize message field [pc_to_mcu_heartbeat_error]
    bufferOffset = _serializer.bool(obj.pc_to_mcu_heartbeat_error, buffer, bufferOffset);
    // Serialize message field [motor_to_mcu_heartbeat_error]
    bufferOffset = _serializer.bool(obj.motor_to_mcu_heartbeat_error, buffer, bufferOffset);
    // Serialize message field [can_error]
    bufferOffset = _serializer.bool(obj.can_error, buffer, bufferOffset);
    // Serialize message field [lin_error]
    bufferOffset = _serializer.bool(obj.lin_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonitorRobotBoard
    let len;
    let data = new MonitorRobotBoard(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Mode]
    data.Mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [motorErrorIndex]
    data.motorErrorIndex = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pc_to_mcu_heartbeat_hz]
    data.pc_to_mcu_heartbeat_hz = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pc_to_mcu_heartbeat_error]
    data.pc_to_mcu_heartbeat_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_to_mcu_heartbeat_error]
    data.motor_to_mcu_heartbeat_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [can_error]
    data.can_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lin_error]
    data.lin_error = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.Mode.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/MonitorRobotBoard';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'feeef21295281612a29bf518f366cb43';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    string Mode 
    uint8 motorErrorIndex
    uint8 pc_to_mcu_heartbeat_hz
    bool pc_to_mcu_heartbeat_error
    bool motor_to_mcu_heartbeat_error
    bool can_error
    bool lin_error
    
    
    
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
    const resolved = new MonitorRobotBoard(null);
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

    if (msg.motorErrorIndex !== undefined) {
      resolved.motorErrorIndex = msg.motorErrorIndex;
    }
    else {
      resolved.motorErrorIndex = 0
    }

    if (msg.pc_to_mcu_heartbeat_hz !== undefined) {
      resolved.pc_to_mcu_heartbeat_hz = msg.pc_to_mcu_heartbeat_hz;
    }
    else {
      resolved.pc_to_mcu_heartbeat_hz = 0
    }

    if (msg.pc_to_mcu_heartbeat_error !== undefined) {
      resolved.pc_to_mcu_heartbeat_error = msg.pc_to_mcu_heartbeat_error;
    }
    else {
      resolved.pc_to_mcu_heartbeat_error = false
    }

    if (msg.motor_to_mcu_heartbeat_error !== undefined) {
      resolved.motor_to_mcu_heartbeat_error = msg.motor_to_mcu_heartbeat_error;
    }
    else {
      resolved.motor_to_mcu_heartbeat_error = false
    }

    if (msg.can_error !== undefined) {
      resolved.can_error = msg.can_error;
    }
    else {
      resolved.can_error = false
    }

    if (msg.lin_error !== undefined) {
      resolved.lin_error = msg.lin_error;
    }
    else {
      resolved.lin_error = false
    }

    return resolved;
    }
};

module.exports = MonitorRobotBoard;
