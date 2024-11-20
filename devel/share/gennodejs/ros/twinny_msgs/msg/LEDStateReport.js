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

class LEDStateReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.LED_0_state = null;
      this.LED_1_state = null;
      this.LED_2_state = null;
      this.LED_3_state = null;
      this.LED_4_state = null;
      this.LED_5_state = null;
      this.SUB_LED_0_state = null;
      this.SUB_LED_1_state = null;
      this.SUB_LED_2_state = null;
      this.SUB_LED_3_state = null;
      this.SUB_LED_4_state = null;
      this.SUB_LED_5_state = null;
      this.LED_bar_color = null;
      this.LED_bar_state = null;
      this.LED_bar2_color = null;
      this.LED_bar2_state = null;
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
      if (initObj.hasOwnProperty('LED_0_state')) {
        this.LED_0_state = initObj.LED_0_state
      }
      else {
        this.LED_0_state = 0;
      }
      if (initObj.hasOwnProperty('LED_1_state')) {
        this.LED_1_state = initObj.LED_1_state
      }
      else {
        this.LED_1_state = 0;
      }
      if (initObj.hasOwnProperty('LED_2_state')) {
        this.LED_2_state = initObj.LED_2_state
      }
      else {
        this.LED_2_state = 0;
      }
      if (initObj.hasOwnProperty('LED_3_state')) {
        this.LED_3_state = initObj.LED_3_state
      }
      else {
        this.LED_3_state = 0;
      }
      if (initObj.hasOwnProperty('LED_4_state')) {
        this.LED_4_state = initObj.LED_4_state
      }
      else {
        this.LED_4_state = 0;
      }
      if (initObj.hasOwnProperty('LED_5_state')) {
        this.LED_5_state = initObj.LED_5_state
      }
      else {
        this.LED_5_state = 0;
      }
      if (initObj.hasOwnProperty('SUB_LED_0_state')) {
        this.SUB_LED_0_state = initObj.SUB_LED_0_state
      }
      else {
        this.SUB_LED_0_state = 0;
      }
      if (initObj.hasOwnProperty('SUB_LED_1_state')) {
        this.SUB_LED_1_state = initObj.SUB_LED_1_state
      }
      else {
        this.SUB_LED_1_state = 0;
      }
      if (initObj.hasOwnProperty('SUB_LED_2_state')) {
        this.SUB_LED_2_state = initObj.SUB_LED_2_state
      }
      else {
        this.SUB_LED_2_state = 0;
      }
      if (initObj.hasOwnProperty('SUB_LED_3_state')) {
        this.SUB_LED_3_state = initObj.SUB_LED_3_state
      }
      else {
        this.SUB_LED_3_state = 0;
      }
      if (initObj.hasOwnProperty('SUB_LED_4_state')) {
        this.SUB_LED_4_state = initObj.SUB_LED_4_state
      }
      else {
        this.SUB_LED_4_state = 0;
      }
      if (initObj.hasOwnProperty('SUB_LED_5_state')) {
        this.SUB_LED_5_state = initObj.SUB_LED_5_state
      }
      else {
        this.SUB_LED_5_state = 0;
      }
      if (initObj.hasOwnProperty('LED_bar_color')) {
        this.LED_bar_color = initObj.LED_bar_color
      }
      else {
        this.LED_bar_color = 0;
      }
      if (initObj.hasOwnProperty('LED_bar_state')) {
        this.LED_bar_state = initObj.LED_bar_state
      }
      else {
        this.LED_bar_state = 0;
      }
      if (initObj.hasOwnProperty('LED_bar2_color')) {
        this.LED_bar2_color = initObj.LED_bar2_color
      }
      else {
        this.LED_bar2_color = 0;
      }
      if (initObj.hasOwnProperty('LED_bar2_state')) {
        this.LED_bar2_state = initObj.LED_bar2_state
      }
      else {
        this.LED_bar2_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDStateReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [LED_0_state]
    bufferOffset = _serializer.uint8(obj.LED_0_state, buffer, bufferOffset);
    // Serialize message field [LED_1_state]
    bufferOffset = _serializer.uint8(obj.LED_1_state, buffer, bufferOffset);
    // Serialize message field [LED_2_state]
    bufferOffset = _serializer.uint8(obj.LED_2_state, buffer, bufferOffset);
    // Serialize message field [LED_3_state]
    bufferOffset = _serializer.uint8(obj.LED_3_state, buffer, bufferOffset);
    // Serialize message field [LED_4_state]
    bufferOffset = _serializer.uint8(obj.LED_4_state, buffer, bufferOffset);
    // Serialize message field [LED_5_state]
    bufferOffset = _serializer.uint8(obj.LED_5_state, buffer, bufferOffset);
    // Serialize message field [SUB_LED_0_state]
    bufferOffset = _serializer.uint8(obj.SUB_LED_0_state, buffer, bufferOffset);
    // Serialize message field [SUB_LED_1_state]
    bufferOffset = _serializer.uint8(obj.SUB_LED_1_state, buffer, bufferOffset);
    // Serialize message field [SUB_LED_2_state]
    bufferOffset = _serializer.uint8(obj.SUB_LED_2_state, buffer, bufferOffset);
    // Serialize message field [SUB_LED_3_state]
    bufferOffset = _serializer.uint8(obj.SUB_LED_3_state, buffer, bufferOffset);
    // Serialize message field [SUB_LED_4_state]
    bufferOffset = _serializer.uint8(obj.SUB_LED_4_state, buffer, bufferOffset);
    // Serialize message field [SUB_LED_5_state]
    bufferOffset = _serializer.uint8(obj.SUB_LED_5_state, buffer, bufferOffset);
    // Serialize message field [LED_bar_color]
    bufferOffset = _serializer.uint8(obj.LED_bar_color, buffer, bufferOffset);
    // Serialize message field [LED_bar_state]
    bufferOffset = _serializer.uint8(obj.LED_bar_state, buffer, bufferOffset);
    // Serialize message field [LED_bar2_color]
    bufferOffset = _serializer.uint8(obj.LED_bar2_color, buffer, bufferOffset);
    // Serialize message field [LED_bar2_state]
    bufferOffset = _serializer.uint8(obj.LED_bar2_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDStateReport
    let len;
    let data = new LEDStateReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [LED_0_state]
    data.LED_0_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LED_1_state]
    data.LED_1_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LED_2_state]
    data.LED_2_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LED_3_state]
    data.LED_3_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LED_4_state]
    data.LED_4_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LED_5_state]
    data.LED_5_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SUB_LED_0_state]
    data.SUB_LED_0_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SUB_LED_1_state]
    data.SUB_LED_1_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SUB_LED_2_state]
    data.SUB_LED_2_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SUB_LED_3_state]
    data.SUB_LED_3_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SUB_LED_4_state]
    data.SUB_LED_4_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SUB_LED_5_state]
    data.SUB_LED_5_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LED_bar_color]
    data.LED_bar_color = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LED_bar_state]
    data.LED_bar_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LED_bar2_color]
    data.LED_bar2_color = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LED_bar2_state]
    data.LED_bar2_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/LEDStateReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc4c0739dd32f45e85707b08066723b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    
    uint8 STATE_OFF=0
    uint8 STATE_ON=1
    uint8 STATE_BLINK=2
    uint8 STATE_ERROR=3
    
    uint8 LED_0_state
    uint8 LED_1_state
    uint8 LED_2_state
    uint8 LED_3_state
    uint8 LED_4_state
    uint8 LED_5_state
    
    uint8 SUB_LED_0_state
    uint8 SUB_LED_1_state
    uint8 SUB_LED_2_state
    uint8 SUB_LED_3_state
    uint8 SUB_LED_4_state
    uint8 SUB_LED_5_state
    
    uint8 LED_bar_color
    uint8 LED_bar_state
    
    uint8 LED_bar2_color
    uint8 LED_bar2_state
    
    uint8 LED_BAR_OFF = 0
    uint8 LED_BAR_RED = 1
    uint8 LED_BAR_GREEN = 2
    uint8 LED_BAR_YELLOW = 3
    uint8 LED_BAR_BLUE = 4
    uint8 LED_BAR_MAGENTA = 5
    uint8 LED_BAR_CYAN = 6
    uint8 LED_BAR_WHITE = 7
    
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
    const resolved = new LEDStateReport(null);
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

    if (msg.LED_0_state !== undefined) {
      resolved.LED_0_state = msg.LED_0_state;
    }
    else {
      resolved.LED_0_state = 0
    }

    if (msg.LED_1_state !== undefined) {
      resolved.LED_1_state = msg.LED_1_state;
    }
    else {
      resolved.LED_1_state = 0
    }

    if (msg.LED_2_state !== undefined) {
      resolved.LED_2_state = msg.LED_2_state;
    }
    else {
      resolved.LED_2_state = 0
    }

    if (msg.LED_3_state !== undefined) {
      resolved.LED_3_state = msg.LED_3_state;
    }
    else {
      resolved.LED_3_state = 0
    }

    if (msg.LED_4_state !== undefined) {
      resolved.LED_4_state = msg.LED_4_state;
    }
    else {
      resolved.LED_4_state = 0
    }

    if (msg.LED_5_state !== undefined) {
      resolved.LED_5_state = msg.LED_5_state;
    }
    else {
      resolved.LED_5_state = 0
    }

    if (msg.SUB_LED_0_state !== undefined) {
      resolved.SUB_LED_0_state = msg.SUB_LED_0_state;
    }
    else {
      resolved.SUB_LED_0_state = 0
    }

    if (msg.SUB_LED_1_state !== undefined) {
      resolved.SUB_LED_1_state = msg.SUB_LED_1_state;
    }
    else {
      resolved.SUB_LED_1_state = 0
    }

    if (msg.SUB_LED_2_state !== undefined) {
      resolved.SUB_LED_2_state = msg.SUB_LED_2_state;
    }
    else {
      resolved.SUB_LED_2_state = 0
    }

    if (msg.SUB_LED_3_state !== undefined) {
      resolved.SUB_LED_3_state = msg.SUB_LED_3_state;
    }
    else {
      resolved.SUB_LED_3_state = 0
    }

    if (msg.SUB_LED_4_state !== undefined) {
      resolved.SUB_LED_4_state = msg.SUB_LED_4_state;
    }
    else {
      resolved.SUB_LED_4_state = 0
    }

    if (msg.SUB_LED_5_state !== undefined) {
      resolved.SUB_LED_5_state = msg.SUB_LED_5_state;
    }
    else {
      resolved.SUB_LED_5_state = 0
    }

    if (msg.LED_bar_color !== undefined) {
      resolved.LED_bar_color = msg.LED_bar_color;
    }
    else {
      resolved.LED_bar_color = 0
    }

    if (msg.LED_bar_state !== undefined) {
      resolved.LED_bar_state = msg.LED_bar_state;
    }
    else {
      resolved.LED_bar_state = 0
    }

    if (msg.LED_bar2_color !== undefined) {
      resolved.LED_bar2_color = msg.LED_bar2_color;
    }
    else {
      resolved.LED_bar2_color = 0
    }

    if (msg.LED_bar2_state !== undefined) {
      resolved.LED_bar2_state = msg.LED_bar2_state;
    }
    else {
      resolved.LED_bar2_state = 0
    }

    return resolved;
    }
};

// Constants for message
LEDStateReport.Constants = {
  STATE_OFF: 0,
  STATE_ON: 1,
  STATE_BLINK: 2,
  STATE_ERROR: 3,
  LED_BAR_OFF: 0,
  LED_BAR_RED: 1,
  LED_BAR_GREEN: 2,
  LED_BAR_YELLOW: 3,
  LED_BAR_BLUE: 4,
  LED_BAR_MAGENTA: 5,
  LED_BAR_CYAN: 6,
  LED_BAR_WHITE: 7,
}

module.exports = LEDStateReport;
