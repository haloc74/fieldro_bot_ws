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

class SafetyReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode = null;
      this.estop_switch_status = null;
      this.sto_status = null;
      this.ossd_front_status = null;
      this.ossd_rear_status = null;
      this.reset_switch_toggle = null;
      this.manual_move_switch_status = null;
      this.external_stop_status = null;
      this.lidar_power_status = null;
      this.mcu_watchdog_status = null;
      this.fault_detected = null;
      this.fault_safety_function = null;
      this.fault_board = null;
      this.fault_mcu = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('estop_switch_status')) {
        this.estop_switch_status = initObj.estop_switch_status
      }
      else {
        this.estop_switch_status = false;
      }
      if (initObj.hasOwnProperty('sto_status')) {
        this.sto_status = initObj.sto_status
      }
      else {
        this.sto_status = false;
      }
      if (initObj.hasOwnProperty('ossd_front_status')) {
        this.ossd_front_status = initObj.ossd_front_status
      }
      else {
        this.ossd_front_status = false;
      }
      if (initObj.hasOwnProperty('ossd_rear_status')) {
        this.ossd_rear_status = initObj.ossd_rear_status
      }
      else {
        this.ossd_rear_status = false;
      }
      if (initObj.hasOwnProperty('reset_switch_toggle')) {
        this.reset_switch_toggle = initObj.reset_switch_toggle
      }
      else {
        this.reset_switch_toggle = false;
      }
      if (initObj.hasOwnProperty('manual_move_switch_status')) {
        this.manual_move_switch_status = initObj.manual_move_switch_status
      }
      else {
        this.manual_move_switch_status = false;
      }
      if (initObj.hasOwnProperty('external_stop_status')) {
        this.external_stop_status = initObj.external_stop_status
      }
      else {
        this.external_stop_status = false;
      }
      if (initObj.hasOwnProperty('lidar_power_status')) {
        this.lidar_power_status = initObj.lidar_power_status
      }
      else {
        this.lidar_power_status = false;
      }
      if (initObj.hasOwnProperty('mcu_watchdog_status')) {
        this.mcu_watchdog_status = initObj.mcu_watchdog_status
      }
      else {
        this.mcu_watchdog_status = 0;
      }
      if (initObj.hasOwnProperty('fault_detected')) {
        this.fault_detected = initObj.fault_detected
      }
      else {
        this.fault_detected = false;
      }
      if (initObj.hasOwnProperty('fault_safety_function')) {
        this.fault_safety_function = initObj.fault_safety_function
      }
      else {
        this.fault_safety_function = 0;
      }
      if (initObj.hasOwnProperty('fault_board')) {
        this.fault_board = initObj.fault_board
      }
      else {
        this.fault_board = 0;
      }
      if (initObj.hasOwnProperty('fault_mcu')) {
        this.fault_mcu = initObj.fault_mcu
      }
      else {
        this.fault_mcu = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SafetyReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    // Serialize message field [estop_switch_status]
    bufferOffset = _serializer.bool(obj.estop_switch_status, buffer, bufferOffset);
    // Serialize message field [sto_status]
    bufferOffset = _serializer.bool(obj.sto_status, buffer, bufferOffset);
    // Serialize message field [ossd_front_status]
    bufferOffset = _serializer.bool(obj.ossd_front_status, buffer, bufferOffset);
    // Serialize message field [ossd_rear_status]
    bufferOffset = _serializer.bool(obj.ossd_rear_status, buffer, bufferOffset);
    // Serialize message field [reset_switch_toggle]
    bufferOffset = _serializer.bool(obj.reset_switch_toggle, buffer, bufferOffset);
    // Serialize message field [manual_move_switch_status]
    bufferOffset = _serializer.bool(obj.manual_move_switch_status, buffer, bufferOffset);
    // Serialize message field [external_stop_status]
    bufferOffset = _serializer.bool(obj.external_stop_status, buffer, bufferOffset);
    // Serialize message field [lidar_power_status]
    bufferOffset = _serializer.bool(obj.lidar_power_status, buffer, bufferOffset);
    // Serialize message field [mcu_watchdog_status]
    bufferOffset = _serializer.uint8(obj.mcu_watchdog_status, buffer, bufferOffset);
    // Serialize message field [fault_detected]
    bufferOffset = _serializer.bool(obj.fault_detected, buffer, bufferOffset);
    // Serialize message field [fault_safety_function]
    bufferOffset = _serializer.uint8(obj.fault_safety_function, buffer, bufferOffset);
    // Serialize message field [fault_board]
    bufferOffset = _serializer.uint8(obj.fault_board, buffer, bufferOffset);
    // Check that the constant length array field [fault_mcu] has the right length
    if (obj.fault_mcu.length !== 2) {
      throw new Error('Unable to serialize array field fault_mcu - length must be 2')
    }
    // Serialize message field [fault_mcu]
    bufferOffset = _arraySerializer.uint8(obj.fault_mcu, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SafetyReport
    let len;
    let data = new SafetyReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [estop_switch_status]
    data.estop_switch_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sto_status]
    data.sto_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ossd_front_status]
    data.ossd_front_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ossd_rear_status]
    data.ossd_rear_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reset_switch_toggle]
    data.reset_switch_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [manual_move_switch_status]
    data.manual_move_switch_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [external_stop_status]
    data.external_stop_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lidar_power_status]
    data.lidar_power_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mcu_watchdog_status]
    data.mcu_watchdog_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fault_detected]
    data.fault_detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fault_safety_function]
    data.fault_safety_function = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fault_board]
    data.fault_board = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fault_mcu]
    data.fault_mcu = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/SafetyReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eda7dea195ffb58f6544c2c1d4766176';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 MODE_NORMAL=0
    int8 MODE_OSSD_MUTE_MOVE=1
    int8 MODE_MANUAL_MOVE=2
    int8 MODE_EMERGENCY_STOP=-1
    int8 MODE_PROTECTIVE_STOP=-2
    int8 MODE_EXTERNAL_STOP=-3
    
    int8 mode
    
    bool estop_switch_status
    bool sto_status
    bool ossd_front_status
    bool ossd_rear_status
    bool reset_switch_toggle
    bool manual_move_switch_status
    bool external_stop_status
    bool lidar_power_status
    
    uint8 MCU_WATCHDOG_NORMAL=0
    uint8 MCU_WATCHDOG_ALARM=1
    uint8 MCU_WATCHDOG_FAULT=2
    
    uint8 mcu_watchdog_status
    
    bool fault_detected
    
    uint8 FAULT_EMERGENCY_SW_FAULT=1
    uint8 FAULT_STO_FAULT=2
    uint8 FAULT_OSSD_FRONT=3
    uint8 FAULT_OSSD_REAR=4
    uint8 FAULT_LIDAR_FRONT=5
    uint8 FAULT_LIDAR_REAR=6
    uint8 fault_safety_function
    
    uint8 BOARD_FAULT_BIT_MCU_MASTER=1
    uint8 BOARD_FAULT_BIT_MCU_SLAVE=2
    uint8 BOARD_FAULT_BIT_CAN_MASTER=3
    uint8 BOARD_FAULT_BIT_CAN_SLAVE=4
    uint8 BOARD_FAULT_BIT_SYNC=5
    uint8 BOARD_FAULT_BIT_POWER_MASTER=6
    uint8 BOARD_FAULT_BIT_POWER_SLAVE=7
    uint8 fault_board
    
    uint8 MCU_FAULT_BIT_CPU=1
    uint8 MCU_FAULT_BIT_RAM=2
    uint8 MCU_FAULT_BIT_FLASH=3
    uint8 MCU_FAULT_BIT_GPIO=4
    uint8 MCU_FAULT_BIT_DMA=5
    uint8 MCU_FAULT_BIT_NVIC=6
    uint8 MCU_FAULT_BIT_WDG=7
    uint8 MCU_FAULT_BIT_CAN=8
    uint8[2] fault_mcu
    
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
    const resolved = new SafetyReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.estop_switch_status !== undefined) {
      resolved.estop_switch_status = msg.estop_switch_status;
    }
    else {
      resolved.estop_switch_status = false
    }

    if (msg.sto_status !== undefined) {
      resolved.sto_status = msg.sto_status;
    }
    else {
      resolved.sto_status = false
    }

    if (msg.ossd_front_status !== undefined) {
      resolved.ossd_front_status = msg.ossd_front_status;
    }
    else {
      resolved.ossd_front_status = false
    }

    if (msg.ossd_rear_status !== undefined) {
      resolved.ossd_rear_status = msg.ossd_rear_status;
    }
    else {
      resolved.ossd_rear_status = false
    }

    if (msg.reset_switch_toggle !== undefined) {
      resolved.reset_switch_toggle = msg.reset_switch_toggle;
    }
    else {
      resolved.reset_switch_toggle = false
    }

    if (msg.manual_move_switch_status !== undefined) {
      resolved.manual_move_switch_status = msg.manual_move_switch_status;
    }
    else {
      resolved.manual_move_switch_status = false
    }

    if (msg.external_stop_status !== undefined) {
      resolved.external_stop_status = msg.external_stop_status;
    }
    else {
      resolved.external_stop_status = false
    }

    if (msg.lidar_power_status !== undefined) {
      resolved.lidar_power_status = msg.lidar_power_status;
    }
    else {
      resolved.lidar_power_status = false
    }

    if (msg.mcu_watchdog_status !== undefined) {
      resolved.mcu_watchdog_status = msg.mcu_watchdog_status;
    }
    else {
      resolved.mcu_watchdog_status = 0
    }

    if (msg.fault_detected !== undefined) {
      resolved.fault_detected = msg.fault_detected;
    }
    else {
      resolved.fault_detected = false
    }

    if (msg.fault_safety_function !== undefined) {
      resolved.fault_safety_function = msg.fault_safety_function;
    }
    else {
      resolved.fault_safety_function = 0
    }

    if (msg.fault_board !== undefined) {
      resolved.fault_board = msg.fault_board;
    }
    else {
      resolved.fault_board = 0
    }

    if (msg.fault_mcu !== undefined) {
      resolved.fault_mcu = msg.fault_mcu;
    }
    else {
      resolved.fault_mcu = new Array(2).fill(0)
    }

    return resolved;
    }
};

