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

class PingStatusReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.device_name = null;
      this.device_ip = null;
      this.ping_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('device_name')) {
        this.device_name = initObj.device_name
      }
      else {
        this.device_name = '';
      }
      if (initObj.hasOwnProperty('device_ip')) {
        this.device_ip = initObj.device_ip
      }
      else {
        this.device_ip = '';
      }
      if (initObj.hasOwnProperty('ping_status')) {
        this.ping_status = initObj.ping_status
      }
      else {
        this.ping_status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PingStatusReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [device_name]
    bufferOffset = _serializer.string(obj.device_name, buffer, bufferOffset);
    // Serialize message field [device_ip]
    bufferOffset = _serializer.string(obj.device_ip, buffer, bufferOffset);
    // Serialize message field [ping_status]
    bufferOffset = _serializer.bool(obj.ping_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PingStatusReport
    let len;
    let data = new PingStatusReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [device_name]
    data.device_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device_ip]
    data.device_ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ping_status]
    data.ping_status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.device_name.length;
    length += object.device_ip.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/PingStatusReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7dc823ed209aaeabcd0a55272cee0bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string device_name
    string device_ip
    bool ping_status
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
    const resolved = new PingStatusReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.device_name !== undefined) {
      resolved.device_name = msg.device_name;
    }
    else {
      resolved.device_name = ''
    }

    if (msg.device_ip !== undefined) {
      resolved.device_ip = msg.device_ip;
    }
    else {
      resolved.device_ip = ''
    }

    if (msg.ping_status !== undefined) {
      resolved.ping_status = msg.ping_status;
    }
    else {
      resolved.ping_status = false
    }

    return resolved;
    }
};

module.exports = PingStatusReport;
