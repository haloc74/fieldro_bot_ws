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

class ManualArmCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.hand_grip_forward_backward = null;
      this.cylinder_forward_backward = null;
      this.battery_cylinder_forward_backward = null;
      this.magazine01_lock = null;
      this.magazine02_lock = null;
      this.cylinder_up_down = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('hand_grip_forward_backward')) {
        this.hand_grip_forward_backward = initObj.hand_grip_forward_backward
      }
      else {
        this.hand_grip_forward_backward = 0;
      }
      if (initObj.hasOwnProperty('cylinder_forward_backward')) {
        this.cylinder_forward_backward = initObj.cylinder_forward_backward
      }
      else {
        this.cylinder_forward_backward = 0;
      }
      if (initObj.hasOwnProperty('battery_cylinder_forward_backward')) {
        this.battery_cylinder_forward_backward = initObj.battery_cylinder_forward_backward
      }
      else {
        this.battery_cylinder_forward_backward = 0;
      }
      if (initObj.hasOwnProperty('magazine01_lock')) {
        this.magazine01_lock = initObj.magazine01_lock
      }
      else {
        this.magazine01_lock = 0;
      }
      if (initObj.hasOwnProperty('magazine02_lock')) {
        this.magazine02_lock = initObj.magazine02_lock
      }
      else {
        this.magazine02_lock = 0;
      }
      if (initObj.hasOwnProperty('cylinder_up_down')) {
        this.cylinder_up_down = initObj.cylinder_up_down
      }
      else {
        this.cylinder_up_down = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManualArmCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [hand_grip_forward_backward]
    bufferOffset = _serializer.uint8(obj.hand_grip_forward_backward, buffer, bufferOffset);
    // Serialize message field [cylinder_forward_backward]
    bufferOffset = _serializer.uint8(obj.cylinder_forward_backward, buffer, bufferOffset);
    // Serialize message field [battery_cylinder_forward_backward]
    bufferOffset = _serializer.uint8(obj.battery_cylinder_forward_backward, buffer, bufferOffset);
    // Serialize message field [magazine01_lock]
    bufferOffset = _serializer.uint8(obj.magazine01_lock, buffer, bufferOffset);
    // Serialize message field [magazine02_lock]
    bufferOffset = _serializer.uint8(obj.magazine02_lock, buffer, bufferOffset);
    // Serialize message field [cylinder_up_down]
    bufferOffset = _serializer.uint8(obj.cylinder_up_down, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManualArmCommand
    let len;
    let data = new ManualArmCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [hand_grip_forward_backward]
    data.hand_grip_forward_backward = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cylinder_forward_backward]
    data.cylinder_forward_backward = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [battery_cylinder_forward_backward]
    data.battery_cylinder_forward_backward = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [magazine01_lock]
    data.magazine01_lock = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [magazine02_lock]
    data.magazine02_lock = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cylinder_up_down]
    data.cylinder_up_down = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/ManualArmCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8da8f6f4c09538ece1a14440b85a65a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 NO_COMMAND = 0
    
    uint8 FORWARD = 1
    uint8 BACKWARD = 2
    
    uint8 hand_grip_forward_backward
    uint8 cylinder_forward_backward
    uint8 battery_cylinder_forward_backward
    
    uint8 MAGAZINE_UNLOCK = 1
    uint8 MAGAZINE_LOCK = 2
    
    uint8 magazine01_lock
    uint8 magazine02_lock
    
    uint8 CYLINDER_UP = 1
    uint8 CYLINDER_DOWN = 2
    
    uint8 cylinder_up_down
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
    const resolved = new ManualArmCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.hand_grip_forward_backward !== undefined) {
      resolved.hand_grip_forward_backward = msg.hand_grip_forward_backward;
    }
    else {
      resolved.hand_grip_forward_backward = 0
    }

    if (msg.cylinder_forward_backward !== undefined) {
      resolved.cylinder_forward_backward = msg.cylinder_forward_backward;
    }
    else {
      resolved.cylinder_forward_backward = 0
    }

    if (msg.battery_cylinder_forward_backward !== undefined) {
      resolved.battery_cylinder_forward_backward = msg.battery_cylinder_forward_backward;
    }
    else {
      resolved.battery_cylinder_forward_backward = 0
    }

    if (msg.magazine01_lock !== undefined) {
      resolved.magazine01_lock = msg.magazine01_lock;
    }
    else {
      resolved.magazine01_lock = 0
    }

    if (msg.magazine02_lock !== undefined) {
      resolved.magazine02_lock = msg.magazine02_lock;
    }
    else {
      resolved.magazine02_lock = 0
    }

    if (msg.cylinder_up_down !== undefined) {
      resolved.cylinder_up_down = msg.cylinder_up_down;
    }
    else {
      resolved.cylinder_up_down = 0
    }

    return resolved;
    }
};

// Constants for message
ManualArmCommand.Constants = {
  NO_COMMAND: 0,
  FORWARD: 1,
  BACKWARD: 2,
  MAGAZINE_UNLOCK: 1,
  MAGAZINE_LOCK: 2,
  CYLINDER_UP: 1,
  CYLINDER_DOWN: 2,
}

module.exports = ManualArmCommand;