// Constants for message
SafetyReport.Constants = {
  MODE_NORMAL: 0,
  MODE_OSSD_MUTE_MOVE: 1,
  MODE_MANUAL_MOVE: 2,
  MODE_EMERGENCY_STOP: -1,
  MODE_PROTECTIVE_STOP: -2,
  MODE_EXTERNAL_STOP: -3,
  MCU_WATCHDOG_NORMAL: 0,
  MCU_WATCHDOG_ALARM: 1,
  MCU_WATCHDOG_FAULT: 2,
  FAULT_EMERGENCY_SW_FAULT: 1,
  FAULT_STO_FAULT: 2,
  FAULT_OSSD_FRONT: 3,
  FAULT_OSSD_REAR: 4,
  FAULT_LIDAR_FRONT: 5,
  FAULT_LIDAR_REAR: 6,
  BOARD_FAULT_BIT_MCU_MASTER: 1,
  BOARD_FAULT_BIT_MCU_SLAVE: 2,
  BOARD_FAULT_BIT_CAN_MASTER: 3,
  BOARD_FAULT_BIT_CAN_SLAVE: 4,
  BOARD_FAULT_BIT_SYNC: 5,
  BOARD_FAULT_BIT_POWER_MASTER: 6,
  BOARD_FAULT_BIT_POWER_SLAVE: 7,
  MCU_FAULT_BIT_CPU: 1,
  MCU_FAULT_BIT_RAM: 2,
  MCU_FAULT_BIT_FLASH: 3,
  MCU_FAULT_BIT_GPIO: 4,
  MCU_FAULT_BIT_DMA: 5,
  MCU_FAULT_BIT_NVIC: 6,
  MCU_FAULT_BIT_WDG: 7,
  MCU_FAULT_BIT_CAN: 8,
}

module.exports = SafetyReport;
