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

class PalletMoveReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.lift_id = null;
      this.lift_state = null;
      this.fork_left_state = null;
      this.fork_right_state = null;
      this.is_loaded = null;
      this.error_code = null;
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
      if (initObj.hasOwnProperty('lift_id')) {
        this.lift_id = initObj.lift_id
      }
      else {
        this.lift_id = 0;
      }
      if (initObj.hasOwnProperty('lift_state')) {
        this.lift_state = initObj.lift_state
      }
      else {
        this.lift_state = 0;
      }
      if (initObj.hasOwnProperty('fork_left_state')) {
        this.fork_left_state = initObj.fork_left_state
      }
      else {
        this.fork_left_state = false;
      }
      if (initObj.hasOwnProperty('fork_right_state')) {
        this.fork_right_state = initObj.fork_right_state
      }
      else {
        this.fork_right_state = false;
      }
      if (initObj.hasOwnProperty('is_loaded')) {
        this.is_loaded = initObj.is_loaded
      }
      else {
        this.is_loaded = false;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PalletMoveReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [lift_id]
    bufferOffset = _serializer.uint32(obj.lift_id, buffer, bufferOffset);
    // Serialize message field [lift_state]
    bufferOffset = _serializer.int32(obj.lift_state, buffer, bufferOffset);
    // Serialize message field [fork_left_state]
    bufferOffset = _serializer.bool(obj.fork_left_state, buffer, bufferOffset);
    // Serialize message field [fork_right_state]
    bufferOffset = _serializer.bool(obj.fork_right_state, buffer, bufferOffset);
    // Serialize message field [is_loaded]
    bufferOffset = _serializer.bool(obj.is_loaded, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _arraySerializer.int32(obj.error_code, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PalletMoveReport
    let len;
    let data = new PalletMoveReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lift_id]
    data.lift_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lift_state]
    data.lift_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fork_left_state]
    data.fork_left_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fork_right_state]
    data.fork_right_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_loaded]
    data.is_loaded = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    length += 4 * object.error_code.length;
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/PalletMoveReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a9fb6eb718a9c5a979b0cd80bea2835';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    
    uint32 lift_id
    int32 lift_state
    bool fork_left_state
    bool fork_right_state
    bool is_loaded
    int32[] error_code
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
    const resolved = new PalletMoveReport(null);
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

    if (msg.lift_id !== undefined) {
      resolved.lift_id = msg.lift_id;
    }
    else {
      resolved.lift_id = 0
    }

    if (msg.lift_state !== undefined) {
      resolved.lift_state = msg.lift_state;
    }
    else {
      resolved.lift_state = 0
    }

    if (msg.fork_left_state !== undefined) {
      resolved.fork_left_state = msg.fork_left_state;
    }
    else {
      resolved.fork_left_state = false
    }

    if (msg.fork_right_state !== undefined) {
      resolved.fork_right_state = msg.fork_right_state;
    }
    else {
      resolved.fork_right_state = false
    }

    if (msg.is_loaded !== undefined) {
      resolved.is_loaded = msg.is_loaded;
    }
    else {
      resolved.is_loaded = false
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = []
    }

    return resolved;
    }
};

module.exports = PalletMoveReport;
