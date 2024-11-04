// Auto-generated. Do not edit!

// (in-package trash_bot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Pose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.theta = null;
      this.linear_velocity = null;
      this.angular_velocity = null;
      this.US_1 = null;
      this.US_2 = null;
      this.US_3 = null;
      this.US_4 = null;
      this.platform_state = null;
      this.left_motor_state = null;
      this.right_motor_state = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
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
      if (initObj.hasOwnProperty('US_1')) {
        this.US_1 = initObj.US_1
      }
      else {
        this.US_1 = 0;
      }
      if (initObj.hasOwnProperty('US_2')) {
        this.US_2 = initObj.US_2
      }
      else {
        this.US_2 = 0;
      }
      if (initObj.hasOwnProperty('US_3')) {
        this.US_3 = initObj.US_3
      }
      else {
        this.US_3 = 0;
      }
      if (initObj.hasOwnProperty('US_4')) {
        this.US_4 = initObj.US_4
      }
      else {
        this.US_4 = 0;
      }
      if (initObj.hasOwnProperty('platform_state')) {
        this.platform_state = initObj.platform_state
      }
      else {
        this.platform_state = 0;
      }
      if (initObj.hasOwnProperty('left_motor_state')) {
        this.left_motor_state = initObj.left_motor_state
      }
      else {
        this.left_motor_state = 0;
      }
      if (initObj.hasOwnProperty('right_motor_state')) {
        this.right_motor_state = initObj.right_motor_state
      }
      else {
        this.right_motor_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pose
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = _serializer.float32(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = _serializer.float32(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [US_1]
    bufferOffset = _serializer.uint8(obj.US_1, buffer, bufferOffset);
    // Serialize message field [US_2]
    bufferOffset = _serializer.uint8(obj.US_2, buffer, bufferOffset);
    // Serialize message field [US_3]
    bufferOffset = _serializer.uint8(obj.US_3, buffer, bufferOffset);
    // Serialize message field [US_4]
    bufferOffset = _serializer.uint8(obj.US_4, buffer, bufferOffset);
    // Serialize message field [platform_state]
    bufferOffset = _serializer.uint8(obj.platform_state, buffer, bufferOffset);
    // Serialize message field [left_motor_state]
    bufferOffset = _serializer.uint8(obj.left_motor_state, buffer, bufferOffset);
    // Serialize message field [right_motor_state]
    bufferOffset = _serializer.uint8(obj.right_motor_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pose
    let len;
    let data = new Pose(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [US_1]
    data.US_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [US_2]
    data.US_2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [US_3]
    data.US_3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [US_4]
    data.US_4 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [platform_state]
    data.platform_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left_motor_state]
    data.left_motor_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right_motor_state]
    data.right_motor_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'trash_bot/Pose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '253d53f3482ae049afa845efe1727f65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x
    float32 y
    float32 theta
    float32 linear_velocity
    float32 angular_velocity
    uint8 US_1
    uint8 US_2
    uint8 US_3
    uint8 US_4
    uint8 platform_state
    uint8 left_motor_state
    uint8 right_motor_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pose(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
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

    if (msg.US_1 !== undefined) {
      resolved.US_1 = msg.US_1;
    }
    else {
      resolved.US_1 = 0
    }

    if (msg.US_2 !== undefined) {
      resolved.US_2 = msg.US_2;
    }
    else {
      resolved.US_2 = 0
    }

    if (msg.US_3 !== undefined) {
      resolved.US_3 = msg.US_3;
    }
    else {
      resolved.US_3 = 0
    }

    if (msg.US_4 !== undefined) {
      resolved.US_4 = msg.US_4;
    }
    else {
      resolved.US_4 = 0
    }

    if (msg.platform_state !== undefined) {
      resolved.platform_state = msg.platform_state;
    }
    else {
      resolved.platform_state = 0
    }

    if (msg.left_motor_state !== undefined) {
      resolved.left_motor_state = msg.left_motor_state;
    }
    else {
      resolved.left_motor_state = 0
    }

    if (msg.right_motor_state !== undefined) {
      resolved.right_motor_state = msg.right_motor_state;
    }
    else {
      resolved.right_motor_state = 0
    }

    return resolved;
    }
};

module.exports = Pose;
