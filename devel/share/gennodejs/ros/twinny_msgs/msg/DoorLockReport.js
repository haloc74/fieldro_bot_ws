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

class DoorLockReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.door_lock_id = null;
      this.door_lock_state = null;
      this.door_open_state = null;
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
      if (initObj.hasOwnProperty('door_lock_id')) {
        this.door_lock_id = initObj.door_lock_id
      }
      else {
        this.door_lock_id = 0;
      }
      if (initObj.hasOwnProperty('door_lock_state')) {
        this.door_lock_state = initObj.door_lock_state
      }
      else {
        this.door_lock_state = 0;
      }
      if (initObj.hasOwnProperty('door_open_state')) {
        this.door_open_state = initObj.door_open_state
      }
      else {
        this.door_open_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DoorLockReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [door_lock_id]
    bufferOffset = _serializer.uint32(obj.door_lock_id, buffer, bufferOffset);
    // Serialize message field [door_lock_state]
    bufferOffset = _serializer.int32(obj.door_lock_state, buffer, bufferOffset);
    // Serialize message field [door_open_state]
    bufferOffset = _serializer.bool(obj.door_open_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DoorLockReport
    let len;
    let data = new DoorLockReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [door_lock_id]
    data.door_lock_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [door_lock_state]
    data.door_lock_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [door_open_state]
    data.door_open_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/DoorLockReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de2acf7851fcb667067d0326218a4ca1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    
    uint32 door_lock_id
    
    int32 DOOR_REPORT_STOP=0
    int32 DOOR_REPORT_LOCK=1
    int32 DOOR_REPORT_LOCKING=2
    int32 DOOR_REPORT_UNLOCK=3
    int32 DOOR_REPORT_UNLOCKING=4
    
    int32 door_lock_state
    bool door_open_state
    
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
    const resolved = new DoorLockReport(null);
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

    if (msg.door_lock_id !== undefined) {
      resolved.door_lock_id = msg.door_lock_id;
    }
    else {
      resolved.door_lock_id = 0
    }

    if (msg.door_lock_state !== undefined) {
      resolved.door_lock_state = msg.door_lock_state;
    }
    else {
      resolved.door_lock_state = 0
    }

    if (msg.door_open_state !== undefined) {
      resolved.door_open_state = msg.door_open_state;
    }
    else {
      resolved.door_open_state = false
    }

    return resolved;
    }
};

// Constants for message
DoorLockReport.Constants = {
  DOOR_REPORT_STOP: 0,
  DOOR_REPORT_LOCK: 1,
  DOOR_REPORT_LOCKING: 2,
  DOOR_REPORT_UNLOCK: 3,
  DOOR_REPORT_UNLOCKING: 4,
}

module.exports = DoorLockReport;
