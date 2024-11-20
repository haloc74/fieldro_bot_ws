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

class MonitorMotorError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Motor_Number = null;
      this.Motor_drive_bridge_status = null;
      this.Motor_drive_protection_status = null;
      this.Motor_system_protection_status = null;
      this.Motor_drive_system_status = null;
      this.Motor_Error_Level = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Motor_Number')) {
        this.Motor_Number = initObj.Motor_Number
      }
      else {
        this.Motor_Number = 0;
      }
      if (initObj.hasOwnProperty('Motor_drive_bridge_status')) {
        this.Motor_drive_bridge_status = initObj.Motor_drive_bridge_status
      }
      else {
        this.Motor_drive_bridge_status = 0;
      }
      if (initObj.hasOwnProperty('Motor_drive_protection_status')) {
        this.Motor_drive_protection_status = initObj.Motor_drive_protection_status
      }
      else {
        this.Motor_drive_protection_status = 0;
      }
      if (initObj.hasOwnProperty('Motor_system_protection_status')) {
        this.Motor_system_protection_status = initObj.Motor_system_protection_status
      }
      else {
        this.Motor_system_protection_status = 0;
      }
      if (initObj.hasOwnProperty('Motor_drive_system_status')) {
        this.Motor_drive_system_status = initObj.Motor_drive_system_status
      }
      else {
        this.Motor_drive_system_status = 0;
      }
      if (initObj.hasOwnProperty('Motor_Error_Level')) {
        this.Motor_Error_Level = initObj.Motor_Error_Level
      }
      else {
        this.Motor_Error_Level = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonitorMotorError
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Motor_Number]
    bufferOffset = _serializer.uint8(obj.Motor_Number, buffer, bufferOffset);
    // Serialize message field [Motor_drive_bridge_status]
    bufferOffset = _serializer.uint16(obj.Motor_drive_bridge_status, buffer, bufferOffset);
    // Serialize message field [Motor_drive_protection_status]
    bufferOffset = _serializer.uint16(obj.Motor_drive_protection_status, buffer, bufferOffset);
    // Serialize message field [Motor_system_protection_status]
    bufferOffset = _serializer.uint16(obj.Motor_system_protection_status, buffer, bufferOffset);
    // Serialize message field [Motor_drive_system_status]
    bufferOffset = _serializer.uint16(obj.Motor_drive_system_status, buffer, bufferOffset);
    // Serialize message field [Motor_Error_Level]
    bufferOffset = _serializer.int8(obj.Motor_Error_Level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonitorMotorError
    let len;
    let data = new MonitorMotorError(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Motor_Number]
    data.Motor_Number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Motor_drive_bridge_status]
    data.Motor_drive_bridge_status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Motor_drive_protection_status]
    data.Motor_drive_protection_status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Motor_system_protection_status]
    data.Motor_system_protection_status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Motor_drive_system_status]
    data.Motor_drive_system_status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Motor_Error_Level]
    data.Motor_Error_Level = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/MonitorMotorError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32bee29b39aa81380c35de6c8643364c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    uint8 Motor_Number
    uint16 Motor_drive_bridge_status
    uint16 Motor_drive_protection_status
    uint16 Motor_system_protection_status
    uint16 Motor_drive_system_status
    
    int8 MOTOR_ERROR_LEVEL_HIGH=-3
    int8 MOTOR_ERROR_LEVEL_MIDDLE=-2
    int8 MOTOR_ERROR_LEVEL_LOW=-1
    int8 MOTOR_ERROR_LEVEL_NORMAL=0
    int8 MOTOR_ERROR_LEVEL_INVALID=-99
    int8 Motor_Error_Level
    
    
    
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
    const resolved = new MonitorMotorError(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Motor_Number !== undefined) {
      resolved.Motor_Number = msg.Motor_Number;
    }
    else {
      resolved.Motor_Number = 0
    }

    if (msg.Motor_drive_bridge_status !== undefined) {
      resolved.Motor_drive_bridge_status = msg.Motor_drive_bridge_status;
    }
    else {
      resolved.Motor_drive_bridge_status = 0
    }

    if (msg.Motor_drive_protection_status !== undefined) {
      resolved.Motor_drive_protection_status = msg.Motor_drive_protection_status;
    }
    else {
      resolved.Motor_drive_protection_status = 0
    }

    if (msg.Motor_system_protection_status !== undefined) {
      resolved.Motor_system_protection_status = msg.Motor_system_protection_status;
    }
    else {
      resolved.Motor_system_protection_status = 0
    }

    if (msg.Motor_drive_system_status !== undefined) {
      resolved.Motor_drive_system_status = msg.Motor_drive_system_status;
    }
    else {
      resolved.Motor_drive_system_status = 0
    }

    if (msg.Motor_Error_Level !== undefined) {
      resolved.Motor_Error_Level = msg.Motor_Error_Level;
    }
    else {
      resolved.Motor_Error_Level = 0
    }

    return resolved;
    }
};

// Constants for message
MonitorMotorError.Constants = {
  MOTOR_ERROR_LEVEL_HIGH: -3,
  MOTOR_ERROR_LEVEL_MIDDLE: -2,
  MOTOR_ERROR_LEVEL_LOW: -1,
  MOTOR_ERROR_LEVEL_NORMAL: 0,
  MOTOR_ERROR_LEVEL_INVALID: -99,
}

module.exports = MonitorMotorError;
