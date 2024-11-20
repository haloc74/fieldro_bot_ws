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

class PlcMissionStateReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.is_manual = null;
      this.status = null;
      this.magazine_slot = null;
      this.error = null;
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
      if (initObj.hasOwnProperty('is_manual')) {
        this.is_manual = initObj.is_manual
      }
      else {
        this.is_manual = false;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('magazine_slot')) {
        this.magazine_slot = initObj.magazine_slot
      }
      else {
        this.magazine_slot = [];
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlcMissionStateReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [is_manual]
    bufferOffset = _serializer.bool(obj.is_manual, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [magazine_slot]
    bufferOffset = _arraySerializer.string(obj.magazine_slot, buffer, bufferOffset, null);
    // Serialize message field [error]
    bufferOffset = _serializer.uint32(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlcMissionStateReport
    let len;
    let data = new PlcMissionStateReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_manual]
    data.is_manual = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [magazine_slot]
    data.magazine_slot = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [error]
    data.error = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    object.magazine_slot.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/PlcMissionStateReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2b9c2a3491b99084010a4db4b12614d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    
    bool is_manual
    
    uint8 READY = 0
    uint8 WORKING = 1
    uint8 COMPLETE = 2
    uint8 FAIL = 3
    uint8 status
    
    uint32 NO_ALARM = 0
    uint32 ALARM_DRIVE_DISABLE = 1
    
    uint32 ALARM_LOAD_VISION_NG = 11
    uint32 ALARM_LOAD_WORKSPACE_NG = 12
    uint32 ALARM_UNLOAD_BAN = 13
    uint32 ALARM_LOAD_RFID_READ_NG = 14
    uint32 ALARM_LOAD_RFID_CHECK = 15
    
    uint32 ALARM_UNLOAD_VISION_NG = 21
    uint32 ALARM_UNLOAD_WORKSPACE_NG = 22
    uint32 ALARM_UNLOAD_RFID_CHECK = 23
    
    uint32 ALARM_BATTERY_VISION_NG = 31
    uint32 ALARM_BATTERY_WORKSPACE_NG = 32
    uint32 ALARM_PIO_READY_DELAY = 33
    uint32 ALARM_PIO_BATTERY_REQUEST_RESPONSE_DELAY = 34
    uint32 ALARM_PIO_BATTERY_COMPLETE_DELAY =35
    uint32 ALARM_PIO_IF_COMPLETE_DELAY = 36
    
    string[] magazine_slot
    uint32 error
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
    const resolved = new PlcMissionStateReport(null);
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

    if (msg.is_manual !== undefined) {
      resolved.is_manual = msg.is_manual;
    }
    else {
      resolved.is_manual = false
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.magazine_slot !== undefined) {
      resolved.magazine_slot = msg.magazine_slot;
    }
    else {
      resolved.magazine_slot = []
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    return resolved;
    }
};

// Constants for message
PlcMissionStateReport.Constants = {
  READY: 0,
  WORKING: 1,
  COMPLETE: 2,
  FAIL: 3,
  NO_ALARM: 0,
  ALARM_DRIVE_DISABLE: 1,
  ALARM_LOAD_VISION_NG: 11,
  ALARM_LOAD_WORKSPACE_NG: 12,
  ALARM_UNLOAD_BAN: 13,
  ALARM_LOAD_RFID_READ_NG: 14,
  ALARM_LOAD_RFID_CHECK: 15,
  ALARM_UNLOAD_VISION_NG: 21,
  ALARM_UNLOAD_WORKSPACE_NG: 22,
  ALARM_UNLOAD_RFID_CHECK: 23,
  ALARM_BATTERY_VISION_NG: 31,
  ALARM_BATTERY_WORKSPACE_NG: 32,
  ALARM_PIO_READY_DELAY: 33,
  ALARM_PIO_BATTERY_REQUEST_RESPONSE_DELAY: 34,
  ALARM_PIO_BATTERY_COMPLETE_DELAY: 35,
  ALARM_PIO_IF_COMPLETE_DELAY: 36,
}

module.exports = PlcMissionStateReport;
