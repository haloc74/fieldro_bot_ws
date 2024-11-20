// Auto-generated. Do not edit!

// (in-package twinny_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PathCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.valid_length = null;
      this.path = null;
      this.front_vel = null;
      this.current_vel = null;
      this.current_pose = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('valid_length')) {
        this.valid_length = initObj.valid_length
      }
      else {
        this.valid_length = 0;
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new Array(200).fill(new geometry_msgs.msg.Pose2D());
      }
      if (initObj.hasOwnProperty('front_vel')) {
        this.front_vel = initObj.front_vel
      }
      else {
        this.front_vel = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('current_vel')) {
        this.current_vel = initObj.current_vel
      }
      else {
        this.current_vel = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('current_pose')) {
        this.current_pose = initObj.current_pose
      }
      else {
        this.current_pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = new Array(200).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [valid_length]
    bufferOffset = _serializer.uint8(obj.valid_length, buffer, bufferOffset);
    // Check that the constant length array field [path] has the right length
    if (obj.path.length !== 200) {
      throw new Error('Unable to serialize array field path - length must be 200')
    }
    // Serialize message field [path]
    obj.path.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [front_vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.front_vel, buffer, bufferOffset);
    // Serialize message field [current_vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.current_vel, buffer, bufferOffset);
    // Serialize message field [current_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.current_pose, buffer, bufferOffset);
    // Check that the constant length array field [mode] has the right length
    if (obj.mode.length !== 200) {
      throw new Error('Unable to serialize array field mode - length must be 200')
    }
    // Serialize message field [mode]
    bufferOffset = _arraySerializer.uint8(obj.mode, buffer, bufferOffset, 200);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathCommand
    let len;
    let data = new PathCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [valid_length]
    data.valid_length = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [path]
    len = 200;
    data.path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [front_vel]
    data.front_vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_vel]
    data.current_vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_pose]
    data.current_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _arrayDeserializer.uint8(buffer, bufferOffset, 200)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 5121;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/PathCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07a34c8ab221feb76ed11d3cef84b7c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 MAX_LENGTH=200
    uint8 valid_length
    
    geometry_msgs/Pose2D[200] path
    geometry_msgs/Twist front_vel
    geometry_msgs/Twist current_vel
    geometry_msgs/Pose2D current_pose
    
    uint8[200] mode
    uint8 DRIVING_MODE=1
    uint8 ROTATING_MODE=2
    uint8 ROTATING_MODE_IN=3
    uint8 ROTATING_MODE_OUT_CW=4
    uint8 ROTATING_MODE_OUT_CCW=5
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
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.valid_length !== undefined) {
      resolved.valid_length = msg.valid_length;
    }
    else {
      resolved.valid_length = 0
    }

    if (msg.path !== undefined) {
      resolved.path = new Array(200)
      for (let i = 0; i < resolved.path.length; ++i) {
        if (msg.path.length > i) {
          resolved.path[i] = geometry_msgs.msg.Pose2D.Resolve(msg.path[i]);
        }
        else {
          resolved.path[i] = new geometry_msgs.msg.Pose2D();
        }
      }
    }
    else {
      resolved.path = new Array(200).fill(new geometry_msgs.msg.Pose2D())
    }

    if (msg.front_vel !== undefined) {
      resolved.front_vel = geometry_msgs.msg.Twist.Resolve(msg.front_vel)
    }
    else {
      resolved.front_vel = new geometry_msgs.msg.Twist()
    }

    if (msg.current_vel !== undefined) {
      resolved.current_vel = geometry_msgs.msg.Twist.Resolve(msg.current_vel)
    }
    else {
      resolved.current_vel = new geometry_msgs.msg.Twist()
    }

    if (msg.current_pose !== undefined) {
      resolved.current_pose = geometry_msgs.msg.Pose2D.Resolve(msg.current_pose)
    }
    else {
      resolved.current_pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = new Array(200).fill(0)
    }

    return resolved;
    }
};

// Constants for message
PathCommand.Constants = {
  MAX_LENGTH: 200,
  DRIVING_MODE: 1,
  ROTATING_MODE: 2,
  ROTATING_MODE_IN: 3,
  ROTATING_MODE_OUT_CW: 4,
  ROTATING_MODE_OUT_CCW: 5,
}

module.exports = PathCommand;
