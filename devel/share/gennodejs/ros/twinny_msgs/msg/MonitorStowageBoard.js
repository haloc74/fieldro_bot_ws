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

class MonitorStowageBoard {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.pc_to_mcu_heartbeat_error = null;
      this.mcu_to_pc_heartbeat_hz = null;
      this.adc_ic_error = null;
      this.eeprom_error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = [];
      }
      if (initObj.hasOwnProperty('pc_to_mcu_heartbeat_error')) {
        this.pc_to_mcu_heartbeat_error = initObj.pc_to_mcu_heartbeat_error
      }
      else {
        this.pc_to_mcu_heartbeat_error = [];
      }
      if (initObj.hasOwnProperty('mcu_to_pc_heartbeat_hz')) {
        this.mcu_to_pc_heartbeat_hz = initObj.mcu_to_pc_heartbeat_hz
      }
      else {
        this.mcu_to_pc_heartbeat_hz = [];
      }
      if (initObj.hasOwnProperty('adc_ic_error')) {
        this.adc_ic_error = initObj.adc_ic_error
      }
      else {
        this.adc_ic_error = [];
      }
      if (initObj.hasOwnProperty('eeprom_error')) {
        this.eeprom_error = initObj.eeprom_error
      }
      else {
        this.eeprom_error = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonitorStowageBoard
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _arraySerializer.uint8(obj.id, buffer, bufferOffset, null);
    // Serialize message field [pc_to_mcu_heartbeat_error]
    bufferOffset = _arraySerializer.bool(obj.pc_to_mcu_heartbeat_error, buffer, bufferOffset, null);
    // Serialize message field [mcu_to_pc_heartbeat_hz]
    bufferOffset = _arraySerializer.uint8(obj.mcu_to_pc_heartbeat_hz, buffer, bufferOffset, null);
    // Serialize message field [adc_ic_error]
    bufferOffset = _arraySerializer.bool(obj.adc_ic_error, buffer, bufferOffset, null);
    // Serialize message field [eeprom_error]
    bufferOffset = _arraySerializer.bool(obj.eeprom_error, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonitorStowageBoard
    let len;
    let data = new MonitorStowageBoard(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [pc_to_mcu_heartbeat_error]
    data.pc_to_mcu_heartbeat_error = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [mcu_to_pc_heartbeat_hz]
    data.mcu_to_pc_heartbeat_hz = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [adc_ic_error]
    data.adc_ic_error = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [eeprom_error]
    data.eeprom_error = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.id.length;
    length += object.pc_to_mcu_heartbeat_error.length;
    length += object.mcu_to_pc_heartbeat_hz.length;
    length += object.adc_ic_error.length;
    length += object.eeprom_error.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/MonitorStowageBoard';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ae2271e02d73334e1713180840e83b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    uint8[] id
    bool[] pc_to_mcu_heartbeat_error
    uint8[] mcu_to_pc_heartbeat_hz
    bool[] adc_ic_error
    bool[] eeprom_error
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
    const resolved = new MonitorStowageBoard(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = []
    }

    if (msg.pc_to_mcu_heartbeat_error !== undefined) {
      resolved.pc_to_mcu_heartbeat_error = msg.pc_to_mcu_heartbeat_error;
    }
    else {
      resolved.pc_to_mcu_heartbeat_error = []
    }

    if (msg.mcu_to_pc_heartbeat_hz !== undefined) {
      resolved.mcu_to_pc_heartbeat_hz = msg.mcu_to_pc_heartbeat_hz;
    }
    else {
      resolved.mcu_to_pc_heartbeat_hz = []
    }

    if (msg.adc_ic_error !== undefined) {
      resolved.adc_ic_error = msg.adc_ic_error;
    }
    else {
      resolved.adc_ic_error = []
    }

    if (msg.eeprom_error !== undefined) {
      resolved.eeprom_error = msg.eeprom_error;
    }
    else {
      resolved.eeprom_error = []
    }

    return resolved;
    }
};

module.exports = MonitorStowageBoard;
