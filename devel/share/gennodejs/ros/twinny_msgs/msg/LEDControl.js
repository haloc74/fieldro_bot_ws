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

class LEDControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.ID = null;
      this.STATE = null;
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
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('STATE')) {
        this.STATE = initObj.STATE
      }
      else {
        this.STATE = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.uint8(obj.ID, buffer, bufferOffset);
    // Serialize message field [STATE]
    bufferOffset = _serializer.uint8(obj.STATE, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDControl
    let len;
    let data = new LEDControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [STATE]
    data.STATE = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/LEDControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '280cc3f1ed08eaa950d3ccca2f9e6e3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    
    uint8 LED_0=0
    uint8 LED_1=1
    uint8 LED_2=2
    uint8 LED_3=3 
    uint8 LED_4=4
    uint8 LED_5=5
    
    uint8 LED_6=6
    uint8 LED_7=7
    uint8 LED_8=8
    uint8 LED_9=9
    uint8 LED_10=10
    uint8 LED_11=11
    
    uint8 LED_BAR_OFF=100
    uint8 LED_BAR_RED=101
    uint8 LED_BAR_GREEN=102
    uint8 LED_BAR_YELLOW=103
    uint8 LED_BAR_BLUE=104
    uint8 LED_BAR_MAGENTA=105
    uint8 LED_BAR_CYAN=106
    uint8 LED_BAR_WHITE=107
    
    uint8 LED_BAR_OFF_2=200
    uint8 LED_BAR_RED_2=201
    uint8 LED_BAR_GREEN_2=202
    uint8 LED_BAR_YELLOW_2=203
    uint8 LED_BAR_BLUE_2=204
    uint8 LED_BAR_MAGENTA_2=205
    uint8 LED_BAR_CYAN_2=206
    uint8 LED_BAR_WHITE_2=207
    
    uint8 LED_ALL=255
    
    uint8 STATE_OFF=0
    uint8 STATE_ON=1
    uint8 STATE_BLINK=2
    uint8 STATE_KEEP=3
    
    uint8 ID
    uint8 STATE
    
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
    const resolved = new LEDControl(null);
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

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.STATE !== undefined) {
      resolved.STATE = msg.STATE;
    }
    else {
      resolved.STATE = 0
    }

    return resolved;
    }
};

// Constants for message
LEDControl.Constants = {
  LED_0: 0,
  LED_1: 1,
  LED_2: 2,
  LED_3: 3,
  LED_4: 4,
  LED_5: 5,
  LED_6: 6,
  LED_7: 7,
  LED_8: 8,
  LED_9: 9,
  LED_10: 10,
  LED_11: 11,
  LED_BAR_OFF: 100,
  LED_BAR_RED: 101,
  LED_BAR_GREEN: 102,
  LED_BAR_YELLOW: 103,
  LED_BAR_BLUE: 104,
  LED_BAR_MAGENTA: 105,
  LED_BAR_CYAN: 106,
  LED_BAR_WHITE: 107,
  LED_BAR_OFF_2: 200,
  LED_BAR_RED_2: 201,
  LED_BAR_GREEN_2: 202,
  LED_BAR_YELLOW_2: 203,
  LED_BAR_BLUE_2: 204,
  LED_BAR_MAGENTA_2: 205,
  LED_BAR_CYAN_2: 206,
  LED_BAR_WHITE_2: 207,
  LED_ALL: 255,
  STATE_OFF: 0,
  STATE_ON: 1,
  STATE_BLINK: 2,
  STATE_KEEP: 3,
}

module.exports = LEDControl;
