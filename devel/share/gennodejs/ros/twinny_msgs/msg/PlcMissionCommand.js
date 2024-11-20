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

class PlcMissionCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mission_mode = null;
      this.workspace = null;
      this.magazine_id = null;
      this.workspace_direction = null;
      this.in_out_num = null;
      this.arm_move_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mission_mode')) {
        this.mission_mode = initObj.mission_mode
      }
      else {
        this.mission_mode = 0;
      }
      if (initObj.hasOwnProperty('workspace')) {
        this.workspace = initObj.workspace
      }
      else {
        this.workspace = '';
      }
      if (initObj.hasOwnProperty('magazine_id')) {
        this.magazine_id = initObj.magazine_id
      }
      else {
        this.magazine_id = '';
      }
      if (initObj.hasOwnProperty('workspace_direction')) {
        this.workspace_direction = initObj.workspace_direction
      }
      else {
        this.workspace_direction = 0;
      }
      if (initObj.hasOwnProperty('in_out_num')) {
        this.in_out_num = initObj.in_out_num
      }
      else {
        this.in_out_num = 0;
      }
      if (initObj.hasOwnProperty('arm_move_flag')) {
        this.arm_move_flag = initObj.arm_move_flag
      }
      else {
        this.arm_move_flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlcMissionCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mission_mode]
    bufferOffset = _serializer.uint8(obj.mission_mode, buffer, bufferOffset);
    // Serialize message field [workspace]
    bufferOffset = _serializer.string(obj.workspace, buffer, bufferOffset);
    // Serialize message field [magazine_id]
    bufferOffset = _serializer.string(obj.magazine_id, buffer, bufferOffset);
    // Serialize message field [workspace_direction]
    bufferOffset = _serializer.uint8(obj.workspace_direction, buffer, bufferOffset);
    // Serialize message field [in_out_num]
    bufferOffset = _serializer.uint16(obj.in_out_num, buffer, bufferOffset);
    // Serialize message field [arm_move_flag]
    bufferOffset = _serializer.bool(obj.arm_move_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlcMissionCommand
    let len;
    let data = new PlcMissionCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mission_mode]
    data.mission_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [workspace]
    data.workspace = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [magazine_id]
    data.magazine_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [workspace_direction]
    data.workspace_direction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [in_out_num]
    data.in_out_num = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [arm_move_flag]
    data.arm_move_flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.workspace.length;
    length += object.magazine_id.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/PlcMissionCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae536fdf7906e3e3d378a48156bbe28d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 mission_mode
    
    uint8 NO_COMMAND = 0
    uint8 LOAD = 1
    uint8 UNLOAD = 2
    uint8 BATTERY_CHANGE = 3
    uint8 PLC_RESET = 4
    
    string workspace
    string magazine_id
    
    uint8 workspace_direction
    
    uint8 LEFT = 1
    uint8 RIGHT = 2
    
    uint16 in_out_num
    
    bool arm_move_flag
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
    const resolved = new PlcMissionCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mission_mode !== undefined) {
      resolved.mission_mode = msg.mission_mode;
    }
    else {
      resolved.mission_mode = 0
    }

    if (msg.workspace !== undefined) {
      resolved.workspace = msg.workspace;
    }
    else {
      resolved.workspace = ''
    }

    if (msg.magazine_id !== undefined) {
      resolved.magazine_id = msg.magazine_id;
    }
    else {
      resolved.magazine_id = ''
    }

    if (msg.workspace_direction !== undefined) {
      resolved.workspace_direction = msg.workspace_direction;
    }
    else {
      resolved.workspace_direction = 0
    }

    if (msg.in_out_num !== undefined) {
      resolved.in_out_num = msg.in_out_num;
    }
    else {
      resolved.in_out_num = 0
    }

    if (msg.arm_move_flag !== undefined) {
      resolved.arm_move_flag = msg.arm_move_flag;
    }
    else {
      resolved.arm_move_flag = false
    }

    return resolved;
    }
};

// Constants for message
PlcMissionCommand.Constants = {
  NO_COMMAND: 0,
  LOAD: 1,
  UNLOAD: 2,
  BATTERY_CHANGE: 3,
  PLC_RESET: 4,
  LEFT: 1,
  RIGHT: 2,
}

module.exports = PlcMissionCommand;
