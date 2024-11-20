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

class MonitorVoltage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Power_Actual_3_3V_monitoring = null;
      this.Power_Actual_5V_monitoring = null;
      this.Power_Actual_12V_monitoring = null;
      this.Power_Actual_24V_monitoring = null;
      this.Robot_Actual_3_3V_monitoring = null;
      this.Robot_Actual_5V_monitoring = null;
      this.Robot_Actual_12V_monitoring = null;
      this.Robot_Actual_24V_monitoring = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Power_Actual_3_3V_monitoring')) {
        this.Power_Actual_3_3V_monitoring = initObj.Power_Actual_3_3V_monitoring
      }
      else {
        this.Power_Actual_3_3V_monitoring = 0.0;
      }
      if (initObj.hasOwnProperty('Power_Actual_5V_monitoring')) {
        this.Power_Actual_5V_monitoring = initObj.Power_Actual_5V_monitoring
      }
      else {
        this.Power_Actual_5V_monitoring = 0.0;
      }
      if (initObj.hasOwnProperty('Power_Actual_12V_monitoring')) {
        this.Power_Actual_12V_monitoring = initObj.Power_Actual_12V_monitoring
      }
      else {
        this.Power_Actual_12V_monitoring = 0.0;
      }
      if (initObj.hasOwnProperty('Power_Actual_24V_monitoring')) {
        this.Power_Actual_24V_monitoring = initObj.Power_Actual_24V_monitoring
      }
      else {
        this.Power_Actual_24V_monitoring = 0.0;
      }
      if (initObj.hasOwnProperty('Robot_Actual_3_3V_monitoring')) {
        this.Robot_Actual_3_3V_monitoring = initObj.Robot_Actual_3_3V_monitoring
      }
      else {
        this.Robot_Actual_3_3V_monitoring = 0.0;
      }
      if (initObj.hasOwnProperty('Robot_Actual_5V_monitoring')) {
        this.Robot_Actual_5V_monitoring = initObj.Robot_Actual_5V_monitoring
      }
      else {
        this.Robot_Actual_5V_monitoring = 0.0;
      }
      if (initObj.hasOwnProperty('Robot_Actual_12V_monitoring')) {
        this.Robot_Actual_12V_monitoring = initObj.Robot_Actual_12V_monitoring
      }
      else {
        this.Robot_Actual_12V_monitoring = 0.0;
      }
      if (initObj.hasOwnProperty('Robot_Actual_24V_monitoring')) {
        this.Robot_Actual_24V_monitoring = initObj.Robot_Actual_24V_monitoring
      }
      else {
        this.Robot_Actual_24V_monitoring = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonitorVoltage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Power_Actual_3_3V_monitoring]
    bufferOffset = _serializer.float64(obj.Power_Actual_3_3V_monitoring, buffer, bufferOffset);
    // Serialize message field [Power_Actual_5V_monitoring]
    bufferOffset = _serializer.float64(obj.Power_Actual_5V_monitoring, buffer, bufferOffset);
    // Serialize message field [Power_Actual_12V_monitoring]
    bufferOffset = _serializer.float64(obj.Power_Actual_12V_monitoring, buffer, bufferOffset);
    // Serialize message field [Power_Actual_24V_monitoring]
    bufferOffset = _serializer.float64(obj.Power_Actual_24V_monitoring, buffer, bufferOffset);
    // Serialize message field [Robot_Actual_3_3V_monitoring]
    bufferOffset = _serializer.float64(obj.Robot_Actual_3_3V_monitoring, buffer, bufferOffset);
    // Serialize message field [Robot_Actual_5V_monitoring]
    bufferOffset = _serializer.float64(obj.Robot_Actual_5V_monitoring, buffer, bufferOffset);
    // Serialize message field [Robot_Actual_12V_monitoring]
    bufferOffset = _serializer.float64(obj.Robot_Actual_12V_monitoring, buffer, bufferOffset);
    // Serialize message field [Robot_Actual_24V_monitoring]
    bufferOffset = _serializer.float64(obj.Robot_Actual_24V_monitoring, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonitorVoltage
    let len;
    let data = new MonitorVoltage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Power_Actual_3_3V_monitoring]
    data.Power_Actual_3_3V_monitoring = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Power_Actual_5V_monitoring]
    data.Power_Actual_5V_monitoring = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Power_Actual_12V_monitoring]
    data.Power_Actual_12V_monitoring = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Power_Actual_24V_monitoring]
    data.Power_Actual_24V_monitoring = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Robot_Actual_3_3V_monitoring]
    data.Robot_Actual_3_3V_monitoring = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Robot_Actual_5V_monitoring]
    data.Robot_Actual_5V_monitoring = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Robot_Actual_12V_monitoring]
    data.Robot_Actual_12V_monitoring = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Robot_Actual_24V_monitoring]
    data.Robot_Actual_24V_monitoring = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/MonitorVoltage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ded95860164e9591253c797ff59d9a16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    float64 Power_Actual_3_3V_monitoring
    float64 Power_Actual_5V_monitoring
    float64 Power_Actual_12V_monitoring
    float64 Power_Actual_24V_monitoring
    
    float64 Robot_Actual_3_3V_monitoring
    float64 Robot_Actual_5V_monitoring
    float64 Robot_Actual_12V_monitoring
    float64 Robot_Actual_24V_monitoring
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
    const resolved = new MonitorVoltage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Power_Actual_3_3V_monitoring !== undefined) {
      resolved.Power_Actual_3_3V_monitoring = msg.Power_Actual_3_3V_monitoring;
    }
    else {
      resolved.Power_Actual_3_3V_monitoring = 0.0
    }

    if (msg.Power_Actual_5V_monitoring !== undefined) {
      resolved.Power_Actual_5V_monitoring = msg.Power_Actual_5V_monitoring;
    }
    else {
      resolved.Power_Actual_5V_monitoring = 0.0
    }

    if (msg.Power_Actual_12V_monitoring !== undefined) {
      resolved.Power_Actual_12V_monitoring = msg.Power_Actual_12V_monitoring;
    }
    else {
      resolved.Power_Actual_12V_monitoring = 0.0
    }

    if (msg.Power_Actual_24V_monitoring !== undefined) {
      resolved.Power_Actual_24V_monitoring = msg.Power_Actual_24V_monitoring;
    }
    else {
      resolved.Power_Actual_24V_monitoring = 0.0
    }

    if (msg.Robot_Actual_3_3V_monitoring !== undefined) {
      resolved.Robot_Actual_3_3V_monitoring = msg.Robot_Actual_3_3V_monitoring;
    }
    else {
      resolved.Robot_Actual_3_3V_monitoring = 0.0
    }

    if (msg.Robot_Actual_5V_monitoring !== undefined) {
      resolved.Robot_Actual_5V_monitoring = msg.Robot_Actual_5V_monitoring;
    }
    else {
      resolved.Robot_Actual_5V_monitoring = 0.0
    }

    if (msg.Robot_Actual_12V_monitoring !== undefined) {
      resolved.Robot_Actual_12V_monitoring = msg.Robot_Actual_12V_monitoring;
    }
    else {
      resolved.Robot_Actual_12V_monitoring = 0.0
    }

    if (msg.Robot_Actual_24V_monitoring !== undefined) {
      resolved.Robot_Actual_24V_monitoring = msg.Robot_Actual_24V_monitoring;
    }
    else {
      resolved.Robot_Actual_24V_monitoring = 0.0
    }

    return resolved;
    }
};

module.exports = MonitorVoltage;
