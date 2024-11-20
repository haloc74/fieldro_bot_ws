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

class ConveyorCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.conveyor1_control = null;
      this.conveyor2_control = null;
      this.door_open_control = null;
      this.fall_prevention_device_control = null;
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
      if (initObj.hasOwnProperty('conveyor1_control')) {
        this.conveyor1_control = initObj.conveyor1_control
      }
      else {
        this.conveyor1_control = 0;
      }
      if (initObj.hasOwnProperty('conveyor2_control')) {
        this.conveyor2_control = initObj.conveyor2_control
      }
      else {
        this.conveyor2_control = 0;
      }
      if (initObj.hasOwnProperty('door_open_control')) {
        this.door_open_control = initObj.door_open_control
      }
      else {
        this.door_open_control = false;
      }
      if (initObj.hasOwnProperty('fall_prevention_device_control')) {
        this.fall_prevention_device_control = initObj.fall_prevention_device_control
      }
      else {
        this.fall_prevention_device_control = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConveyorCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [conveyor1_control]
    bufferOffset = _serializer.int8(obj.conveyor1_control, buffer, bufferOffset);
    // Serialize message field [conveyor2_control]
    bufferOffset = _serializer.int8(obj.conveyor2_control, buffer, bufferOffset);
    // Serialize message field [door_open_control]
    bufferOffset = _serializer.bool(obj.door_open_control, buffer, bufferOffset);
    // Serialize message field [fall_prevention_device_control]
    bufferOffset = _serializer.bool(obj.fall_prevention_device_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConveyorCommand
    let len;
    let data = new ConveyorCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [conveyor1_control]
    data.conveyor1_control = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [conveyor2_control]
    data.conveyor2_control = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [door_open_control]
    data.door_open_control = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fall_prevention_device_control]
    data.fall_prevention_device_control = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/ConveyorCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a14a0f1bac068f9cdcfcbcb626cbfca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    
    int8 CONVEYOR_CTRL_REVERSE = -1
    int8 CONVEYOR_CTRL_STOP    = 0
    int8 CONVEYOR_CTRL_FORWARD = 1
    
    int8 conveyor1_control
    int8 conveyor2_control
    
    bool door_open_control
    
    bool fall_prevention_device_control
    
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
    const resolved = new ConveyorCommand(null);
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

    if (msg.conveyor1_control !== undefined) {
      resolved.conveyor1_control = msg.conveyor1_control;
    }
    else {
      resolved.conveyor1_control = 0
    }

    if (msg.conveyor2_control !== undefined) {
      resolved.conveyor2_control = msg.conveyor2_control;
    }
    else {
      resolved.conveyor2_control = 0
    }

    if (msg.door_open_control !== undefined) {
      resolved.door_open_control = msg.door_open_control;
    }
    else {
      resolved.door_open_control = false
    }

    if (msg.fall_prevention_device_control !== undefined) {
      resolved.fall_prevention_device_control = msg.fall_prevention_device_control;
    }
    else {
      resolved.fall_prevention_device_control = false
    }

    return resolved;
    }
};

// Constants for message
ConveyorCommand.Constants = {
  CONVEYOR_CTRL_REVERSE: -1,
  CONVEYOR_CTRL_STOP: 0,
  CONVEYOR_CTRL_FORWARD: 1,
}

module.exports = ConveyorCommand;
