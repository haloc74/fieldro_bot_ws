// Auto-generated. Do not edit!

// (in-package twinny_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class StationRecognizerCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.command = null;
      this.frame_name = null;
      this.current_robot_pose = null;
      this.candidate_pose = null;
      this.roi_length = null;
      this.extra_field = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('frame_name')) {
        this.frame_name = initObj.frame_name
      }
      else {
        this.frame_name = '';
      }
      if (initObj.hasOwnProperty('current_robot_pose')) {
        this.current_robot_pose = initObj.current_robot_pose
      }
      else {
        this.current_robot_pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('candidate_pose')) {
        this.candidate_pose = initObj.candidate_pose
      }
      else {
        this.candidate_pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('roi_length')) {
        this.roi_length = initObj.roi_length
      }
      else {
        this.roi_length = 0.0;
      }
      if (initObj.hasOwnProperty('extra_field')) {
        this.extra_field = initObj.extra_field
      }
      else {
        this.extra_field = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StationRecognizerCommandRequest
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [frame_name]
    bufferOffset = _serializer.string(obj.frame_name, buffer, bufferOffset);
    // Serialize message field [current_robot_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.current_robot_pose, buffer, bufferOffset);
    // Serialize message field [candidate_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.candidate_pose, buffer, bufferOffset);
    // Serialize message field [roi_length]
    bufferOffset = _serializer.float64(obj.roi_length, buffer, bufferOffset);
    // Serialize message field [extra_field]
    bufferOffset = _serializer.string(obj.extra_field, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StationRecognizerCommandRequest
    let len;
    let data = new StationRecognizerCommandRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [frame_name]
    data.frame_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_robot_pose]
    data.current_robot_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [candidate_pose]
    data.candidate_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [roi_length]
    data.roi_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extra_field]
    data.extra_field = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    length += object.frame_name.length;
    length += object.extra_field.length;
    return length + 69;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/StationRecognizerCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '048b682f839d7464bdb8aeb10dc846ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type
    
    uint8 START = 0
    uint8 STOP = 1
    uint8 PAUSE = 2
    uint8 RESUME = 3
    uint8 RESET_KALMAN = 4
    uint8 GET_STATION = 5
    uint8 command
    
    string frame_name
    geometry_msgs/Pose2D current_robot_pose
    geometry_msgs/Pose2D candidate_pose
    
    float64 roi_length
    
    string extra_field
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
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
    const resolved = new StationRecognizerCommandRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.frame_name !== undefined) {
      resolved.frame_name = msg.frame_name;
    }
    else {
      resolved.frame_name = ''
    }

    if (msg.current_robot_pose !== undefined) {
      resolved.current_robot_pose = geometry_msgs.msg.Pose2D.Resolve(msg.current_robot_pose)
    }
    else {
      resolved.current_robot_pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.candidate_pose !== undefined) {
      resolved.candidate_pose = geometry_msgs.msg.Pose2D.Resolve(msg.candidate_pose)
    }
    else {
      resolved.candidate_pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.roi_length !== undefined) {
      resolved.roi_length = msg.roi_length;
    }
    else {
      resolved.roi_length = 0.0
    }

    if (msg.extra_field !== undefined) {
      resolved.extra_field = msg.extra_field;
    }
    else {
      resolved.extra_field = ''
    }

    return resolved;
    }
};

// Constants for message
StationRecognizerCommandRequest.Constants = {
  START: 0,
  STOP: 1,
  PAUSE: 2,
  RESUME: 3,
  RESET_KALMAN: 4,
  GET_STATION: 5,
}

class StationRecognizerCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.is_find = null;
      this.estimated_station_pose = null;
      this.extra_field = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('is_find')) {
        this.is_find = initObj.is_find
      }
      else {
        this.is_find = false;
      }
      if (initObj.hasOwnProperty('estimated_station_pose')) {
        this.estimated_station_pose = initObj.estimated_station_pose
      }
      else {
        this.estimated_station_pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('extra_field')) {
        this.extra_field = initObj.extra_field
      }
      else {
        this.extra_field = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StationRecognizerCommandResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [is_find]
    bufferOffset = _serializer.bool(obj.is_find, buffer, bufferOffset);
    // Serialize message field [estimated_station_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.estimated_station_pose, buffer, bufferOffset);
    // Serialize message field [extra_field]
    bufferOffset = _serializer.string(obj.extra_field, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StationRecognizerCommandResponse
    let len;
    let data = new StationRecognizerCommandResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_find]
    data.is_find = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [estimated_station_pose]
    data.estimated_station_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [extra_field]
    data.extra_field = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.extra_field.length;
    return length + 33;
  }

  static datatype() {
    // Returns string type for a service object
    return 'twinny_msgs/StationRecognizerCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3729f7c52832e836a2c496c7c4b4bf1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 SUCCESS = 1
    int32 FAIL = -1
    int32 ERROR = -999
    
    int32 INVALID_MODE = -10
    int32 INVALID_STATE= -11
    int32 INVALID_COMMAND = -12
    int32 INVALID_TYPE = -13
    int32 INVALID_FRAME = -14
    int32 INVALID_CURRENT = -15
    
    int32 NOT_WORKING_DUETO_TOO_CLOSED = -20
    int32 FAIL_DUETO_BOUND_ERROR = -21
    int32 FAIL_DUETO_SIZE_ERROR = -22
    int32 FAIL_DUETO_LENGTH_ERROR = -23
    
    int32 result
    
    bool is_find
    
    geometry_msgs/Pose2D estimated_station_pose
    string extra_field
    
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
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
    const resolved = new StationRecognizerCommandResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.is_find !== undefined) {
      resolved.is_find = msg.is_find;
    }
    else {
      resolved.is_find = false
    }

    if (msg.estimated_station_pose !== undefined) {
      resolved.estimated_station_pose = geometry_msgs.msg.Pose2D.Resolve(msg.estimated_station_pose)
    }
    else {
      resolved.estimated_station_pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.extra_field !== undefined) {
      resolved.extra_field = msg.extra_field;
    }
    else {
      resolved.extra_field = ''
    }

    return resolved;
    }
};

// Constants for message
StationRecognizerCommandResponse.Constants = {
  SUCCESS: 1,
  FAIL: -1,
  ERROR: -999,
  INVALID_MODE: -10,
  INVALID_STATE: -11,
  INVALID_COMMAND: -12,
  INVALID_TYPE: -13,
  INVALID_FRAME: -14,
  INVALID_CURRENT: -15,
  NOT_WORKING_DUETO_TOO_CLOSED: -20,
  FAIL_DUETO_BOUND_ERROR: -21,
  FAIL_DUETO_SIZE_ERROR: -22,
  FAIL_DUETO_LENGTH_ERROR: -23,
}

module.exports = {
  Request: StationRecognizerCommandRequest,
  Response: StationRecognizerCommandResponse,
  md5sum() { return 'fc40b6d334b5e6c2cc71670efc1b918a'; },
  datatype() { return 'twinny_msgs/StationRecognizerCommand'; }
};
