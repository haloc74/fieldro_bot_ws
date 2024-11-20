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

class SpeedModeReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.robot_current_speed_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('robot_current_speed_mode')) {
        this.robot_current_speed_mode = initObj.robot_current_speed_mode
      }
      else {
        this.robot_current_speed_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedModeReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [robot_current_speed_mode]
    bufferOffset = _serializer.int8(obj.robot_current_speed_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedModeReport
    let len;
    let data = new SpeedModeReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_current_speed_mode]
    data.robot_current_speed_mode = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/SpeedModeReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80f59a95cf675512c2f5ddacc798542f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    
    int8 ROBOT_SPEED_LOW = -1
    int8 ROBOT_SPEED_DEFAULT = 0
    int8 ROBOT_SPEED_HIGH = 1
    
    int8 robot_current_speed_mode
    
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
    const resolved = new SpeedModeReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.robot_current_speed_mode !== undefined) {
      resolved.robot_current_speed_mode = msg.robot_current_speed_mode;
    }
    else {
      resolved.robot_current_speed_mode = 0
    }

    return resolved;
    }
};

// Constants for message
SpeedModeReport.Constants = {
  ROBOT_SPEED_LOW: -1,
  ROBOT_SPEED_DEFAULT: 0,
  ROBOT_SPEED_HIGH: 1,
}

module.exports = SpeedModeReport;
