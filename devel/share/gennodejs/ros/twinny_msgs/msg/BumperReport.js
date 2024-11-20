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

class BumperReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.bumper_flag = null;
      this.left_bumper = null;
      this.mid_bumper = null;
      this.right_bumper = null;
      this.back_bumper = null;
      this.sub1_bumper = null;
      this.sub2_bumper = null;
      this.sub3_bumper = null;
      this.sub4_bumper = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('bumper_flag')) {
        this.bumper_flag = initObj.bumper_flag
      }
      else {
        this.bumper_flag = false;
      }
      if (initObj.hasOwnProperty('left_bumper')) {
        this.left_bumper = initObj.left_bumper
      }
      else {
        this.left_bumper = false;
      }
      if (initObj.hasOwnProperty('mid_bumper')) {
        this.mid_bumper = initObj.mid_bumper
      }
      else {
        this.mid_bumper = false;
      }
      if (initObj.hasOwnProperty('right_bumper')) {
        this.right_bumper = initObj.right_bumper
      }
      else {
        this.right_bumper = false;
      }
      if (initObj.hasOwnProperty('back_bumper')) {
        this.back_bumper = initObj.back_bumper
      }
      else {
        this.back_bumper = false;
      }
      if (initObj.hasOwnProperty('sub1_bumper')) {
        this.sub1_bumper = initObj.sub1_bumper
      }
      else {
        this.sub1_bumper = false;
      }
      if (initObj.hasOwnProperty('sub2_bumper')) {
        this.sub2_bumper = initObj.sub2_bumper
      }
      else {
        this.sub2_bumper = false;
      }
      if (initObj.hasOwnProperty('sub3_bumper')) {
        this.sub3_bumper = initObj.sub3_bumper
      }
      else {
        this.sub3_bumper = false;
      }
      if (initObj.hasOwnProperty('sub4_bumper')) {
        this.sub4_bumper = initObj.sub4_bumper
      }
      else {
        this.sub4_bumper = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BumperReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [bumper_flag]
    bufferOffset = _serializer.bool(obj.bumper_flag, buffer, bufferOffset);
    // Serialize message field [left_bumper]
    bufferOffset = _serializer.bool(obj.left_bumper, buffer, bufferOffset);
    // Serialize message field [mid_bumper]
    bufferOffset = _serializer.bool(obj.mid_bumper, buffer, bufferOffset);
    // Serialize message field [right_bumper]
    bufferOffset = _serializer.bool(obj.right_bumper, buffer, bufferOffset);
    // Serialize message field [back_bumper]
    bufferOffset = _serializer.bool(obj.back_bumper, buffer, bufferOffset);
    // Serialize message field [sub1_bumper]
    bufferOffset = _serializer.bool(obj.sub1_bumper, buffer, bufferOffset);
    // Serialize message field [sub2_bumper]
    bufferOffset = _serializer.bool(obj.sub2_bumper, buffer, bufferOffset);
    // Serialize message field [sub3_bumper]
    bufferOffset = _serializer.bool(obj.sub3_bumper, buffer, bufferOffset);
    // Serialize message field [sub4_bumper]
    bufferOffset = _serializer.bool(obj.sub4_bumper, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BumperReport
    let len;
    let data = new BumperReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bumper_flag]
    data.bumper_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_bumper]
    data.left_bumper = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mid_bumper]
    data.mid_bumper = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_bumper]
    data.right_bumper = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [back_bumper]
    data.back_bumper = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sub1_bumper]
    data.sub1_bumper = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sub2_bumper]
    data.sub2_bumper = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sub3_bumper]
    data.sub3_bumper = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sub4_bumper]
    data.sub4_bumper = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/BumperReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2405e56ac30b979aef601f898841758f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool bumper_flag
    bool left_bumper
    bool mid_bumper
    bool right_bumper
    bool back_bumper
    
    bool sub1_bumper
    bool sub2_bumper
    bool sub3_bumper
    bool sub4_bumper
    
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
    const resolved = new BumperReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.bumper_flag !== undefined) {
      resolved.bumper_flag = msg.bumper_flag;
    }
    else {
      resolved.bumper_flag = false
    }

    if (msg.left_bumper !== undefined) {
      resolved.left_bumper = msg.left_bumper;
    }
    else {
      resolved.left_bumper = false
    }

    if (msg.mid_bumper !== undefined) {
      resolved.mid_bumper = msg.mid_bumper;
    }
    else {
      resolved.mid_bumper = false
    }

    if (msg.right_bumper !== undefined) {
      resolved.right_bumper = msg.right_bumper;
    }
    else {
      resolved.right_bumper = false
    }

    if (msg.back_bumper !== undefined) {
      resolved.back_bumper = msg.back_bumper;
    }
    else {
      resolved.back_bumper = false
    }

    if (msg.sub1_bumper !== undefined) {
      resolved.sub1_bumper = msg.sub1_bumper;
    }
    else {
      resolved.sub1_bumper = false
    }

    if (msg.sub2_bumper !== undefined) {
      resolved.sub2_bumper = msg.sub2_bumper;
    }
    else {
      resolved.sub2_bumper = false
    }

    if (msg.sub3_bumper !== undefined) {
      resolved.sub3_bumper = msg.sub3_bumper;
    }
    else {
      resolved.sub3_bumper = false
    }

    if (msg.sub4_bumper !== undefined) {
      resolved.sub4_bumper = msg.sub4_bumper;
    }
    else {
      resolved.sub4_bumper = false
    }

    return resolved;
    }
};

module.exports = BumperReport;
