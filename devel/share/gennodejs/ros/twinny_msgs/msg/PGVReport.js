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

class PGVReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.TagDetected = null;
      this.TagID = null;
      this.LineDetected = null;
      this.LineID = null;
      this.ControlDetected = null;
      this.ControlID = null;
      this.Fault = null;
      this.Warning = null;
      this.X = null;
      this.Y = null;
      this.theta = null;
      this.test_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('TagDetected')) {
        this.TagDetected = initObj.TagDetected
      }
      else {
        this.TagDetected = false;
      }
      if (initObj.hasOwnProperty('TagID')) {
        this.TagID = initObj.TagID
      }
      else {
        this.TagID = 0;
      }
      if (initObj.hasOwnProperty('LineDetected')) {
        this.LineDetected = initObj.LineDetected
      }
      else {
        this.LineDetected = 0;
      }
      if (initObj.hasOwnProperty('LineID')) {
        this.LineID = initObj.LineID
      }
      else {
        this.LineID = 0;
      }
      if (initObj.hasOwnProperty('ControlDetected')) {
        this.ControlDetected = initObj.ControlDetected
      }
      else {
        this.ControlDetected = false;
      }
      if (initObj.hasOwnProperty('ControlID')) {
        this.ControlID = initObj.ControlID
      }
      else {
        this.ControlID = 0;
      }
      if (initObj.hasOwnProperty('Fault')) {
        this.Fault = initObj.Fault
      }
      else {
        this.Fault = 0;
      }
      if (initObj.hasOwnProperty('Warning')) {
        this.Warning = initObj.Warning
      }
      else {
        this.Warning = 0;
      }
      if (initObj.hasOwnProperty('X')) {
        this.X = initObj.X
      }
      else {
        this.X = 0.0;
      }
      if (initObj.hasOwnProperty('Y')) {
        this.Y = initObj.Y
      }
      else {
        this.Y = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('test_cmd')) {
        this.test_cmd = initObj.test_cmd
      }
      else {
        this.test_cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PGVReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [TagDetected]
    bufferOffset = _serializer.bool(obj.TagDetected, buffer, bufferOffset);
    // Serialize message field [TagID]
    bufferOffset = _serializer.uint32(obj.TagID, buffer, bufferOffset);
    // Serialize message field [LineDetected]
    bufferOffset = _serializer.uint8(obj.LineDetected, buffer, bufferOffset);
    // Serialize message field [LineID]
    bufferOffset = _serializer.uint32(obj.LineID, buffer, bufferOffset);
    // Serialize message field [ControlDetected]
    bufferOffset = _serializer.bool(obj.ControlDetected, buffer, bufferOffset);
    // Serialize message field [ControlID]
    bufferOffset = _serializer.uint32(obj.ControlID, buffer, bufferOffset);
    // Serialize message field [Fault]
    bufferOffset = _serializer.int8(obj.Fault, buffer, bufferOffset);
    // Serialize message field [Warning]
    bufferOffset = _serializer.int8(obj.Warning, buffer, bufferOffset);
    // Serialize message field [X]
    bufferOffset = _serializer.float32(obj.X, buffer, bufferOffset);
    // Serialize message field [Y]
    bufferOffset = _serializer.float32(obj.Y, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [test_cmd]
    bufferOffset = _serializer.int8(obj.test_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PGVReport
    let len;
    let data = new PGVReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [TagDetected]
    data.TagDetected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TagID]
    data.TagID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [LineDetected]
    data.LineDetected = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LineID]
    data.LineID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ControlDetected]
    data.ControlDetected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ControlID]
    data.ControlID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Fault]
    data.Fault = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Warning]
    data.Warning = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [X]
    data.X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Y]
    data.Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [test_cmd]
    data.test_cmd = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/PGVReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34222d408912e06515bf5962c05f1613';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool TagDetected
    uint32 TagID
    
    uint8 LineDetected
    uint32 LineID
    
    bool ControlDetected
    uint32 ControlID
    
    int8 Fault
    int8 Warning
    
    float32 X
    float32 Y
    float32 theta
    
    int8 test_cmd
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
    const resolved = new PGVReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.TagDetected !== undefined) {
      resolved.TagDetected = msg.TagDetected;
    }
    else {
      resolved.TagDetected = false
    }

    if (msg.TagID !== undefined) {
      resolved.TagID = msg.TagID;
    }
    else {
      resolved.TagID = 0
    }

    if (msg.LineDetected !== undefined) {
      resolved.LineDetected = msg.LineDetected;
    }
    else {
      resolved.LineDetected = 0
    }

    if (msg.LineID !== undefined) {
      resolved.LineID = msg.LineID;
    }
    else {
      resolved.LineID = 0
    }

    if (msg.ControlDetected !== undefined) {
      resolved.ControlDetected = msg.ControlDetected;
    }
    else {
      resolved.ControlDetected = false
    }

    if (msg.ControlID !== undefined) {
      resolved.ControlID = msg.ControlID;
    }
    else {
      resolved.ControlID = 0
    }

    if (msg.Fault !== undefined) {
      resolved.Fault = msg.Fault;
    }
    else {
      resolved.Fault = 0
    }

    if (msg.Warning !== undefined) {
      resolved.Warning = msg.Warning;
    }
    else {
      resolved.Warning = 0
    }

    if (msg.X !== undefined) {
      resolved.X = msg.X;
    }
    else {
      resolved.X = 0.0
    }

    if (msg.Y !== undefined) {
      resolved.Y = msg.Y;
    }
    else {
      resolved.Y = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.test_cmd !== undefined) {
      resolved.test_cmd = msg.test_cmd;
    }
    else {
      resolved.test_cmd = 0
    }

    return resolved;
    }
};

module.exports = PGVReport;
