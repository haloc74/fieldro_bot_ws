// Auto-generated. Do not edit!

// (in-package twinny_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DWMRState = require('./DWMRState.js');
let Position = require('./Position.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Trajectory2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.command_mode = null;
      this.command_value = null;
      this.path_legnth = null;
      this.sampling_period = null;
      this.state = null;
      this.object = null;
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
      if (initObj.hasOwnProperty('command_value')) {
        this.command_value = initObj.command_value
      }
      else {
        this.command_value = 0;
      }
      if (initObj.hasOwnProperty('path_legnth')) {
        this.path_legnth = initObj.path_legnth
      }
      else {
        this.path_legnth = 0;
      }
      if (initObj.hasOwnProperty('sampling_period')) {
        this.sampling_period = initObj.sampling_period
      }
      else {
        this.sampling_period = 0.0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new Array(201).fill(new DWMRState());
      }
      if (initObj.hasOwnProperty('object')) {
        this.object = initObj.object
      }
      else {
        this.object = new Position();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory2
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [command_mode]
    bufferOffset = _serializer.uint8(obj.command_mode, buffer, bufferOffset);
    // Serialize message field [command_value]
    bufferOffset = _serializer.uint8(obj.command_value, buffer, bufferOffset);
    // Serialize message field [path_legnth]
    bufferOffset = _serializer.uint8(obj.path_legnth, buffer, bufferOffset);
    // Serialize message field [sampling_period]
    bufferOffset = _serializer.float64(obj.sampling_period, buffer, bufferOffset);
    // Check that the constant length array field [state] has the right length
    if (obj.state.length !== 201) {
      throw new Error('Unable to serialize array field state - length must be 201')
    }
    // Serialize message field [state]
    obj.state.forEach((val) => {
      bufferOffset = DWMRState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [object]
    bufferOffset = Position.serialize(obj.object, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory2
    let len;
    let data = new Trajectory2(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [command_mode]
    data.command_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [command_value]
    data.command_value = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [path_legnth]
    data.path_legnth = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sampling_period]
    data.sampling_period = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [state]
    len = 201;
    data.state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.state[i] = DWMRState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [object]
    data.object = Position.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.state.forEach((val) => {
      length += DWMRState.getMessageSize(val);
    });
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/Trajectory2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18cd86ccdebc7c18b59adf258bbbe2f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 MAX_LENGTH=200
    
    uint8 NORMAL=0
    uint8 VEL_ONLY=1
    uint8 E_STOP=2
    uint8 STOP_AND_ROTATION=3
    
    uint8 FOCUSING=4
    
    uint8 command_mode
    uint8 command_value
    uint8 path_legnth
    
    float64 sampling_period
    
    twinny_msgs/DWMRState[201] state
    
    twinny_msgs/Position object
    
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
    MSG: twinny_msgs/DWMRState
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
    MSG: twinny_msgs/Position
    float64 x
    float64 y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Trajectory2(null);
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

    if (msg.command_value !== undefined) {
      resolved.command_value = msg.command_value;
    }
    else {
      resolved.command_value = 0
    }

    if (msg.path_legnth !== undefined) {
      resolved.path_legnth = msg.path_legnth;
    }
    else {
      resolved.path_legnth = 0
    }

    if (msg.sampling_period !== undefined) {
      resolved.sampling_period = msg.sampling_period;
    }
    else {
      resolved.sampling_period = 0.0
    }

    if (msg.state !== undefined) {
      resolved.state = new Array(201)
      for (let i = 0; i < resolved.state.length; ++i) {
        if (msg.state.length > i) {
          resolved.state[i] = DWMRState.Resolve(msg.state[i]);
        }
        else {
          resolved.state[i] = new DWMRState();
        }
      }
    }
    else {
      resolved.state = new Array(201).fill(new DWMRState())
    }

    if (msg.object !== undefined) {
      resolved.object = Position.Resolve(msg.object)
    }
    else {
      resolved.object = new Position()
    }

    return resolved;
    }
};

// Constants for message
Trajectory2.Constants = {
  MAX_LENGTH: 200,
  NORMAL: 0,
  VEL_ONLY: 1,
  E_STOP: 2,
  STOP_AND_ROTATION: 3,
  FOCUSING: 4,
}

module.exports = Trajectory2;
