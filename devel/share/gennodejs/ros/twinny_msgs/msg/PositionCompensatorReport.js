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

class PositionCompensatorReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.command_id = null;
      this.state = null;
      this.last_event = null;
      this.final_x_error = null;
      this.final_y_error = null;
      this.final_theta_error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('command_id')) {
        this.command_id = initObj.command_id
      }
      else {
        this.command_id = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('last_event')) {
        this.last_event = initObj.last_event
      }
      else {
        this.last_event = 0;
      }
      if (initObj.hasOwnProperty('final_x_error')) {
        this.final_x_error = initObj.final_x_error
      }
      else {
        this.final_x_error = 0.0;
      }
      if (initObj.hasOwnProperty('final_y_error')) {
        this.final_y_error = initObj.final_y_error
      }
      else {
        this.final_y_error = 0.0;
      }
      if (initObj.hasOwnProperty('final_theta_error')) {
        this.final_theta_error = initObj.final_theta_error
      }
      else {
        this.final_theta_error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionCompensatorReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [command_id]
    bufferOffset = _serializer.int32(obj.command_id, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    // Serialize message field [last_event]
    bufferOffset = _serializer.int32(obj.last_event, buffer, bufferOffset);
    // Serialize message field [final_x_error]
    bufferOffset = _serializer.float64(obj.final_x_error, buffer, bufferOffset);
    // Serialize message field [final_y_error]
    bufferOffset = _serializer.float64(obj.final_y_error, buffer, bufferOffset);
    // Serialize message field [final_theta_error]
    bufferOffset = _serializer.float64(obj.final_theta_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionCompensatorReport
    let len;
    let data = new PositionCompensatorReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [command_id]
    data.command_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [last_event]
    data.last_event = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [final_x_error]
    data.final_x_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [final_y_error]
    data.final_y_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [final_theta_error]
    data.final_theta_error = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/PositionCompensatorReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce394262ae46a810715d34454a160030';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int32 command_id
    
    int32 READY = 1
    int32 RUNNING = 2
    int32 ERROR = -99
    int32 state
    
    int32 NO_EVENT = 0
    int32 GET_START = 1
    int32 GET_STOP = 2
    
    int32 FIND_STATION = 11
    int32 FINISHED = 21
    
    int32 BUMPER_ACTIVATED = 31
    int32 BUMPER_RELEASED = 32
    
    int32 RECOVERY_WORKING = 41
    
    int32 FAIL_DUETO_NO_STATION = -1
    int32 FAIL_DUETO_OVER_RECOVERY = -2
    int32 FAIL_DUETO_LENGTH_ERROR = -3
    int32 FAIL_DUETO_ANGLE_ERROR = -4
    
    int32 ERROR_OCCUR = -99
    
    int32 last_event
    
    float64 final_x_error
    float64 final_y_error
    float64 final_theta_error
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
    const resolved = new PositionCompensatorReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.command_id !== undefined) {
      resolved.command_id = msg.command_id;
    }
    else {
      resolved.command_id = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.last_event !== undefined) {
      resolved.last_event = msg.last_event;
    }
    else {
      resolved.last_event = 0
    }

    if (msg.final_x_error !== undefined) {
      resolved.final_x_error = msg.final_x_error;
    }
    else {
      resolved.final_x_error = 0.0
    }

    if (msg.final_y_error !== undefined) {
      resolved.final_y_error = msg.final_y_error;
    }
    else {
      resolved.final_y_error = 0.0
    }

    if (msg.final_theta_error !== undefined) {
      resolved.final_theta_error = msg.final_theta_error;
    }
    else {
      resolved.final_theta_error = 0.0
    }

    return resolved;
    }
};

// Constants for message
PositionCompensatorReport.Constants = {
  READY: 1,
  RUNNING: 2,
  ERROR: -99,
  NO_EVENT: 0,
  GET_START: 1,
  GET_STOP: 2,
  FIND_STATION: 11,
  FINISHED: 21,
  BUMPER_ACTIVATED: 31,
  BUMPER_RELEASED: 32,
  RECOVERY_WORKING: 41,
  FAIL_DUETO_NO_STATION: -1,
  FAIL_DUETO_OVER_RECOVERY: -2,
  FAIL_DUETO_LENGTH_ERROR: -3,
  FAIL_DUETO_ANGLE_ERROR: -4,
  ERROR_OCCUR: -99,
}

module.exports = PositionCompensatorReport;
