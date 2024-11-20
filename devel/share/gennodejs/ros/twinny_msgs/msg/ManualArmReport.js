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

class ManualArmReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.hand_grip_forward_backward_report = null;
      this.cylinder_forward_backward_report = null;
      this.battery_cylinder_forward_backward_report = null;
      this.magazine01_lock_unlock_report = null;
      this.magazine02_lock_unlock_report = null;
      this.cylinder_up_down_report = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('hand_grip_forward_backward_report')) {
        this.hand_grip_forward_backward_report = initObj.hand_grip_forward_backward_report
      }
      else {
        this.hand_grip_forward_backward_report = 0;
      }
      if (initObj.hasOwnProperty('cylinder_forward_backward_report')) {
        this.cylinder_forward_backward_report = initObj.cylinder_forward_backward_report
      }
      else {
        this.cylinder_forward_backward_report = 0;
      }
      if (initObj.hasOwnProperty('battery_cylinder_forward_backward_report')) {
        this.battery_cylinder_forward_backward_report = initObj.battery_cylinder_forward_backward_report
      }
      else {
        this.battery_cylinder_forward_backward_report = 0;
      }
      if (initObj.hasOwnProperty('magazine01_lock_unlock_report')) {
        this.magazine01_lock_unlock_report = initObj.magazine01_lock_unlock_report
      }
      else {
        this.magazine01_lock_unlock_report = 0;
      }
      if (initObj.hasOwnProperty('magazine02_lock_unlock_report')) {
        this.magazine02_lock_unlock_report = initObj.magazine02_lock_unlock_report
      }
      else {
        this.magazine02_lock_unlock_report = 0;
      }
      if (initObj.hasOwnProperty('cylinder_up_down_report')) {
        this.cylinder_up_down_report = initObj.cylinder_up_down_report
      }
      else {
        this.cylinder_up_down_report = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManualArmReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [hand_grip_forward_backward_report]
    bufferOffset = _serializer.uint8(obj.hand_grip_forward_backward_report, buffer, bufferOffset);
    // Serialize message field [cylinder_forward_backward_report]
    bufferOffset = _serializer.uint8(obj.cylinder_forward_backward_report, buffer, bufferOffset);
    // Serialize message field [battery_cylinder_forward_backward_report]
    bufferOffset = _serializer.uint8(obj.battery_cylinder_forward_backward_report, buffer, bufferOffset);
    // Serialize message field [magazine01_lock_unlock_report]
    bufferOffset = _serializer.uint8(obj.magazine01_lock_unlock_report, buffer, bufferOffset);
    // Serialize message field [magazine02_lock_unlock_report]
    bufferOffset = _serializer.uint8(obj.magazine02_lock_unlock_report, buffer, bufferOffset);
    // Serialize message field [cylinder_up_down_report]
    bufferOffset = _serializer.uint8(obj.cylinder_up_down_report, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManualArmReport
    let len;
    let data = new ManualArmReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [hand_grip_forward_backward_report]
    data.hand_grip_forward_backward_report = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cylinder_forward_backward_report]
    data.cylinder_forward_backward_report = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [battery_cylinder_forward_backward_report]
    data.battery_cylinder_forward_backward_report = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [magazine01_lock_unlock_report]
    data.magazine01_lock_unlock_report = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [magazine02_lock_unlock_report]
    data.magazine02_lock_unlock_report = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cylinder_up_down_report]
    data.cylinder_up_down_report = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/ManualArmReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10bf00d36649a07410532bfaed58534a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 NOT_COMPLETE = 0
    
    uint8 FORWARD_COMPLETE = 1
    uint8 BACKWARD_COMPLETE = 2
    
    uint8 hand_grip_forward_backward_report
    uint8 cylinder_forward_backward_report
    uint8 battery_cylinder_forward_backward_report
    
    uint8 LOCK_COMPLETE = 1
    uint8 UNLOCK_COMPLETE = 2
    
    uint8 magazine01_lock_unlock_report
    uint8 magazine02_lock_unlock_report
    
    uint8 UP_COMPLETE = 1
    uint8 DOWN_COMPLETE = 2
    
    uint8 cylinder_up_down_report
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
    const resolved = new ManualArmReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.hand_grip_forward_backward_report !== undefined) {
      resolved.hand_grip_forward_backward_report = msg.hand_grip_forward_backward_report;
    }
    else {
      resolved.hand_grip_forward_backward_report = 0
    }

    if (msg.cylinder_forward_backward_report !== undefined) {
      resolved.cylinder_forward_backward_report = msg.cylinder_forward_backward_report;
    }
    else {
      resolved.cylinder_forward_backward_report = 0
    }

    if (msg.battery_cylinder_forward_backward_report !== undefined) {
      resolved.battery_cylinder_forward_backward_report = msg.battery_cylinder_forward_backward_report;
    }
    else {
      resolved.battery_cylinder_forward_backward_report = 0
    }

    if (msg.magazine01_lock_unlock_report !== undefined) {
      resolved.magazine01_lock_unlock_report = msg.magazine01_lock_unlock_report;
    }
    else {
      resolved.magazine01_lock_unlock_report = 0
    }

    if (msg.magazine02_lock_unlock_report !== undefined) {
      resolved.magazine02_lock_unlock_report = msg.magazine02_lock_unlock_report;
    }
    else {
      resolved.magazine02_lock_unlock_report = 0
    }

    if (msg.cylinder_up_down_report !== undefined) {
      resolved.cylinder_up_down_report = msg.cylinder_up_down_report;
    }
    else {
      resolved.cylinder_up_down_report = 0
    }

    return resolved;
    }
};

// Constants for message
ManualArmReport.Constants = {
  NOT_COMPLETE: 0,
  FORWARD_COMPLETE: 1,
  BACKWARD_COMPLETE: 2,
  LOCK_COMPLETE: 1,
  UNLOCK_COMPLETE: 2,
  UP_COMPLETE: 1,
  DOWN_COMPLETE: 2,
}

module.exports = ManualArmReport;
