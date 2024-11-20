// Auto-generated. Do not edit!

// (in-package twinny_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LinearAngular = require('./LinearAngular.js');
let Pose3D = require('./Pose3D.js');

//-----------------------------------------------------------

class DWMRState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new LinearAngular();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Pose3D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DWMRState
    // Serialize message field [velocity]
    bufferOffset = LinearAngular.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = Pose3D.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DWMRState
    let len;
    let data = new DWMRState(null);
    // Deserialize message field [velocity]
    data.velocity = LinearAngular.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = Pose3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Pose3D.getMessageSize(object.pose);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/DWMRState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e83e1ba0db9b6fa987145cd987133b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    twinny_msgs/LinearAngular velocity
    twinny_msgs/Pose3D pose
    ================================================================================
    MSG: twinny_msgs/LinearAngular
    float64 linear
    float64 angular
    
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
    const resolved = new DWMRState(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = LinearAngular.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new LinearAngular()
    }

    if (msg.pose !== undefined) {
      resolved.pose = Pose3D.Resolve(msg.pose)
    }
    else {
      resolved.pose = new Pose3D()
    }

    return resolved;
    }
};

module.exports = DWMRState;
