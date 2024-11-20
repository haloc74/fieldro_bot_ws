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

class JoystickReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ON_flag = null;
      this.up_flag = null;
      this.up_right_flag = null;
      this.right_flag = null;
      this.down_right_flag = null;
      this.down_flag = null;
      this.down_left_flag = null;
      this.left_flag = null;
      this.up_left_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ON_flag')) {
        this.ON_flag = initObj.ON_flag
      }
      else {
        this.ON_flag = false;
      }
      if (initObj.hasOwnProperty('up_flag')) {
        this.up_flag = initObj.up_flag
      }
      else {
        this.up_flag = false;
      }
      if (initObj.hasOwnProperty('up_right_flag')) {
        this.up_right_flag = initObj.up_right_flag
      }
      else {
        this.up_right_flag = false;
      }
      if (initObj.hasOwnProperty('right_flag')) {
        this.right_flag = initObj.right_flag
      }
      else {
        this.right_flag = false;
      }
      if (initObj.hasOwnProperty('down_right_flag')) {
        this.down_right_flag = initObj.down_right_flag
      }
      else {
        this.down_right_flag = false;
      }
      if (initObj.hasOwnProperty('down_flag')) {
        this.down_flag = initObj.down_flag
      }
      else {
        this.down_flag = false;
      }
      if (initObj.hasOwnProperty('down_left_flag')) {
        this.down_left_flag = initObj.down_left_flag
      }
      else {
        this.down_left_flag = false;
      }
      if (initObj.hasOwnProperty('left_flag')) {
        this.left_flag = initObj.left_flag
      }
      else {
        this.left_flag = false;
      }
      if (initObj.hasOwnProperty('up_left_flag')) {
        this.up_left_flag = initObj.up_left_flag
      }
      else {
        this.up_left_flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JoystickReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ON_flag]
    bufferOffset = _serializer.bool(obj.ON_flag, buffer, bufferOffset);
    // Serialize message field [up_flag]
    bufferOffset = _serializer.bool(obj.up_flag, buffer, bufferOffset);
    // Serialize message field [up_right_flag]
    bufferOffset = _serializer.bool(obj.up_right_flag, buffer, bufferOffset);
    // Serialize message field [right_flag]
    bufferOffset = _serializer.bool(obj.right_flag, buffer, bufferOffset);
    // Serialize message field [down_right_flag]
    bufferOffset = _serializer.bool(obj.down_right_flag, buffer, bufferOffset);
    // Serialize message field [down_flag]
    bufferOffset = _serializer.bool(obj.down_flag, buffer, bufferOffset);
    // Serialize message field [down_left_flag]
    bufferOffset = _serializer.bool(obj.down_left_flag, buffer, bufferOffset);
    // Serialize message field [left_flag]
    bufferOffset = _serializer.bool(obj.left_flag, buffer, bufferOffset);
    // Serialize message field [up_left_flag]
    bufferOffset = _serializer.bool(obj.up_left_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JoystickReport
    let len;
    let data = new JoystickReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ON_flag]
    data.ON_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [up_flag]
    data.up_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [up_right_flag]
    data.up_right_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_flag]
    data.right_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [down_right_flag]
    data.down_right_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [down_flag]
    data.down_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [down_left_flag]
    data.down_left_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_flag]
    data.left_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [up_left_flag]
    data.up_left_flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/JoystickReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f4a780f53de1b487d4c703611a6ecdd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool ON_flag
    
    bool up_flag
    bool up_right_flag
    bool right_flag
    bool down_right_flag
    bool down_flag
    bool down_left_flag
    bool left_flag
    bool up_left_flag
    
    
    
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
    const resolved = new JoystickReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ON_flag !== undefined) {
      resolved.ON_flag = msg.ON_flag;
    }
    else {
      resolved.ON_flag = false
    }

    if (msg.up_flag !== undefined) {
      resolved.up_flag = msg.up_flag;
    }
    else {
      resolved.up_flag = false
    }

    if (msg.up_right_flag !== undefined) {
      resolved.up_right_flag = msg.up_right_flag;
    }
    else {
      resolved.up_right_flag = false
    }

    if (msg.right_flag !== undefined) {
      resolved.right_flag = msg.right_flag;
    }
    else {
      resolved.right_flag = false
    }

    if (msg.down_right_flag !== undefined) {
      resolved.down_right_flag = msg.down_right_flag;
    }
    else {
      resolved.down_right_flag = false
    }

    if (msg.down_flag !== undefined) {
      resolved.down_flag = msg.down_flag;
    }
    else {
      resolved.down_flag = false
    }

    if (msg.down_left_flag !== undefined) {
      resolved.down_left_flag = msg.down_left_flag;
    }
    else {
      resolved.down_left_flag = false
    }

    if (msg.left_flag !== undefined) {
      resolved.left_flag = msg.left_flag;
    }
    else {
      resolved.left_flag = false
    }

    if (msg.up_left_flag !== undefined) {
      resolved.up_left_flag = msg.up_left_flag;
    }
    else {
      resolved.up_left_flag = false
    }

    return resolved;
    }
};

module.exports = JoystickReport;
