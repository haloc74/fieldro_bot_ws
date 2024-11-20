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

class BatteryReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.STATE = null;
      this.Battery_power = null;
      this.Battery_current = null;
      this.Battery_voltage = null;
      this.Charge_flag = null;
      this.Docking_sensor_flag = null;
      this.Charger_relay_status = null;
      this.Power_saving_mode = null;
      this.Wire_charging_mode = null;
      this.Docking_charge_enable = null;
      this.Battery_full_flag = null;
      this.Battery_empty_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('STATE')) {
        this.STATE = initObj.STATE
      }
      else {
        this.STATE = 0;
      }
      if (initObj.hasOwnProperty('Battery_power')) {
        this.Battery_power = initObj.Battery_power
      }
      else {
        this.Battery_power = 0;
      }
      if (initObj.hasOwnProperty('Battery_current')) {
        this.Battery_current = initObj.Battery_current
      }
      else {
        this.Battery_current = 0.0;
      }
      if (initObj.hasOwnProperty('Battery_voltage')) {
        this.Battery_voltage = initObj.Battery_voltage
      }
      else {
        this.Battery_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('Charge_flag')) {
        this.Charge_flag = initObj.Charge_flag
      }
      else {
        this.Charge_flag = 0;
      }
      if (initObj.hasOwnProperty('Docking_sensor_flag')) {
        this.Docking_sensor_flag = initObj.Docking_sensor_flag
      }
      else {
        this.Docking_sensor_flag = 0;
      }
      if (initObj.hasOwnProperty('Charger_relay_status')) {
        this.Charger_relay_status = initObj.Charger_relay_status
      }
      else {
        this.Charger_relay_status = 0;
      }
      if (initObj.hasOwnProperty('Power_saving_mode')) {
        this.Power_saving_mode = initObj.Power_saving_mode
      }
      else {
        this.Power_saving_mode = 0;
      }
      if (initObj.hasOwnProperty('Wire_charging_mode')) {
        this.Wire_charging_mode = initObj.Wire_charging_mode
      }
      else {
        this.Wire_charging_mode = 0;
      }
      if (initObj.hasOwnProperty('Docking_charge_enable')) {
        this.Docking_charge_enable = initObj.Docking_charge_enable
      }
      else {
        this.Docking_charge_enable = 0;
      }
      if (initObj.hasOwnProperty('Battery_full_flag')) {
        this.Battery_full_flag = initObj.Battery_full_flag
      }
      else {
        this.Battery_full_flag = 0;
      }
      if (initObj.hasOwnProperty('Battery_empty_flag')) {
        this.Battery_empty_flag = initObj.Battery_empty_flag
      }
      else {
        this.Battery_empty_flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [STATE]
    bufferOffset = _serializer.uint8(obj.STATE, buffer, bufferOffset);
    // Serialize message field [Battery_power]
    bufferOffset = _serializer.uint8(obj.Battery_power, buffer, bufferOffset);
    // Serialize message field [Battery_current]
    bufferOffset = _serializer.float64(obj.Battery_current, buffer, bufferOffset);
    // Serialize message field [Battery_voltage]
    bufferOffset = _serializer.float64(obj.Battery_voltage, buffer, bufferOffset);
    // Serialize message field [Charge_flag]
    bufferOffset = _serializer.uint8(obj.Charge_flag, buffer, bufferOffset);
    // Serialize message field [Docking_sensor_flag]
    bufferOffset = _serializer.uint8(obj.Docking_sensor_flag, buffer, bufferOffset);
    // Serialize message field [Charger_relay_status]
    bufferOffset = _serializer.uint8(obj.Charger_relay_status, buffer, bufferOffset);
    // Serialize message field [Power_saving_mode]
    bufferOffset = _serializer.uint8(obj.Power_saving_mode, buffer, bufferOffset);
    // Serialize message field [Wire_charging_mode]
    bufferOffset = _serializer.uint8(obj.Wire_charging_mode, buffer, bufferOffset);
    // Serialize message field [Docking_charge_enable]
    bufferOffset = _serializer.uint8(obj.Docking_charge_enable, buffer, bufferOffset);
    // Serialize message field [Battery_full_flag]
    bufferOffset = _serializer.uint8(obj.Battery_full_flag, buffer, bufferOffset);
    // Serialize message field [Battery_empty_flag]
    bufferOffset = _serializer.uint8(obj.Battery_empty_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryReport
    let len;
    let data = new BatteryReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [STATE]
    data.STATE = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Battery_power]
    data.Battery_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Battery_current]
    data.Battery_current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Battery_voltage]
    data.Battery_voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Charge_flag]
    data.Charge_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Docking_sensor_flag]
    data.Docking_sensor_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Charger_relay_status]
    data.Charger_relay_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Power_saving_mode]
    data.Power_saving_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Wire_charging_mode]
    data.Wire_charging_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Docking_charge_enable]
    data.Docking_charge_enable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Battery_full_flag]
    data.Battery_full_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Battery_empty_flag]
    data.Battery_empty_flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/BatteryReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9a48e58d2c7cc1f7859a62328338891';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 NORMAL=0
    uint8 ERROR=1
    uint8 STATE  
    
    uint8 Battery_power
    
    float64 Battery_current
    float64 Battery_voltage
    
    uint8 CHARGING = 1
    uint8 NOCHARGING = 0
    uint8 Charge_flag  
    
    uint8 DOCKING_SENSOR_OFF = 0
    uint8 DOCKING_SENSOR_ON = 1
    uint8 Docking_sensor_flag
    
    uint8 CHARGER_RELAY_OFF = 0
    uint8 CHARGER_RELAY_ON = 1
    uint8 Charger_relay_status
    
    uint8 POWER_SAVING_OFF = 0
    uint8 POWER_SAVING_ON = 1
    uint8 Power_saving_mode
    
    uint8 WIRE_CHARGING_MODE_OFF = 0
    uint8 WIRE_CHARGING_MODE_ON = 1
    uint8 Wire_charging_mode
    
    uint8 DOCKING_CHARGE_DISABLE = 0
    uint8 DOCKING_CHARGE_ENABLE = 1
    uint8 Docking_charge_enable
    
    uint8 BATTERY_NONFULL = 0
    uint8 BATTERY_FULL = 1
    uint8 Battery_full_flag
    
    uint8 BATTERY_NONZERO = 0
    uint8 BATTERY_ZERO = 1
    uint8 Battery_empty_flag
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
    const resolved = new BatteryReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.STATE !== undefined) {
      resolved.STATE = msg.STATE;
    }
    else {
      resolved.STATE = 0
    }

    if (msg.Battery_power !== undefined) {
      resolved.Battery_power = msg.Battery_power;
    }
    else {
      resolved.Battery_power = 0
    }

    if (msg.Battery_current !== undefined) {
      resolved.Battery_current = msg.Battery_current;
    }
    else {
      resolved.Battery_current = 0.0
    }

    if (msg.Battery_voltage !== undefined) {
      resolved.Battery_voltage = msg.Battery_voltage;
    }
    else {
      resolved.Battery_voltage = 0.0
    }

    if (msg.Charge_flag !== undefined) {
      resolved.Charge_flag = msg.Charge_flag;
    }
    else {
      resolved.Charge_flag = 0
    }

    if (msg.Docking_sensor_flag !== undefined) {
      resolved.Docking_sensor_flag = msg.Docking_sensor_flag;
    }
    else {
      resolved.Docking_sensor_flag = 0
    }

    if (msg.Charger_relay_status !== undefined) {
      resolved.Charger_relay_status = msg.Charger_relay_status;
    }
    else {
      resolved.Charger_relay_status = 0
    }

    if (msg.Power_saving_mode !== undefined) {
      resolved.Power_saving_mode = msg.Power_saving_mode;
    }
    else {
      resolved.Power_saving_mode = 0
    }

    if (msg.Wire_charging_mode !== undefined) {
      resolved.Wire_charging_mode = msg.Wire_charging_mode;
    }
    else {
      resolved.Wire_charging_mode = 0
    }

    if (msg.Docking_charge_enable !== undefined) {
      resolved.Docking_charge_enable = msg.Docking_charge_enable;
    }
    else {
      resolved.Docking_charge_enable = 0
    }

    if (msg.Battery_full_flag !== undefined) {
      resolved.Battery_full_flag = msg.Battery_full_flag;
    }
    else {
      resolved.Battery_full_flag = 0
    }

    if (msg.Battery_empty_flag !== undefined) {
      resolved.Battery_empty_flag = msg.Battery_empty_flag;
    }
    else {
      resolved.Battery_empty_flag = 0
    }

    return resolved;
    }
};

// Constants for message
BatteryReport.Constants = {
  NORMAL: 0,
  ERROR: 1,
  CHARGING: 1,
  NOCHARGING: 0,
  DOCKING_SENSOR_OFF: 0,
  DOCKING_SENSOR_ON: 1,
  CHARGER_RELAY_OFF: 0,
  CHARGER_RELAY_ON: 1,
  POWER_SAVING_OFF: 0,
  POWER_SAVING_ON: 1,
  WIRE_CHARGING_MODE_OFF: 0,
  WIRE_CHARGING_MODE_ON: 1,
  DOCKING_CHARGE_DISABLE: 0,
  DOCKING_CHARGE_ENABLE: 1,
  BATTERY_NONFULL: 0,
  BATTERY_FULL: 1,
  BATTERY_NONZERO: 0,
  BATTERY_ZERO: 1,
}

module.exports = BatteryReport;
