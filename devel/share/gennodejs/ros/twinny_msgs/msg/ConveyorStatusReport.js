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

class ConveyorStatusReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.conveyor1_status = null;
      this.conveyor2_status = null;
      this.is_loaded_conveyor1_1 = null;
      this.is_loaded_conveyor1_2 = null;
      this.is_loaded_conveyor2_1 = null;
      this.is_loaded_conveyor2_2 = null;
      this.is_alarm_conveyor1 = null;
      this.is_alarm_conveyor2 = null;
      this.door_open_status = null;
      this.fall_prevention_device_status = null;
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
      if (initObj.hasOwnProperty('conveyor1_status')) {
        this.conveyor1_status = initObj.conveyor1_status
      }
      else {
        this.conveyor1_status = 0;
      }
      if (initObj.hasOwnProperty('conveyor2_status')) {
        this.conveyor2_status = initObj.conveyor2_status
      }
      else {
        this.conveyor2_status = 0;
      }
      if (initObj.hasOwnProperty('is_loaded_conveyor1_1')) {
        this.is_loaded_conveyor1_1 = initObj.is_loaded_conveyor1_1
      }
      else {
        this.is_loaded_conveyor1_1 = false;
      }
      if (initObj.hasOwnProperty('is_loaded_conveyor1_2')) {
        this.is_loaded_conveyor1_2 = initObj.is_loaded_conveyor1_2
      }
      else {
        this.is_loaded_conveyor1_2 = false;
      }
      if (initObj.hasOwnProperty('is_loaded_conveyor2_1')) {
        this.is_loaded_conveyor2_1 = initObj.is_loaded_conveyor2_1
      }
      else {
        this.is_loaded_conveyor2_1 = false;
      }
      if (initObj.hasOwnProperty('is_loaded_conveyor2_2')) {
        this.is_loaded_conveyor2_2 = initObj.is_loaded_conveyor2_2
      }
      else {
        this.is_loaded_conveyor2_2 = false;
      }
      if (initObj.hasOwnProperty('is_alarm_conveyor1')) {
        this.is_alarm_conveyor1 = initObj.is_alarm_conveyor1
      }
      else {
        this.is_alarm_conveyor1 = false;
      }
      if (initObj.hasOwnProperty('is_alarm_conveyor2')) {
        this.is_alarm_conveyor2 = initObj.is_alarm_conveyor2
      }
      else {
        this.is_alarm_conveyor2 = false;
      }
      if (initObj.hasOwnProperty('door_open_status')) {
        this.door_open_status = initObj.door_open_status
      }
      else {
        this.door_open_status = false;
      }
      if (initObj.hasOwnProperty('fall_prevention_device_status')) {
        this.fall_prevention_device_status = initObj.fall_prevention_device_status
      }
      else {
        this.fall_prevention_device_status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConveyorStatusReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [conveyor1_status]
    bufferOffset = _serializer.int8(obj.conveyor1_status, buffer, bufferOffset);
    // Serialize message field [conveyor2_status]
    bufferOffset = _serializer.int8(obj.conveyor2_status, buffer, bufferOffset);
    // Serialize message field [is_loaded_conveyor1_1]
    bufferOffset = _serializer.bool(obj.is_loaded_conveyor1_1, buffer, bufferOffset);
    // Serialize message field [is_loaded_conveyor1_2]
    bufferOffset = _serializer.bool(obj.is_loaded_conveyor1_2, buffer, bufferOffset);
    // Serialize message field [is_loaded_conveyor2_1]
    bufferOffset = _serializer.bool(obj.is_loaded_conveyor2_1, buffer, bufferOffset);
    // Serialize message field [is_loaded_conveyor2_2]
    bufferOffset = _serializer.bool(obj.is_loaded_conveyor2_2, buffer, bufferOffset);
    // Serialize message field [is_alarm_conveyor1]
    bufferOffset = _serializer.bool(obj.is_alarm_conveyor1, buffer, bufferOffset);
    // Serialize message field [is_alarm_conveyor2]
    bufferOffset = _serializer.bool(obj.is_alarm_conveyor2, buffer, bufferOffset);
    // Serialize message field [door_open_status]
    bufferOffset = _serializer.bool(obj.door_open_status, buffer, bufferOffset);
    // Serialize message field [fall_prevention_device_status]
    bufferOffset = _serializer.bool(obj.fall_prevention_device_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConveyorStatusReport
    let len;
    let data = new ConveyorStatusReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [conveyor1_status]
    data.conveyor1_status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [conveyor2_status]
    data.conveyor2_status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [is_loaded_conveyor1_1]
    data.is_loaded_conveyor1_1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_loaded_conveyor1_2]
    data.is_loaded_conveyor1_2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_loaded_conveyor2_1]
    data.is_loaded_conveyor2_1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_loaded_conveyor2_2]
    data.is_loaded_conveyor2_2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_alarm_conveyor1]
    data.is_alarm_conveyor1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_alarm_conveyor2]
    data.is_alarm_conveyor2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [door_open_status]
    data.door_open_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fall_prevention_device_status]
    data.fall_prevention_device_status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/ConveyorStatusReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edac1cb1f807055427a86099e42b8c69';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    
    int8 CONVEYOR_STATUS_REVERSE = -1
    int8 CONVEYOR_STATUS_STOP = 0
    int8 CONVEYOR_STATUS_FORWARD = 1
    
    int8 conveyor1_status
    int8 conveyor2_status
    
    bool is_loaded_conveyor1_1
    bool is_loaded_conveyor1_2
    bool is_loaded_conveyor2_1
    bool is_loaded_conveyor2_2
    
    bool is_alarm_conveyor1
    bool is_alarm_conveyor2
    
    bool door_open_status
    
    bool fall_prevention_device_status
    
    
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
    const resolved = new ConveyorStatusReport(null);
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

    if (msg.conveyor1_status !== undefined) {
      resolved.conveyor1_status = msg.conveyor1_status;
    }
    else {
      resolved.conveyor1_status = 0
    }

    if (msg.conveyor2_status !== undefined) {
      resolved.conveyor2_status = msg.conveyor2_status;
    }
    else {
      resolved.conveyor2_status = 0
    }

    if (msg.is_loaded_conveyor1_1 !== undefined) {
      resolved.is_loaded_conveyor1_1 = msg.is_loaded_conveyor1_1;
    }
    else {
      resolved.is_loaded_conveyor1_1 = false
    }

    if (msg.is_loaded_conveyor1_2 !== undefined) {
      resolved.is_loaded_conveyor1_2 = msg.is_loaded_conveyor1_2;
    }
    else {
      resolved.is_loaded_conveyor1_2 = false
    }

    if (msg.is_loaded_conveyor2_1 !== undefined) {
      resolved.is_loaded_conveyor2_1 = msg.is_loaded_conveyor2_1;
    }
    else {
      resolved.is_loaded_conveyor2_1 = false
    }

    if (msg.is_loaded_conveyor2_2 !== undefined) {
      resolved.is_loaded_conveyor2_2 = msg.is_loaded_conveyor2_2;
    }
    else {
      resolved.is_loaded_conveyor2_2 = false
    }

    if (msg.is_alarm_conveyor1 !== undefined) {
      resolved.is_alarm_conveyor1 = msg.is_alarm_conveyor1;
    }
    else {
      resolved.is_alarm_conveyor1 = false
    }

    if (msg.is_alarm_conveyor2 !== undefined) {
      resolved.is_alarm_conveyor2 = msg.is_alarm_conveyor2;
    }
    else {
      resolved.is_alarm_conveyor2 = false
    }

    if (msg.door_open_status !== undefined) {
      resolved.door_open_status = msg.door_open_status;
    }
    else {
      resolved.door_open_status = false
    }

    if (msg.fall_prevention_device_status !== undefined) {
      resolved.fall_prevention_device_status = msg.fall_prevention_device_status;
    }
    else {
      resolved.fall_prevention_device_status = false
    }

    return resolved;
    }
};

// Constants for message
ConveyorStatusReport.Constants = {
  CONVEYOR_STATUS_REVERSE: -1,
  CONVEYOR_STATUS_STOP: 0,
  CONVEYOR_STATUS_FORWARD: 1,
}

module.exports = ConveyorStatusReport;
