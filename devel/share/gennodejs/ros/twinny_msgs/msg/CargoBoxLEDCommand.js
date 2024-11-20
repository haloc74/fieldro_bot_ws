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

class CargoBoxLEDCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cargobox_id = null;
      this.cargobox_led_id = null;
      this.cargobox_led_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cargobox_id')) {
        this.cargobox_id = initObj.cargobox_id
      }
      else {
        this.cargobox_id = 0;
      }
      if (initObj.hasOwnProperty('cargobox_led_id')) {
        this.cargobox_led_id = initObj.cargobox_led_id
      }
      else {
        this.cargobox_led_id = 0;
      }
      if (initObj.hasOwnProperty('cargobox_led_status')) {
        this.cargobox_led_status = initObj.cargobox_led_status
      }
      else {
        this.cargobox_led_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CargoBoxLEDCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cargobox_id]
    bufferOffset = _serializer.uint8(obj.cargobox_id, buffer, bufferOffset);
    // Serialize message field [cargobox_led_id]
    bufferOffset = _serializer.uint8(obj.cargobox_led_id, buffer, bufferOffset);
    // Serialize message field [cargobox_led_status]
    bufferOffset = _serializer.uint8(obj.cargobox_led_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CargoBoxLEDCommand
    let len;
    let data = new CargoBoxLEDCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cargobox_id]
    data.cargobox_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cargobox_led_id]
    data.cargobox_led_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cargobox_led_status]
    data.cargobox_led_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/CargoBoxLEDCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63d81b1bd2386d79a57290dc39a16fa5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    uint8 cargobox_id
    uint8 cargobox_led_id
    uint8 cargobox_led_status
    
    uint8 LED_BAR_OFF = 100
    uint8 LED_BAR_RED = 101
    uint8 LED_BAR_GREEN = 102
    uint8 LED_BAR_YELLOW = 103
    uint8 LED_BAR_BLUE = 104
    uint8 LED_BAR_MAGENTA = 105
    uint8 LED_BAR_CYAN = 106
    uint8 LED_BAR_WHITE = 107
    
    uint8 STATE_OFF=0
    uint8 STATE_ON=1
    uint8 STATE_BLINK=2
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
    const resolved = new CargoBoxLEDCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cargobox_id !== undefined) {
      resolved.cargobox_id = msg.cargobox_id;
    }
    else {
      resolved.cargobox_id = 0
    }

    if (msg.cargobox_led_id !== undefined) {
      resolved.cargobox_led_id = msg.cargobox_led_id;
    }
    else {
      resolved.cargobox_led_id = 0
    }

    if (msg.cargobox_led_status !== undefined) {
      resolved.cargobox_led_status = msg.cargobox_led_status;
    }
    else {
      resolved.cargobox_led_status = 0
    }

    return resolved;
    }
};

// Constants for message
CargoBoxLEDCommand.Constants = {
  LED_BAR_OFF: 100,
  LED_BAR_RED: 101,
  LED_BAR_GREEN: 102,
  LED_BAR_YELLOW: 103,
  LED_BAR_BLUE: 104,
  LED_BAR_MAGENTA: 105,
  LED_BAR_CYAN: 106,
  LED_BAR_WHITE: 107,
  STATE_OFF: 0,
  STATE_ON: 1,
  STATE_BLINK: 2,
}

module.exports = CargoBoxLEDCommand;
