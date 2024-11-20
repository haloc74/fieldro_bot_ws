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

class DesiredActualCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.desiredPose = null;
      this.desiredVel = null;
      this.actualPose = null;
      this.actualVel = null;
      this.commandVel = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('desiredPose')) {
        this.desiredPose = initObj.desiredPose
      }
      else {
        this.desiredPose = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('desiredVel')) {
        this.desiredVel = initObj.desiredVel
      }
      else {
        this.desiredVel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('actualPose')) {
        this.actualPose = initObj.actualPose
      }
      else {
        this.actualPose = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('actualVel')) {
        this.actualVel = initObj.actualVel
      }
      else {
        this.actualVel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('commandVel')) {
        this.commandVel = initObj.commandVel
      }
      else {
        this.commandVel = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DesiredActualCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [desiredPose]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.desiredPose, buffer, bufferOffset);
    // Serialize message field [desiredVel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.desiredVel, buffer, bufferOffset);
    // Serialize message field [actualPose]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.actualPose, buffer, bufferOffset);
    // Serialize message field [actualVel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.actualVel, buffer, bufferOffset);
    // Serialize message field [commandVel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.commandVel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DesiredActualCommand
    let len;
    let data = new DesiredActualCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [desiredPose]
    data.desiredPose = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [desiredVel]
    data.desiredVel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [actualPose]
    data.actualPose = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [actualVel]
    data.actualVel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [commandVel]
    data.commandVel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/DesiredActualCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eed852e2eabe4ebf8afd3f4ced2b8875';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Vector3 desiredPose
    geometry_msgs/Vector3 desiredVel
    geometry_msgs/Vector3 actualPose
    geometry_msgs/Vector3 actualVel
    geometry_msgs/Vector3 commandVel
    
    
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
    const resolved = new DesiredActualCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.desiredPose !== undefined) {
      resolved.desiredPose = geometry_msgs.msg.Vector3.Resolve(msg.desiredPose)
    }
    else {
      resolved.desiredPose = new geometry_msgs.msg.Vector3()
    }

    if (msg.desiredVel !== undefined) {
      resolved.desiredVel = geometry_msgs.msg.Vector3.Resolve(msg.desiredVel)
    }
    else {
      resolved.desiredVel = new geometry_msgs.msg.Vector3()
    }

    if (msg.actualPose !== undefined) {
      resolved.actualPose = geometry_msgs.msg.Vector3.Resolve(msg.actualPose)
    }
    else {
      resolved.actualPose = new geometry_msgs.msg.Vector3()
    }

    if (msg.actualVel !== undefined) {
      resolved.actualVel = geometry_msgs.msg.Vector3.Resolve(msg.actualVel)
    }
    else {
      resolved.actualVel = new geometry_msgs.msg.Vector3()
    }

    if (msg.commandVel !== undefined) {
      resolved.commandVel = geometry_msgs.msg.Vector3.Resolve(msg.commandVel)
    }
    else {
      resolved.commandVel = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = DesiredActualCommand;
