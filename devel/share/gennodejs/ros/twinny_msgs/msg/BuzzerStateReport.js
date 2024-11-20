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

class BuzzerStateReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.buzzer_state = null;
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
      if (initObj.hasOwnProperty('buzzer_state')) {
        this.buzzer_state = initObj.buzzer_state
      }
      else {
        this.buzzer_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BuzzerStateReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [buzzer_state]
    bufferOffset = _serializer.uint8(obj.buzzer_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BuzzerStateReport
    let len;
    let data = new BuzzerStateReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [buzzer_state]
    data.buzzer_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/BuzzerStateReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04f8c52747d765f6a5272221d071769e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    
    uint8 BUZZER_STATE_OFF=0
    uint8 BUZZER_STATE_1=1
    uint8 BUZZER_STATE_2=2
    uint8 BUZZER_STATE_1_2=3
    uint8 BUZZER_STATE_3=4
    uint8 BUZZER_STATE_1_3=5
    uint8 BUZZER_STATE_2_3=6
    uint8 BUZZER_STATE_ALL=7
    
    uint8 buzzer_state
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
    const resolved = new BuzzerStateReport(null);
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

    if (msg.buzzer_state !== undefined) {
      resolved.buzzer_state = msg.buzzer_state;
    }
    else {
      resolved.buzzer_state = 0
    }

    return resolved;
    }
};

// Constants for message
BuzzerStateReport.Constants = {
  BUZZER_STATE_OFF: 0,
  BUZZER_STATE_1: 1,
  BUZZER_STATE_2: 2,
  BUZZER_STATE_1_2: 3,
  BUZZER_STATE_3: 4,
  BUZZER_STATE_1_3: 5,
  BUZZER_STATE_2_3: 6,
  BUZZER_STATE_ALL: 7,
}

module.exports = BuzzerStateReport;
