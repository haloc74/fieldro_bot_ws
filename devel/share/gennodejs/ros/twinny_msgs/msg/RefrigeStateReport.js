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

class RefrigeStateReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.refrige_sale_flag = null;
      this.error_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('refrige_sale_flag')) {
        this.refrige_sale_flag = initObj.refrige_sale_flag
      }
      else {
        this.refrige_sale_flag = false;
      }
      if (initObj.hasOwnProperty('error_flag')) {
        this.error_flag = initObj.error_flag
      }
      else {
        this.error_flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RefrigeStateReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [refrige_sale_flag]
    bufferOffset = _serializer.bool(obj.refrige_sale_flag, buffer, bufferOffset);
    // Serialize message field [error_flag]
    bufferOffset = _serializer.bool(obj.error_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RefrigeStateReport
    let len;
    let data = new RefrigeStateReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [refrige_sale_flag]
    data.refrige_sale_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_flag]
    data.error_flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/RefrigeStateReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ded1056d57c98937a68f85a05ad5210';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool refrige_sale_flag
    bool error_flag
    
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
    const resolved = new RefrigeStateReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.refrige_sale_flag !== undefined) {
      resolved.refrige_sale_flag = msg.refrige_sale_flag;
    }
    else {
      resolved.refrige_sale_flag = false
    }

    if (msg.error_flag !== undefined) {
      resolved.error_flag = msg.error_flag;
    }
    else {
      resolved.error_flag = false
    }

    return resolved;
    }
};

module.exports = RefrigeStateReport;
