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

class CargoBoxControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.cargobox_id = null;
      this.cargobox_command = null;
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
      if (initObj.hasOwnProperty('cargobox_id')) {
        this.cargobox_id = initObj.cargobox_id
      }
      else {
        this.cargobox_id = 0;
      }
      if (initObj.hasOwnProperty('cargobox_command')) {
        this.cargobox_command = initObj.cargobox_command
      }
      else {
        this.cargobox_command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CargoBoxControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [cargobox_id]
    bufferOffset = _serializer.uint32(obj.cargobox_id, buffer, bufferOffset);
    // Serialize message field [cargobox_command]
    bufferOffset = _serializer.int32(obj.cargobox_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CargoBoxControl
    let len;
    let data = new CargoBoxControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cargobox_id]
    data.cargobox_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cargobox_command]
    data.cargobox_command = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/CargoBoxControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c439b05678863e7514e389ae7882b3f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    
    uint32 cargobox_id
    
    int32 CARGOBOX_CMD_INIT=0
    int32 CARGOBOX_CMD_LOCK=1
    int32 CARGOBOX_CMD_UNLOCK=2
    int32 CARGOBOX_CMD_LAMP_ON=3
    int32 CARGOBOX_CMD_LAMP_OFF=4
    
    int32 cargobox_command
    
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
    const resolved = new CargoBoxControl(null);
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

    if (msg.cargobox_id !== undefined) {
      resolved.cargobox_id = msg.cargobox_id;
    }
    else {
      resolved.cargobox_id = 0
    }

    if (msg.cargobox_command !== undefined) {
      resolved.cargobox_command = msg.cargobox_command;
    }
    else {
      resolved.cargobox_command = 0
    }

    return resolved;
    }
};

// Constants for message
CargoBoxControl.Constants = {
  CARGOBOX_CMD_INIT: 0,
  CARGOBOX_CMD_LOCK: 1,
  CARGOBOX_CMD_UNLOCK: 2,
  CARGOBOX_CMD_LAMP_ON: 3,
  CARGOBOX_CMD_LAMP_OFF: 4,
}

module.exports = CargoBoxControl;
