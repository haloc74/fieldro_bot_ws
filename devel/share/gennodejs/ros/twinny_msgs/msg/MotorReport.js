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

class MotorReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.motor_driver_mode = null;
      this.left_status = null;
      this.right_status = null;
      this.left_NMT_status = null;
      this.right_NMT_status = null;
      this.left_current = null;
      this.right_current = null;
      this.left_peak_current = null;
      this.right_peak_current = null;
      this.motor_error_flag = null;
      this.left_drive_bridge_status = null;
      this.left_drive_protection_status = null;
      this.left_system_protection_status = null;
      this.left_drive_system_status1 = null;
      this.right_drive_bridge_status = null;
      this.right_drive_protection_status = null;
      this.right_system_protection_status = null;
      this.right_drive_system_status1 = null;
      this.drive_fault_flag = null;
      this.drive_fault_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('motor_driver_mode')) {
        this.motor_driver_mode = initObj.motor_driver_mode
      }
      else {
        this.motor_driver_mode = 0;
      }
      if (initObj.hasOwnProperty('left_status')) {
        this.left_status = initObj.left_status
      }
      else {
        this.left_status = 0;
      }
      if (initObj.hasOwnProperty('right_status')) {
        this.right_status = initObj.right_status
      }
      else {
        this.right_status = 0;
      }
      if (initObj.hasOwnProperty('left_NMT_status')) {
        this.left_NMT_status = initObj.left_NMT_status
      }
      else {
        this.left_NMT_status = 0;
      }
      if (initObj.hasOwnProperty('right_NMT_status')) {
        this.right_NMT_status = initObj.right_NMT_status
      }
      else {
        this.right_NMT_status = 0;
      }
      if (initObj.hasOwnProperty('left_current')) {
        this.left_current = initObj.left_current
      }
      else {
        this.left_current = 0;
      }
      if (initObj.hasOwnProperty('right_current')) {
        this.right_current = initObj.right_current
      }
      else {
        this.right_current = 0;
      }
      if (initObj.hasOwnProperty('left_peak_current')) {
        this.left_peak_current = initObj.left_peak_current
      }
      else {
        this.left_peak_current = 0;
      }
      if (initObj.hasOwnProperty('right_peak_current')) {
        this.right_peak_current = initObj.right_peak_current
      }
      else {
        this.right_peak_current = 0;
      }
      if (initObj.hasOwnProperty('motor_error_flag')) {
        this.motor_error_flag = initObj.motor_error_flag
      }
      else {
        this.motor_error_flag = 0;
      }
      if (initObj.hasOwnProperty('left_drive_bridge_status')) {
        this.left_drive_bridge_status = initObj.left_drive_bridge_status
      }
      else {
        this.left_drive_bridge_status = '';
      }
      if (initObj.hasOwnProperty('left_drive_protection_status')) {
        this.left_drive_protection_status = initObj.left_drive_protection_status
      }
      else {
        this.left_drive_protection_status = '';
      }
      if (initObj.hasOwnProperty('left_system_protection_status')) {
        this.left_system_protection_status = initObj.left_system_protection_status
      }
      else {
        this.left_system_protection_status = '';
      }
      if (initObj.hasOwnProperty('left_drive_system_status1')) {
        this.left_drive_system_status1 = initObj.left_drive_system_status1
      }
      else {
        this.left_drive_system_status1 = '';
      }
      if (initObj.hasOwnProperty('right_drive_bridge_status')) {
        this.right_drive_bridge_status = initObj.right_drive_bridge_status
      }
      else {
        this.right_drive_bridge_status = '';
      }
      if (initObj.hasOwnProperty('right_drive_protection_status')) {
        this.right_drive_protection_status = initObj.right_drive_protection_status
      }
      else {
        this.right_drive_protection_status = '';
      }
      if (initObj.hasOwnProperty('right_system_protection_status')) {
        this.right_system_protection_status = initObj.right_system_protection_status
      }
      else {
        this.right_system_protection_status = '';
      }
      if (initObj.hasOwnProperty('right_drive_system_status1')) {
        this.right_drive_system_status1 = initObj.right_drive_system_status1
      }
      else {
        this.right_drive_system_status1 = '';
      }
      if (initObj.hasOwnProperty('drive_fault_flag')) {
        this.drive_fault_flag = initObj.drive_fault_flag
      }
      else {
        this.drive_fault_flag = false;
      }
      if (initObj.hasOwnProperty('drive_fault_status')) {
        this.drive_fault_status = initObj.drive_fault_status
      }
      else {
        this.drive_fault_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [motor_driver_mode]
    bufferOffset = _serializer.uint16(obj.motor_driver_mode, buffer, bufferOffset);
    // Serialize message field [left_status]
    bufferOffset = _serializer.uint16(obj.left_status, buffer, bufferOffset);
    // Serialize message field [right_status]
    bufferOffset = _serializer.uint16(obj.right_status, buffer, bufferOffset);
    // Serialize message field [left_NMT_status]
    bufferOffset = _serializer.uint8(obj.left_NMT_status, buffer, bufferOffset);
    // Serialize message field [right_NMT_status]
    bufferOffset = _serializer.uint8(obj.right_NMT_status, buffer, bufferOffset);
    // Serialize message field [left_current]
    bufferOffset = _serializer.int16(obj.left_current, buffer, bufferOffset);
    // Serialize message field [right_current]
    bufferOffset = _serializer.int16(obj.right_current, buffer, bufferOffset);
    // Serialize message field [left_peak_current]
    bufferOffset = _serializer.int16(obj.left_peak_current, buffer, bufferOffset);
    // Serialize message field [right_peak_current]
    bufferOffset = _serializer.int16(obj.right_peak_current, buffer, bufferOffset);
    // Serialize message field [motor_error_flag]
    bufferOffset = _serializer.uint8(obj.motor_error_flag, buffer, bufferOffset);
    // Serialize message field [left_drive_bridge_status]
    bufferOffset = _serializer.string(obj.left_drive_bridge_status, buffer, bufferOffset);
    // Serialize message field [left_drive_protection_status]
    bufferOffset = _serializer.string(obj.left_drive_protection_status, buffer, bufferOffset);
    // Serialize message field [left_system_protection_status]
    bufferOffset = _serializer.string(obj.left_system_protection_status, buffer, bufferOffset);
    // Serialize message field [left_drive_system_status1]
    bufferOffset = _serializer.string(obj.left_drive_system_status1, buffer, bufferOffset);
    // Serialize message field [right_drive_bridge_status]
    bufferOffset = _serializer.string(obj.right_drive_bridge_status, buffer, bufferOffset);
    // Serialize message field [right_drive_protection_status]
    bufferOffset = _serializer.string(obj.right_drive_protection_status, buffer, bufferOffset);
    // Serialize message field [right_system_protection_status]
    bufferOffset = _serializer.string(obj.right_system_protection_status, buffer, bufferOffset);
    // Serialize message field [right_drive_system_status1]
    bufferOffset = _serializer.string(obj.right_drive_system_status1, buffer, bufferOffset);
    // Serialize message field [drive_fault_flag]
    bufferOffset = _serializer.bool(obj.drive_fault_flag, buffer, bufferOffset);
    // Serialize message field [drive_fault_status]
    bufferOffset = _serializer.uint16(obj.drive_fault_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorReport
    let len;
    let data = new MotorReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor_driver_mode]
    data.motor_driver_mode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [left_status]
    data.left_status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [right_status]
    data.right_status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [left_NMT_status]
    data.left_NMT_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right_NMT_status]
    data.right_NMT_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left_current]
    data.left_current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [right_current]
    data.right_current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [left_peak_current]
    data.left_peak_current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [right_peak_current]
    data.right_peak_current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motor_error_flag]
    data.motor_error_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left_drive_bridge_status]
    data.left_drive_bridge_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [left_drive_protection_status]
    data.left_drive_protection_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [left_system_protection_status]
    data.left_system_protection_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [left_drive_system_status1]
    data.left_drive_system_status1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [right_drive_bridge_status]
    data.right_drive_bridge_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [right_drive_protection_status]
    data.right_drive_protection_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [right_system_protection_status]
    data.right_system_protection_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [right_drive_system_status1]
    data.right_drive_system_status1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [drive_fault_flag]
    data.drive_fault_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [drive_fault_status]
    data.drive_fault_status = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.left_drive_bridge_status.length;
    length += object.left_drive_protection_status.length;
    length += object.left_system_protection_status.length;
    length += object.left_drive_system_status1.length;
    length += object.right_drive_bridge_status.length;
    length += object.right_drive_protection_status.length;
    length += object.right_system_protection_status.length;
    length += object.right_drive_system_status1.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/MotorReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe02ce809fad1b492fd33e316a77ebd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 current_factor=0.1
    
    uint8 ALARM=0
    uint8 CTRL_FAIL=1
    uint8 OVER_VOLT=2
    uint8 OVER_TEMP=3
    uint8 OVER_LOAD=4
    uint8 HALL_FAIL=5
    uint8 INV_VEL=6
    uint8 STALL=7
    
    uint16 motor_driver_mode
    
    uint16 left_status
    uint16 right_status
    uint8 left_NMT_status
    uint8 right_NMT_status
    
    int16 left_current
    int16 right_current
    int16 left_peak_current
    int16 right_peak_current
    
    uint8 motor_error_flag
    
    string left_drive_bridge_status
    string left_drive_protection_status
    string left_system_protection_status
    string left_drive_system_status1
    
    string right_drive_bridge_status
    string right_drive_protection_status
    string right_system_protection_status
    string right_drive_system_status1
    
    bool drive_fault_flag
    
    uint16 DRIVE_INTERNAL_ERROR = 1
    uint16 SHORT_CIRCUIT = 2
    uint16 CURRENT_OVERSHOOT = 4
    uint16 UNDER_VOLTAGE = 8
    uint16 OVER_VOLTAGE = 16
    uint16 DRIVE_OVER_TEMPERATURE = 32
    uint16 INVALID_HALL_STATE = 64
    uint16 MOTOR_OVER_TEMPERATURE = 128
    uint16 PHASE_DECTION_FAULT = 256
    uint16 FEEDBACK_SENSOR_ERROR = 512
    uint16 NODE_GUARDING = 1024
    
    uint16 drive_fault_status
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
    const resolved = new MotorReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.motor_driver_mode !== undefined) {
      resolved.motor_driver_mode = msg.motor_driver_mode;
    }
    else {
      resolved.motor_driver_mode = 0
    }

    if (msg.left_status !== undefined) {
      resolved.left_status = msg.left_status;
    }
    else {
      resolved.left_status = 0
    }

    if (msg.right_status !== undefined) {
      resolved.right_status = msg.right_status;
    }
    else {
      resolved.right_status = 0
    }

    if (msg.left_NMT_status !== undefined) {
      resolved.left_NMT_status = msg.left_NMT_status;
    }
    else {
      resolved.left_NMT_status = 0
    }

    if (msg.right_NMT_status !== undefined) {
      resolved.right_NMT_status = msg.right_NMT_status;
    }
    else {
      resolved.right_NMT_status = 0
    }

    if (msg.left_current !== undefined) {
      resolved.left_current = msg.left_current;
    }
    else {
      resolved.left_current = 0
    }

    if (msg.right_current !== undefined) {
      resolved.right_current = msg.right_current;
    }
    else {
      resolved.right_current = 0
    }

    if (msg.left_peak_current !== undefined) {
      resolved.left_peak_current = msg.left_peak_current;
    }
    else {
      resolved.left_peak_current = 0
    }

    if (msg.right_peak_current !== undefined) {
      resolved.right_peak_current = msg.right_peak_current;
    }
    else {
      resolved.right_peak_current = 0
    }

    if (msg.motor_error_flag !== undefined) {
      resolved.motor_error_flag = msg.motor_error_flag;
    }
    else {
      resolved.motor_error_flag = 0
    }

    if (msg.left_drive_bridge_status !== undefined) {
      resolved.left_drive_bridge_status = msg.left_drive_bridge_status;
    }
    else {
      resolved.left_drive_bridge_status = ''
    }

    if (msg.left_drive_protection_status !== undefined) {
      resolved.left_drive_protection_status = msg.left_drive_protection_status;
    }
    else {
      resolved.left_drive_protection_status = ''
    }

    if (msg.left_system_protection_status !== undefined) {
      resolved.left_system_protection_status = msg.left_system_protection_status;
    }
    else {
      resolved.left_system_protection_status = ''
    }

    if (msg.left_drive_system_status1 !== undefined) {
      resolved.left_drive_system_status1 = msg.left_drive_system_status1;
    }
    else {
      resolved.left_drive_system_status1 = ''
    }

    if (msg.right_drive_bridge_status !== undefined) {
      resolved.right_drive_bridge_status = msg.right_drive_bridge_status;
    }
    else {
      resolved.right_drive_bridge_status = ''
    }

    if (msg.right_drive_protection_status !== undefined) {
      resolved.right_drive_protection_status = msg.right_drive_protection_status;
    }
    else {
      resolved.right_drive_protection_status = ''
    }

    if (msg.right_system_protection_status !== undefined) {
      resolved.right_system_protection_status = msg.right_system_protection_status;
    }
    else {
      resolved.right_system_protection_status = ''
    }

    if (msg.right_drive_system_status1 !== undefined) {
      resolved.right_drive_system_status1 = msg.right_drive_system_status1;
    }
    else {
      resolved.right_drive_system_status1 = ''
    }

    if (msg.drive_fault_flag !== undefined) {
      resolved.drive_fault_flag = msg.drive_fault_flag;
    }
    else {
      resolved.drive_fault_flag = false
    }

    if (msg.drive_fault_status !== undefined) {
      resolved.drive_fault_status = msg.drive_fault_status;
    }
    else {
      resolved.drive_fault_status = 0
    }

    return resolved;
    }
};

// Constants for message
MotorReport.Constants = {
  CURRENT_FACTOR: 0.1,
  ALARM: 0,
  CTRL_FAIL: 1,
  OVER_VOLT: 2,
  OVER_TEMP: 3,
  OVER_LOAD: 4,
  HALL_FAIL: 5,
  INV_VEL: 6,
  STALL: 7,
  DRIVE_INTERNAL_ERROR: 1,
  SHORT_CIRCUIT: 2,
  CURRENT_OVERSHOOT: 4,
  UNDER_VOLTAGE: 8,
  OVER_VOLTAGE: 16,
  DRIVE_OVER_TEMPERATURE: 32,
  INVALID_HALL_STATE: 64,
  MOTOR_OVER_TEMPERATURE: 128,
  PHASE_DECTION_FAULT: 256,
  FEEDBACK_SENSOR_ERROR: 512,
  NODE_GUARDING: 1024,
}

module.exports = MotorReport;
