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

class BuzzerControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.buzzer_control = null;
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
      if (initObj.hasOwnProperty('buzzer_control')) {
        this.buzzer_control = initObj.buzzer_control
      }
      else {
        this.buzzer_control = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BuzzerControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [buzzer_control]
    bufferOffset = _serializer.uint8(obj.buzzer_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BuzzerControl
    let len;
    let data = new BuzzerControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [buzzer_control]
    data.buzzer_control = _deserializer.uint8(buffer, bufferOffset);
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
    return 'twinny_msgs/BuzzerControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2deb2adab106391fb0b57e805d1b2cd7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    
    uint8 BUZZER_CONTROL_OFF=0
    uint8 BUZZER_CONTROL_1=1
    uint8 BUZZER_CONTROL_2=2
    uint8 BUZZER_CONTROL_1_2=3
    uint8 BUZZER_CONTROL_3=4
    uint8 BUZZER_CONTROL_1_3=5
    uint8 BUZZER_CONTROL_2_3=6
    uint8 BUZZER_CONTROL_ALL=7
    
    uint8 buzzer_control
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
    const resolved = new BuzzerControl(null);
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

    if (msg.buzzer_control !== undefined) {
      resolved.buzzer_control = msg.buzzer_control;
    }
    else {
      resolved.buzzer_control = 0
    }

    return resolved;
    }
};

// Constants for message
BuzzerControl.Constants = {
  BUZZER_CONTROL_OFF: 0,
  BUZZER_CONTROL_1: 1,
  BUZZER_CONTROL_2: 2,
  BUZZER_CONTROL_1_2: 3,
  BUZZER_CONTROL_3: 4,
  BUZZER_CONTROL_1_3: 5,
  BUZZER_CONTROL_2_3: 6,
  BUZZER_CONTROL_ALL: 7,
}

module.exports = BuzzerControl;
