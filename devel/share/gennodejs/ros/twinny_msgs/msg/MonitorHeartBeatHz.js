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

class MonitorHeartBeatHz {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Motor_DriverA_Hz = null;
      this.Motor_DriverB_Hz = null;
      this.Motor_DriverC_Hz = null;
      this.Motor_DriverD_Hz = null;
      this.Motor_DriverE_Hz = null;
      this.Motor_DriverF_Hz = null;
      this.Motor_DriverG_Hz = null;
      this.Motor_DriverH_Hz = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Motor_DriverA_Hz')) {
        this.Motor_DriverA_Hz = initObj.Motor_DriverA_Hz
      }
      else {
        this.Motor_DriverA_Hz = 0;
      }
      if (initObj.hasOwnProperty('Motor_DriverB_Hz')) {
        this.Motor_DriverB_Hz = initObj.Motor_DriverB_Hz
      }
      else {
        this.Motor_DriverB_Hz = 0;
      }
      if (initObj.hasOwnProperty('Motor_DriverC_Hz')) {
        this.Motor_DriverC_Hz = initObj.Motor_DriverC_Hz
      }
      else {
        this.Motor_DriverC_Hz = 0;
      }
      if (initObj.hasOwnProperty('Motor_DriverD_Hz')) {
        this.Motor_DriverD_Hz = initObj.Motor_DriverD_Hz
      }
      else {
        this.Motor_DriverD_Hz = 0;
      }
      if (initObj.hasOwnProperty('Motor_DriverE_Hz')) {
        this.Motor_DriverE_Hz = initObj.Motor_DriverE_Hz
      }
      else {
        this.Motor_DriverE_Hz = 0;
      }
      if (initObj.hasOwnProperty('Motor_DriverF_Hz')) {
        this.Motor_DriverF_Hz = initObj.Motor_DriverF_Hz
      }
      else {
        this.Motor_DriverF_Hz = 0;
      }
      if (initObj.hasOwnProperty('Motor_DriverG_Hz')) {
        this.Motor_DriverG_Hz = initObj.Motor_DriverG_Hz
      }
      else {
        this.Motor_DriverG_Hz = 0;
      }
      if (initObj.hasOwnProperty('Motor_DriverH_Hz')) {
        this.Motor_DriverH_Hz = initObj.Motor_DriverH_Hz
      }
      else {
        this.Motor_DriverH_Hz = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonitorHeartBeatHz
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Motor_DriverA_Hz]
    bufferOffset = _serializer.uint8(obj.Motor_DriverA_Hz, buffer, bufferOffset);
    // Serialize message field [Motor_DriverB_Hz]
    bufferOffset = _serializer.uint8(obj.Motor_DriverB_Hz, buffer, bufferOffset);
    // Serialize message field [Motor_DriverC_Hz]
    bufferOffset = _serializer.uint8(obj.Motor_DriverC_Hz, buffer, bufferOffset);
    // Serialize message field [Motor_DriverD_Hz]
    bufferOffset = _serializer.uint8(obj.Motor_DriverD_Hz, buffer, bufferOffset);
    // Serialize message field [Motor_DriverE_Hz]
    bufferOffset = _serializer.uint8(obj.Motor_DriverE_Hz, buffer, bufferOffset);
    // Serialize message field [Motor_DriverF_Hz]
    bufferOffset = _serializer.uint8(obj.Motor_DriverF_Hz, buffer, bufferOffset);
    // Serialize message field [Motor_DriverG_Hz]
    bufferOffset = _serializer.uint8(obj.Motor_DriverG_Hz, buffer, bufferOffset);
    // Serialize message field [Motor_DriverH_Hz]
    bufferOffset = _serializer.uint8(obj.Motor_DriverH_Hz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonitorHeartBeatHz
    let len;
    let data = new MonitorHeartBeatHz(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Motor_DriverA_Hz]
    data.Motor_DriverA_Hz = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Motor_DriverB_Hz]
    data.Motor_DriverB_Hz = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Motor_DriverC_Hz]
    data.Motor_DriverC_Hz = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Motor_DriverD_Hz]
    data.Motor_DriverD_Hz = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Motor_DriverE_Hz]
    data.Motor_DriverE_Hz = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Motor_DriverF_Hz]
    data.Motor_DriverF_Hz = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Motor_DriverG_Hz]
    data.Motor_DriverG_Hz = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Motor_DriverH_Hz]
    data.Motor_DriverH_Hz = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/MonitorHeartBeatHz';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e75bac3d8efef67e052259a96f13d33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    uint8 Motor_DriverA_Hz
    uint8 Motor_DriverB_Hz
    uint8 Motor_DriverC_Hz
    uint8 Motor_DriverD_Hz
    uint8 Motor_DriverE_Hz
    uint8 Motor_DriverF_Hz
    uint8 Motor_DriverG_Hz
    uint8 Motor_DriverH_Hz
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
    const resolved = new MonitorHeartBeatHz(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Motor_DriverA_Hz !== undefined) {
      resolved.Motor_DriverA_Hz = msg.Motor_DriverA_Hz;
    }
    else {
      resolved.Motor_DriverA_Hz = 0
    }

    if (msg.Motor_DriverB_Hz !== undefined) {
      resolved.Motor_DriverB_Hz = msg.Motor_DriverB_Hz;
    }
    else {
      resolved.Motor_DriverB_Hz = 0
    }

    if (msg.Motor_DriverC_Hz !== undefined) {
      resolved.Motor_DriverC_Hz = msg.Motor_DriverC_Hz;
    }
    else {
      resolved.Motor_DriverC_Hz = 0
    }

    if (msg.Motor_DriverD_Hz !== undefined) {
      resolved.Motor_DriverD_Hz = msg.Motor_DriverD_Hz;
    }
    else {
      resolved.Motor_DriverD_Hz = 0
    }

    if (msg.Motor_DriverE_Hz !== undefined) {
      resolved.Motor_DriverE_Hz = msg.Motor_DriverE_Hz;
    }
    else {
      resolved.Motor_DriverE_Hz = 0
    }

    if (msg.Motor_DriverF_Hz !== undefined) {
      resolved.Motor_DriverF_Hz = msg.Motor_DriverF_Hz;
    }
    else {
      resolved.Motor_DriverF_Hz = 0
    }

    if (msg.Motor_DriverG_Hz !== undefined) {
      resolved.Motor_DriverG_Hz = msg.Motor_DriverG_Hz;
    }
    else {
      resolved.Motor_DriverG_Hz = 0
    }

    if (msg.Motor_DriverH_Hz !== undefined) {
      resolved.Motor_DriverH_Hz = msg.Motor_DriverH_Hz;
    }
    else {
      resolved.Motor_DriverH_Hz = 0
    }

    return resolved;
    }
};

module.exports = MonitorHeartBeatHz;
