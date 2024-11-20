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

class JoystickStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.joy_driver_status = null;
      this.axes = null;
      this.button = null;
      this.joy_driver_enable_button = null;
      this.reduce_velocity_button = null;
      this.raise_velocity_button = null;
      this.reset_velocity_button = null;
      this.vel_scale = null;
      this.linear_velocity = null;
      this.angular_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('joy_driver_status')) {
        this.joy_driver_status = initObj.joy_driver_status
      }
      else {
        this.joy_driver_status = '';
      }
      if (initObj.hasOwnProperty('axes')) {
        this.axes = initObj.axes
      }
      else {
        this.axes = [];
      }
      if (initObj.hasOwnProperty('button')) {
        this.button = initObj.button
      }
      else {
        this.button = [];
      }
      if (initObj.hasOwnProperty('joy_driver_enable_button')) {
        this.joy_driver_enable_button = initObj.joy_driver_enable_button
      }
      else {
        this.joy_driver_enable_button = false;
      }
      if (initObj.hasOwnProperty('reduce_velocity_button')) {
        this.reduce_velocity_button = initObj.reduce_velocity_button
      }
      else {
        this.reduce_velocity_button = false;
      }
      if (initObj.hasOwnProperty('raise_velocity_button')) {
        this.raise_velocity_button = initObj.raise_velocity_button
      }
      else {
        this.raise_velocity_button = false;
      }
      if (initObj.hasOwnProperty('reset_velocity_button')) {
        this.reset_velocity_button = initObj.reset_velocity_button
      }
      else {
        this.reset_velocity_button = false;
      }
      if (initObj.hasOwnProperty('vel_scale')) {
        this.vel_scale = initObj.vel_scale
      }
      else {
        this.vel_scale = 0.0;
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JoystickStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [joy_driver_status]
    bufferOffset = _serializer.string(obj.joy_driver_status, buffer, bufferOffset);
    // Serialize message field [axes]
    bufferOffset = _arraySerializer.float32(obj.axes, buffer, bufferOffset, null);
    // Serialize message field [button]
    bufferOffset = _arraySerializer.bool(obj.button, buffer, bufferOffset, null);
    // Serialize message field [joy_driver_enable_button]
    bufferOffset = _serializer.bool(obj.joy_driver_enable_button, buffer, bufferOffset);
    // Serialize message field [reduce_velocity_button]
    bufferOffset = _serializer.bool(obj.reduce_velocity_button, buffer, bufferOffset);
    // Serialize message field [raise_velocity_button]
    bufferOffset = _serializer.bool(obj.raise_velocity_button, buffer, bufferOffset);
    // Serialize message field [reset_velocity_button]
    bufferOffset = _serializer.bool(obj.reset_velocity_button, buffer, bufferOffset);
    // Serialize message field [vel_scale]
    bufferOffset = _serializer.float32(obj.vel_scale, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = _serializer.float32(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = _serializer.float32(obj.angular_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JoystickStatus
    let len;
    let data = new JoystickStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [joy_driver_status]
    data.joy_driver_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [axes]
    data.axes = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [button]
    data.button = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [joy_driver_enable_button]
    data.joy_driver_enable_button = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reduce_velocity_button]
    data.reduce_velocity_button = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [raise_velocity_button]
    data.raise_velocity_button = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reset_velocity_button]
    data.reset_velocity_button = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vel_scale]
    data.vel_scale = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.joy_driver_status.length;
    length += 4 * object.axes.length;
    length += object.button.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/JoystickStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac111940512caeb23d072699a1470e96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    string joy_driver_status         
    
    float32[] axes                   
    
    bool[] button    
    
    
    bool joy_driver_enable_button    
    bool reduce_velocity_button      
    bool raise_velocity_button       
    bool reset_velocity_button       
    
    float32 vel_scale              
    
    float32 linear_velocity          
    float32 angular_velocity         
    
    
    uint8 AXIS_LEFT_STICK_X = 0
    uint8 AXIS_LEFT_STICK_Y = 1
    uint8 AXIS_RIGHT_STICK_X = 2
    uint8 AXIS_RIGHT_STICK_Y = 3
    uint8 AXIS_DPAD_X = 4
    uint8 AXIS_DPAD_Y = 5
    uint8 AXIS_LEFT_TRIGGER = 6
    uint8 AXIS_RIGHT_TRIGGER = 7
    
    
    uint8 BUTTON_A = 0
    uint8 BUTTON_B = 1
    uint8 BUTTON_X = 2
    uint8 BUTTON_Y = 3
    uint8 BUTTON_LB = 4
    uint8 BUTTON_RB = 5
    uint8 BUTTON_BACK = 6
    uint8 BUTTON_START = 7
    uint8 BUTTON_GUIDE = 8
    uint8 BUTTON_LEFT_STICK = 9
    uint8 BUTTON_RIGHT_STICK = 10
    
    
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
    const resolved = new JoystickStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.joy_driver_status !== undefined) {
      resolved.joy_driver_status = msg.joy_driver_status;
    }
    else {
      resolved.joy_driver_status = ''
    }

    if (msg.axes !== undefined) {
      resolved.axes = msg.axes;
    }
    else {
      resolved.axes = []
    }

    if (msg.button !== undefined) {
      resolved.button = msg.button;
    }
    else {
      resolved.button = []
    }

    if (msg.joy_driver_enable_button !== undefined) {
      resolved.joy_driver_enable_button = msg.joy_driver_enable_button;
    }
    else {
      resolved.joy_driver_enable_button = false
    }

    if (msg.reduce_velocity_button !== undefined) {
      resolved.reduce_velocity_button = msg.reduce_velocity_button;
    }
    else {
      resolved.reduce_velocity_button = false
    }

    if (msg.raise_velocity_button !== undefined) {
      resolved.raise_velocity_button = msg.raise_velocity_button;
    }
    else {
      resolved.raise_velocity_button = false
    }

    if (msg.reset_velocity_button !== undefined) {
      resolved.reset_velocity_button = msg.reset_velocity_button;
    }
    else {
      resolved.reset_velocity_button = false
    }

    if (msg.vel_scale !== undefined) {
      resolved.vel_scale = msg.vel_scale;
    }
    else {
      resolved.vel_scale = 0.0
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = msg.linear_velocity;
    }
    else {
      resolved.linear_velocity = 0.0
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = 0.0
    }

    return resolved;
    }
};

// Constants for message
JoystickStatus.Constants = {
  AXIS_LEFT_STICK_X: 0,
  AXIS_LEFT_STICK_Y: 1,
  AXIS_RIGHT_STICK_X: 2,
  AXIS_RIGHT_STICK_Y: 3,
  AXIS_DPAD_X: 4,
  AXIS_DPAD_Y: 5,
  AXIS_LEFT_TRIGGER: 6,
  AXIS_RIGHT_TRIGGER: 7,
  BUTTON_A: 0,
  BUTTON_B: 1,
  BUTTON_X: 2,
  BUTTON_Y: 3,
  BUTTON_LB: 4,
  BUTTON_RB: 5,
  BUTTON_BACK: 6,
  BUTTON_START: 7,
  BUTTON_GUIDE: 8,
  BUTTON_LEFT_STICK: 9,
  BUTTON_RIGHT_STICK: 10,
}

module.exports = JoystickStatus;
