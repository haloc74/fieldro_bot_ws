// Auto-generated. Do not edit!

// (in-package twinny_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotState = require('./RobotState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DesiredTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.command_mode = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('command_mode')) {
        this.command_mode = initObj.command_mode
      }
      else {
        this.command_mode = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DesiredTrajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [command_mode]
    bufferOffset = _serializer.uint32(obj.command_mode, buffer, bufferOffset);
    // Serialize message field [state]
    // Serialize the length for message field [state]
    bufferOffset = _serializer.uint32(obj.state.length, buffer, bufferOffset);
    obj.state.forEach((val) => {
      bufferOffset = RobotState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DesiredTrajectory
    let len;
    let data = new DesiredTrajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [command_mode]
    data.command_mode = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [state]
    // Deserialize array length for message field [state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.state[i] = RobotState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.state.forEach((val) => {
      length += RobotState.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/DesiredTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25b57abfbad7a15896be8327858d220b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint32 NORMAL=0
    uint32 E_STOP=2
    
    uint32 command_mode
    twinny_msgs/RobotState[] state
    
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
    
    ================================================================================
    MSG: twinny_msgs/RobotState
    twinny_msgs/Pose3D pose
    twinny_msgs/Pose3D velocity
    ================================================================================
    MSG: twinny_msgs/Pose3D
    Header header
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DesiredTrajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.command_mode !== undefined) {
      resolved.command_mode = msg.command_mode;
    }
    else {
      resolved.command_mode = 0
    }

    if (msg.state !== undefined) {
      resolved.state = new Array(msg.state.length);
      for (let i = 0; i < resolved.state.length; ++i) {
        resolved.state[i] = RobotState.Resolve(msg.state[i]);
      }
    }
    else {
      resolved.state = []
    }

    return resolved;
    }
};

// Constants for message
DesiredTrajectory.Constants = {
  NORMAL: 0,
  E_STOP: 2,
}

module.exports = DesiredTrajectory;
