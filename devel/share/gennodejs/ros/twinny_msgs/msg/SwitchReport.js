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

class SwitchReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.E_STOP_button = null;
      this.SW_0_toggle = null;
      this.SW_1_toggle = null;
      this.SW_2_toggle = null;
      this.SW_3_toggle = null;
      this.SW_4_toggle = null;
      this.SW_5_toggle = null;
      this.Sub_SW_0_toggle = null;
      this.Sub_SW_1_toggle = null;
      this.Sub_SW_2_toggle = null;
      this.Sub_SW_3_toggle = null;
      this.Sub_SW_4_toggle = null;
      this.Sub_SW_5_toggle = null;
      this.Docking_hall_sensor = null;
      this.Motor_Brake = null;
      this.Main_Power_State = null;
      this.DockingIR_Power_State = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('E_STOP_button')) {
        this.E_STOP_button = initObj.E_STOP_button
      }
      else {
        this.E_STOP_button = false;
      }
      if (initObj.hasOwnProperty('SW_0_toggle')) {
        this.SW_0_toggle = initObj.SW_0_toggle
      }
      else {
        this.SW_0_toggle = false;
      }
      if (initObj.hasOwnProperty('SW_1_toggle')) {
        this.SW_1_toggle = initObj.SW_1_toggle
      }
      else {
        this.SW_1_toggle = false;
      }
      if (initObj.hasOwnProperty('SW_2_toggle')) {
        this.SW_2_toggle = initObj.SW_2_toggle
      }
      else {
        this.SW_2_toggle = false;
      }
      if (initObj.hasOwnProperty('SW_3_toggle')) {
        this.SW_3_toggle = initObj.SW_3_toggle
      }
      else {
        this.SW_3_toggle = false;
      }
      if (initObj.hasOwnProperty('SW_4_toggle')) {
        this.SW_4_toggle = initObj.SW_4_toggle
      }
      else {
        this.SW_4_toggle = false;
      }
      if (initObj.hasOwnProperty('SW_5_toggle')) {
        this.SW_5_toggle = initObj.SW_5_toggle
      }
      else {
        this.SW_5_toggle = false;
      }
      if (initObj.hasOwnProperty('Sub_SW_0_toggle')) {
        this.Sub_SW_0_toggle = initObj.Sub_SW_0_toggle
      }
      else {
        this.Sub_SW_0_toggle = false;
      }
      if (initObj.hasOwnProperty('Sub_SW_1_toggle')) {
        this.Sub_SW_1_toggle = initObj.Sub_SW_1_toggle
      }
      else {
        this.Sub_SW_1_toggle = false;
      }
      if (initObj.hasOwnProperty('Sub_SW_2_toggle')) {
        this.Sub_SW_2_toggle = initObj.Sub_SW_2_toggle
      }
      else {
        this.Sub_SW_2_toggle = false;
      }
      if (initObj.hasOwnProperty('Sub_SW_3_toggle')) {
        this.Sub_SW_3_toggle = initObj.Sub_SW_3_toggle
      }
      else {
        this.Sub_SW_3_toggle = false;
      }
      if (initObj.hasOwnProperty('Sub_SW_4_toggle')) {
        this.Sub_SW_4_toggle = initObj.Sub_SW_4_toggle
      }
      else {
        this.Sub_SW_4_toggle = false;
      }
      if (initObj.hasOwnProperty('Sub_SW_5_toggle')) {
        this.Sub_SW_5_toggle = initObj.Sub_SW_5_toggle
      }
      else {
        this.Sub_SW_5_toggle = false;
      }
      if (initObj.hasOwnProperty('Docking_hall_sensor')) {
        this.Docking_hall_sensor = initObj.Docking_hall_sensor
      }
      else {
        this.Docking_hall_sensor = false;
      }
      if (initObj.hasOwnProperty('Motor_Brake')) {
        this.Motor_Brake = initObj.Motor_Brake
      }
      else {
        this.Motor_Brake = false;
      }
      if (initObj.hasOwnProperty('Main_Power_State')) {
        this.Main_Power_State = initObj.Main_Power_State
      }
      else {
        this.Main_Power_State = false;
      }
      if (initObj.hasOwnProperty('DockingIR_Power_State')) {
        this.DockingIR_Power_State = initObj.DockingIR_Power_State
      }
      else {
        this.DockingIR_Power_State = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [E_STOP_button]
    bufferOffset = _serializer.bool(obj.E_STOP_button, buffer, bufferOffset);
    // Serialize message field [SW_0_toggle]
    bufferOffset = _serializer.bool(obj.SW_0_toggle, buffer, bufferOffset);
    // Serialize message field [SW_1_toggle]
    bufferOffset = _serializer.bool(obj.SW_1_toggle, buffer, bufferOffset);
    // Serialize message field [SW_2_toggle]
    bufferOffset = _serializer.bool(obj.SW_2_toggle, buffer, bufferOffset);
    // Serialize message field [SW_3_toggle]
    bufferOffset = _serializer.bool(obj.SW_3_toggle, buffer, bufferOffset);
    // Serialize message field [SW_4_toggle]
    bufferOffset = _serializer.bool(obj.SW_4_toggle, buffer, bufferOffset);
    // Serialize message field [SW_5_toggle]
    bufferOffset = _serializer.bool(obj.SW_5_toggle, buffer, bufferOffset);
    // Serialize message field [Sub_SW_0_toggle]
    bufferOffset = _serializer.bool(obj.Sub_SW_0_toggle, buffer, bufferOffset);
    // Serialize message field [Sub_SW_1_toggle]
    bufferOffset = _serializer.bool(obj.Sub_SW_1_toggle, buffer, bufferOffset);
    // Serialize message field [Sub_SW_2_toggle]
    bufferOffset = _serializer.bool(obj.Sub_SW_2_toggle, buffer, bufferOffset);
    // Serialize message field [Sub_SW_3_toggle]
    bufferOffset = _serializer.bool(obj.Sub_SW_3_toggle, buffer, bufferOffset);
    // Serialize message field [Sub_SW_4_toggle]
    bufferOffset = _serializer.bool(obj.Sub_SW_4_toggle, buffer, bufferOffset);
    // Serialize message field [Sub_SW_5_toggle]
    bufferOffset = _serializer.bool(obj.Sub_SW_5_toggle, buffer, bufferOffset);
    // Serialize message field [Docking_hall_sensor]
    bufferOffset = _serializer.bool(obj.Docking_hall_sensor, buffer, bufferOffset);
    // Serialize message field [Motor_Brake]
    bufferOffset = _serializer.bool(obj.Motor_Brake, buffer, bufferOffset);
    // Serialize message field [Main_Power_State]
    bufferOffset = _serializer.bool(obj.Main_Power_State, buffer, bufferOffset);
    // Serialize message field [DockingIR_Power_State]
    bufferOffset = _serializer.bool(obj.DockingIR_Power_State, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchReport
    let len;
    let data = new SwitchReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [E_STOP_button]
    data.E_STOP_button = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [SW_0_toggle]
    data.SW_0_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [SW_1_toggle]
    data.SW_1_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [SW_2_toggle]
    data.SW_2_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [SW_3_toggle]
    data.SW_3_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [SW_4_toggle]
    data.SW_4_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [SW_5_toggle]
    data.SW_5_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Sub_SW_0_toggle]
    data.Sub_SW_0_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Sub_SW_1_toggle]
    data.Sub_SW_1_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Sub_SW_2_toggle]
    data.Sub_SW_2_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Sub_SW_3_toggle]
    data.Sub_SW_3_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Sub_SW_4_toggle]
    data.Sub_SW_4_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Sub_SW_5_toggle]
    data.Sub_SW_5_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Docking_hall_sensor]
    data.Docking_hall_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Motor_Brake]
    data.Motor_Brake = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Main_Power_State]
    data.Main_Power_State = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [DockingIR_Power_State]
    data.DockingIR_Power_State = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/SwitchReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3785c85ae8e5bf04a5bb77839719f66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    bool E_STOP_button
    bool SW_0_toggle
    bool SW_1_toggle
    bool SW_2_toggle
    bool SW_3_toggle
    bool SW_4_toggle
    bool SW_5_toggle
    
    bool Sub_SW_0_toggle
    bool Sub_SW_1_toggle
    bool Sub_SW_2_toggle
    bool Sub_SW_3_toggle
    bool Sub_SW_4_toggle
    bool Sub_SW_5_toggle
    
    
    bool Docking_hall_sensor
    
    bool Motor_Brake
    bool Main_Power_State
    bool DockingIR_Power_State
    
    
    
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
    const resolved = new SwitchReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.E_STOP_button !== undefined) {
      resolved.E_STOP_button = msg.E_STOP_button;
    }
    else {
      resolved.E_STOP_button = false
    }

    if (msg.SW_0_toggle !== undefined) {
      resolved.SW_0_toggle = msg.SW_0_toggle;
    }
    else {
      resolved.SW_0_toggle = false
    }

    if (msg.SW_1_toggle !== undefined) {
      resolved.SW_1_toggle = msg.SW_1_toggle;
    }
    else {
      resolved.SW_1_toggle = false
    }

    if (msg.SW_2_toggle !== undefined) {
      resolved.SW_2_toggle = msg.SW_2_toggle;
    }
    else {
      resolved.SW_2_toggle = false
    }

    if (msg.SW_3_toggle !== undefined) {
      resolved.SW_3_toggle = msg.SW_3_toggle;
    }
    else {
      resolved.SW_3_toggle = false
    }

    if (msg.SW_4_toggle !== undefined) {
      resolved.SW_4_toggle = msg.SW_4_toggle;
    }
    else {
      resolved.SW_4_toggle = false
    }

    if (msg.SW_5_toggle !== undefined) {
      resolved.SW_5_toggle = msg.SW_5_toggle;
    }
    else {
      resolved.SW_5_toggle = false
    }

    if (msg.Sub_SW_0_toggle !== undefined) {
      resolved.Sub_SW_0_toggle = msg.Sub_SW_0_toggle;
    }
    else {
      resolved.Sub_SW_0_toggle = false
    }

    if (msg.Sub_SW_1_toggle !== undefined) {
      resolved.Sub_SW_1_toggle = msg.Sub_SW_1_toggle;
    }
    else {
      resolved.Sub_SW_1_toggle = false
    }

    if (msg.Sub_SW_2_toggle !== undefined) {
      resolved.Sub_SW_2_toggle = msg.Sub_SW_2_toggle;
    }
    else {
      resolved.Sub_SW_2_toggle = false
    }

    if (msg.Sub_SW_3_toggle !== undefined) {
      resolved.Sub_SW_3_toggle = msg.Sub_SW_3_toggle;
    }
    else {
      resolved.Sub_SW_3_toggle = false
    }

    if (msg.Sub_SW_4_toggle !== undefined) {
      resolved.Sub_SW_4_toggle = msg.Sub_SW_4_toggle;
    }
    else {
      resolved.Sub_SW_4_toggle = false
    }

    if (msg.Sub_SW_5_toggle !== undefined) {
      resolved.Sub_SW_5_toggle = msg.Sub_SW_5_toggle;
    }
    else {
      resolved.Sub_SW_5_toggle = false
    }

    if (msg.Docking_hall_sensor !== undefined) {
      resolved.Docking_hall_sensor = msg.Docking_hall_sensor;
    }
    else {
      resolved.Docking_hall_sensor = false
    }

    if (msg.Motor_Brake !== undefined) {
      resolved.Motor_Brake = msg.Motor_Brake;
    }
    else {
      resolved.Motor_Brake = false
    }

    if (msg.Main_Power_State !== undefined) {
      resolved.Main_Power_State = msg.Main_Power_State;
    }
    else {
      resolved.Main_Power_State = false
    }

    if (msg.DockingIR_Power_State !== undefined) {
      resolved.DockingIR_Power_State = msg.DockingIR_Power_State;
    }
    else {
      resolved.DockingIR_Power_State = false
    }

    return resolved;
    }
};

module.exports = SwitchReport;
