// Auto-generated. Do not edit!

// (in-package twinny_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pose3D = require('./Pose3D.js');

//-----------------------------------------------------------

class RobotState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Pose3D();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Pose3D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotState
    // Serialize message field [pose]
    bufferOffset = Pose3D.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = Pose3D.serialize(obj.velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotState
    let len;
    let data = new RobotState(null);
    // Deserialize message field [pose]
    data.pose = Pose3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = Pose3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Pose3D.getMessageSize(object.pose);
    length += Pose3D.getMessageSize(object.velocity);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/RobotState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20e50a921366e4be59bcdf3bb697d021';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    twinny_msgs/Pose3D pose
    twinny_msgs/Pose3D velocity
    ================================================================================
    MSG: twinny_msgs/Pose3D
    Header header
    float64 x
    float64 y
    float64 theta
    
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
    const resolved = new RobotState(null);
    if (msg.pose !== undefined) {
      resolved.pose = Pose3D.Resolve(msg.pose)
    }
    else {
      resolved.pose = new Pose3D()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = Pose3D.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new Pose3D()
    }

    return resolved;
    }
};

module.exports = RobotState;
