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

class PalletLiftReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.lift_state = null;
      this.is_robot_loaded = null;
      this.is_station_loaded = null;
      this.is_alarm = null;
      this.last_command = null;
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
      if (initObj.hasOwnProperty('lift_state')) {
        this.lift_state = initObj.lift_state
      }
      else {
        this.lift_state = '';
      }
      if (initObj.hasOwnProperty('is_robot_loaded')) {
        this.is_robot_loaded = initObj.is_robot_loaded
      }
      else {
        this.is_robot_loaded = false;
      }
      if (initObj.hasOwnProperty('is_station_loaded')) {
        this.is_station_loaded = initObj.is_station_loaded
      }
      else {
        this.is_station_loaded = false;
      }
      if (initObj.hasOwnProperty('is_alarm')) {
        this.is_alarm = initObj.is_alarm
      }
      else {
        this.is_alarm = false;
      }
      if (initObj.hasOwnProperty('last_command')) {
        this.last_command = initObj.last_command
      }
      else {
        this.last_command = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PalletLiftReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [lift_state]
    bufferOffset = _serializer.string(obj.lift_state, buffer, bufferOffset);
    // Serialize message field [is_robot_loaded]
    bufferOffset = _serializer.bool(obj.is_robot_loaded, buffer, bufferOffset);
    // Serialize message field [is_station_loaded]
    bufferOffset = _serializer.bool(obj.is_station_loaded, buffer, bufferOffset);
    // Serialize message field [is_alarm]
    bufferOffset = _serializer.bool(obj.is_alarm, buffer, bufferOffset);
    // Serialize message field [last_command]
    bufferOffset = _serializer.string(obj.last_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PalletLiftReport
    let len;
    let data = new PalletLiftReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lift_state]
    data.lift_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_robot_loaded]
    data.is_robot_loaded = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_station_loaded]
    data.is_station_loaded = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_alarm]
    data.is_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [last_command]
    data.last_command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    length += object.lift_state.length;
    length += object.last_command.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/PalletLiftReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00b1730e0b05bdf263d85c2341b4fab7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string MOVING=moving
    string SETTLE=settle
    string READY_TO_LOAD=ready_to_load
    string LOADED=loaded
    string READY_TO_UNLOAD=ready_to_unload
    string UNLOADED=unloaded
    
    Header header
    string type
    string lift_state
    bool is_robot_loaded
    bool is_station_loaded
    bool is_alarm
    string last_command
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
    const resolved = new PalletLiftReport(null);
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

    if (msg.lift_state !== undefined) {
      resolved.lift_state = msg.lift_state;
    }
    else {
      resolved.lift_state = ''
    }

    if (msg.is_robot_loaded !== undefined) {
      resolved.is_robot_loaded = msg.is_robot_loaded;
    }
    else {
      resolved.is_robot_loaded = false
    }

    if (msg.is_station_loaded !== undefined) {
      resolved.is_station_loaded = msg.is_station_loaded;
    }
    else {
      resolved.is_station_loaded = false
    }

    if (msg.is_alarm !== undefined) {
      resolved.is_alarm = msg.is_alarm;
    }
    else {
      resolved.is_alarm = false
    }

    if (msg.last_command !== undefined) {
      resolved.last_command = msg.last_command;
    }
    else {
      resolved.last_command = ''
    }

    return resolved;
    }
};

// Constants for message
PalletLiftReport.Constants = {
  MOVING: 'moving',
  SETTLE: 'settle',
  READY_TO_LOAD: 'ready_to_load',
  LOADED: 'loaded',
  READY_TO_UNLOAD: 'ready_to_unload',
  UNLOADED: 'unloaded',
}

module.exports = PalletLiftReport;
