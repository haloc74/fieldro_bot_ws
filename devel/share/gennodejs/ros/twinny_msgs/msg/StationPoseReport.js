// Auto-generated. Do not edit!

// (in-package twinny_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class StationPoseReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.mode = null;
      this.state = null;
      this.station_pose = null;
      this.reliability = null;
      this.extra_field = null;
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
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('station_pose')) {
        this.station_pose = initObj.station_pose
      }
      else {
        this.station_pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('reliability')) {
        this.reliability = initObj.reliability
      }
      else {
        this.reliability = new geometry_msgs.msg.Pose2D();
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
    // Serializes a message object of type StationPoseReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [station_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.station_pose, buffer, bufferOffset);
    // Serialize message field [reliability]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.reliability, buffer, bufferOffset);
    // Serialize message field [extra_field]
    bufferOffset = _serializer.string(obj.extra_field, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StationPoseReport
    let len;
    let data = new StationPoseReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [station_pose]
    data.station_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [reliability]
    data.reliability = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [extra_field]
    data.extra_field = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    length += object.extra_field.length;
    return length + 58;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/StationPoseReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '314691c7f777c0fde4015cc5521a4d44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    
    string UNKNOWN = unknown
    string PPS_O = pps_o
    string PPS_C = pps_c
    string VL = vl
    string type
    
    uint8 START_MODE = 0
    uint8 STOP_MODE = 1
    uint8 PAUSE_MODE = 2
    # uint8 ERROR_MODE = 3
    uint8 mode
    
    #uint8 DISABLE_STATE = 0
    #uint8 ENABLE_STATE = 1
    #uint8 WARNING_STATE = 2
    #uint8 PROCESSING_STATE = 3
     
    uint8 READY_STATE = 10 #구동중이 아닐때, (STOP이거나 PAUSE mode일시에는 이걸로 고정)
    uint8 PROCESSING_STATE = 11 #DISABLE_STATE, PROCESSING_STATE, 아직 스테이션을 못찾음
    uint8 FOUND_STATE = 12 # 스테이션을 찾았음
    uint8 LOST_STATE = 13 # 스테이션을 찾았었으나(FOUND_STATE), 도중에 실패함. 이때 station_pose는 가장 마지막에 찾은 스테이션 정보가 입력됨.
    #uint8 FOUND_STABLE_STATE = 12 #ENABLE_STATE 스테이션을 잘 찾았음
    #uint8 FOUND_UNSTABLE_STATE = 13 #WARNING_STATE 스테이션을 찾았는데 좀 불안한 경우
    uint8 ERROR_STATE = 15 # 언제나 존재, 알고리즘 내부에서 문제갸 터진 경우. 초기화 필요/
    uint8 state
    
    geometry_msgs/Pose2D station_pose
    geometry_msgs/Pose2D reliability # station_pose의 +- 오차 범위를 나타낸다. 알 수 없는 경우 -1.0
    
    string extra_field
    
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
    const resolved = new StationPoseReport(null);
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

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.station_pose !== undefined) {
      resolved.station_pose = geometry_msgs.msg.Pose2D.Resolve(msg.station_pose)
    }
    else {
      resolved.station_pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.reliability !== undefined) {
      resolved.reliability = geometry_msgs.msg.Pose2D.Resolve(msg.reliability)
    }
    else {
      resolved.reliability = new geometry_msgs.msg.Pose2D()
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
StationPoseReport.Constants = {
  UNKNOWN: 'unknown',
  PPS_O: 'pps_o',
  PPS_C: 'pps_c',
  VL: 'vl',
  START_MODE: 0,
  STOP_MODE: 1,
  PAUSE_MODE: 2,
  READY_STATE: 10,
  PROCESSING_STATE: 11,
  FOUND_STATE: 12,
  LOST_STATE: 13,
  ERROR_STATE: 15,
}

module.exports = StationPoseReport;
