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

class SafetyReportV2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode = null;
      this.estop_switch_status = null;
      this.sto_status = null;
      this.sto_feedback_status = null;
      this.ossd_front_status = null;
      this.ossd_rear_status = null;
      this.external_stop_status = null;
      this.reset_switch_usable_flag = null;
      this.reset_switch_toggle = null;
      this.manual_move_switch_usable_flag = null;
      this.manual_move_switch_status = null;
      this.lidar_front_warn = null;
      this.lidar_rear_warn = null;
      this.lidar_power_status = null;
      this.mcu_watchdog_status_master = null;
      this.mcu_watchdog_status_slave = null;
      this.fault_detected = null;
      this.fault_inconsitent_sequence_two_mcu = null;
      this.fault_different_data_two_mcu = null;
      this.fault_safety_function = null;
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
      if (initObj.hasOwnProperty('sto_feedback_status')) {
        this.sto_feedback_status = initObj.sto_feedback_status
      }
      else {
        this.sto_feedback_status = false;
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
      if (initObj.hasOwnProperty('external_stop_status')) {
        this.external_stop_status = initObj.external_stop_status
      }
      else {
        this.external_stop_status = false;
      }
      if (initObj.hasOwnProperty('reset_switch_usable_flag')) {
        this.reset_switch_usable_flag = initObj.reset_switch_usable_flag
      }
      else {
        this.reset_switch_usable_flag = false;
      }
      if (initObj.hasOwnProperty('reset_switch_toggle')) {
        this.reset_switch_toggle = initObj.reset_switch_toggle
      }
      else {
        this.reset_switch_toggle = false;
      }
      if (initObj.hasOwnProperty('manual_move_switch_usable_flag')) {
        this.manual_move_switch_usable_flag = initObj.manual_move_switch_usable_flag
      }
      else {
        this.manual_move_switch_usable_flag = false;
      }
      if (initObj.hasOwnProperty('manual_move_switch_status')) {
        this.manual_move_switch_status = initObj.manual_move_switch_status
      }
      else {
        this.manual_move_switch_status = false;
      }
      if (initObj.hasOwnProperty('lidar_front_warn')) {
        this.lidar_front_warn = initObj.lidar_front_warn
      }
      else {
        this.lidar_front_warn = false;
      }
      if (initObj.hasOwnProperty('lidar_rear_warn')) {
        this.lidar_rear_warn = initObj.lidar_rear_warn
      }
      else {
        this.lidar_rear_warn = false;
      }
      if (initObj.hasOwnProperty('lidar_power_status')) {
        this.lidar_power_status = initObj.lidar_power_status
      }
      else {
        this.lidar_power_status = false;
      }
      if (initObj.hasOwnProperty('mcu_watchdog_status_master')) {
        this.mcu_watchdog_status_master = initObj.mcu_watchdog_status_master
      }
      else {
        this.mcu_watchdog_status_master = 0;
      }
      if (initObj.hasOwnProperty('mcu_watchdog_status_slave')) {
        this.mcu_watchdog_status_slave = initObj.mcu_watchdog_status_slave
      }
      else {
        this.mcu_watchdog_status_slave = 0;
      }
      if (initObj.hasOwnProperty('fault_detected')) {
        this.fault_detected = initObj.fault_detected
      }
      else {
        this.fault_detected = false;
      }
      if (initObj.hasOwnProperty('fault_inconsitent_sequence_two_mcu')) {
        this.fault_inconsitent_sequence_two_mcu = initObj.fault_inconsitent_sequence_two_mcu
      }
      else {
        this.fault_inconsitent_sequence_two_mcu = false;
      }
      if (initObj.hasOwnProperty('fault_different_data_two_mcu')) {
        this.fault_different_data_two_mcu = initObj.fault_different_data_two_mcu
      }
      else {
        this.fault_different_data_two_mcu = false;
      }
      if (initObj.hasOwnProperty('fault_safety_function')) {
        this.fault_safety_function = initObj.fault_safety_function
      }
      else {
        this.fault_safety_function = 0;
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
    // Serializes a message object of type SafetyReportV2
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    // Serialize message field [estop_switch_status]
    bufferOffset = _serializer.bool(obj.estop_switch_status, buffer, bufferOffset);
    // Serialize message field [sto_status]
    bufferOffset = _serializer.bool(obj.sto_status, buffer, bufferOffset);
    // Serialize message field [sto_feedback_status]
    bufferOffset = _serializer.bool(obj.sto_feedback_status, buffer, bufferOffset);
    // Serialize message field [ossd_front_status]
    bufferOffset = _serializer.bool(obj.ossd_front_status, buffer, bufferOffset);
    // Serialize message field [ossd_rear_status]
    bufferOffset = _serializer.bool(obj.ossd_rear_status, buffer, bufferOffset);
    // Serialize message field [external_stop_status]
    bufferOffset = _serializer.bool(obj.external_stop_status, buffer, bufferOffset);
    // Serialize message field [reset_switch_usable_flag]
    bufferOffset = _serializer.bool(obj.reset_switch_usable_flag, buffer, bufferOffset);
    // Serialize message field [reset_switch_toggle]
    bufferOffset = _serializer.bool(obj.reset_switch_toggle, buffer, bufferOffset);
    // Serialize message field [manual_move_switch_usable_flag]
    bufferOffset = _serializer.bool(obj.manual_move_switch_usable_flag, buffer, bufferOffset);
    // Serialize message field [manual_move_switch_status]
    bufferOffset = _serializer.bool(obj.manual_move_switch_status, buffer, bufferOffset);
    // Serialize message field [lidar_front_warn]
    bufferOffset = _serializer.bool(obj.lidar_front_warn, buffer, bufferOffset);
    // Serialize message field [lidar_rear_warn]
    bufferOffset = _serializer.bool(obj.lidar_rear_warn, buffer, bufferOffset);
    // Serialize message field [lidar_power_status]
    bufferOffset = _serializer.bool(obj.lidar_power_status, buffer, bufferOffset);
    // Serialize message field [mcu_watchdog_status_master]
    bufferOffset = _serializer.uint8(obj.mcu_watchdog_status_master, buffer, bufferOffset);
    // Serialize message field [mcu_watchdog_status_slave]
    bufferOffset = _serializer.uint8(obj.mcu_watchdog_status_slave, buffer, bufferOffset);
    // Serialize message field [fault_detected]
    bufferOffset = _serializer.bool(obj.fault_detected, buffer, bufferOffset);
    // Serialize message field [fault_inconsitent_sequence_two_mcu]
    bufferOffset = _serializer.bool(obj.fault_inconsitent_sequence_two_mcu, buffer, bufferOffset);
    // Serialize message field [fault_different_data_two_mcu]
    bufferOffset = _serializer.bool(obj.fault_different_data_two_mcu, buffer, bufferOffset);
    // Serialize message field [fault_safety_function]
    bufferOffset = _serializer.uint16(obj.fault_safety_function, buffer, bufferOffset);
    // Check that the constant length array field [fault_mcu] has the right length
    if (obj.fault_mcu.length !== 2) {
      throw new Error('Unable to serialize array field fault_mcu - length must be 2')
    }
    // Serialize message field [fault_mcu]
    bufferOffset = _arraySerializer.uint8(obj.fault_mcu, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SafetyReportV2
    let len;
    let data = new SafetyReportV2(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [estop_switch_status]
    data.estop_switch_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sto_status]
    data.sto_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sto_feedback_status]
    data.sto_feedback_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ossd_front_status]
    data.ossd_front_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ossd_rear_status]
    data.ossd_rear_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [external_stop_status]
    data.external_stop_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reset_switch_usable_flag]
    data.reset_switch_usable_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reset_switch_toggle]
    data.reset_switch_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [manual_move_switch_usable_flag]
    data.manual_move_switch_usable_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [manual_move_switch_status]
    data.manual_move_switch_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lidar_front_warn]
    data.lidar_front_warn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lidar_rear_warn]
    data.lidar_rear_warn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lidar_power_status]
    data.lidar_power_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mcu_watchdog_status_master]
    data.mcu_watchdog_status_master = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mcu_watchdog_status_slave]
    data.mcu_watchdog_status_slave = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fault_detected]
    data.fault_detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fault_inconsitent_sequence_two_mcu]
    data.fault_inconsitent_sequence_two_mcu = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fault_different_data_two_mcu]
    data.fault_different_data_two_mcu = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fault_safety_function]
    data.fault_safety_function = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [fault_mcu]
    data.fault_mcu = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/SafetyReportV2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29c0534163876600d31359fed6020e8b';
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
    bool sto_feedback_status
    bool ossd_front_status
    bool ossd_rear_status
    bool external_stop_status
    
    bool reset_switch_usable_flag
    bool reset_switch_toggle
    bool manual_move_switch_usable_flag
    bool manual_move_switch_status
    bool lidar_front_warn
    bool lidar_rear_warn
    bool lidar_power_status
    
    uint8 MCU_WATCHDOG_NORMAL=0
    uint8 MCU_WATCHDOG_ALARM=1
    uint8 MCU_WATCHDOG_FAULT=2
    
    uint8 mcu_watchdog_status_master
    uint8 mcu_watchdog_status_slave
    
    bool fault_detected
    
    bool fault_inconsitent_sequence_two_mcu
    bool fault_different_data_two_mcu
    
    uint8 FAULT_EMERGENCY_SW_FAULT=1
    uint8 FAULT_STO_FAULT=2
    uint8 FAULT_OSSD_FRONT=3
    uint8 FAULT_OSSD_REAR=4
    uint8 FAULT_LIDAR_FRONT=5
    uint8 FAULT_LIDAR_REAR=6
    uint8 FAULT_EXTERNAL_STOP=7
    uint8 FAULT_PROGRAM_TIMING=8
    uint8 FAULT_PC_BOARD_CHECK=9
    uint16 fault_safety_function
    
    uint8 MCU_FAULT_NO_ERROR=0
    uint8 MCU_FAULT_CORE_TEST_FAIL=1
    uint8 MCU_FAULT_RAM_TEST_FAIL=2
    uint8 MCU_FAULT_FLASH_TEST_FAIL=3
    uint8 MCU_FAULT_PWR_SETTING_MISMATCH=4
    uint8 MCU_FAULT_RCC_SETTING_MISMATCH=5
    uint8 MCU_FAULT_GPIO_SETTING_MISMATCH=6
    uint8 MCU_FAULT_SYSCFG_SETTING_MISMATCH=7
    uint8 MCU_FAULT_DMA_SETTING_MISMATCH=8
    uint8 MCU_FAULT_NVIC_SETTING_MISMATCH=9
    uint8 MCU_FAULT_ADC_SETTING_MISMATCH=10
    uint8 MCU_FAULT_VREFBUF_SETTING_MISMATCH=11
    uint8 MCU_FAULT_WDG_SETTING_MISMATCH=12
    uint8 MCU_FAULT_SPI_SETTING_MISMATCH=13
    uint8 MCU_FAULT_CAN_SETTING_MISMATCH=14
    uint8 MCU_FAULT_POWERING_ERROR=15
    uint8 MCU_FAULT_CLOCKING_ERROR=16
    uint8 MCU_FAULT_DIAGNOSTIC_ERROR=17
    uint8 MCU_FAULT_CAN_ERROR=18
    uint8 MCU_FAULT_RESET_OCCURED=255
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
    const resolved = new SafetyReportV2(null);
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

    if (msg.sto_feedback_status !== undefined) {
      resolved.sto_feedback_status = msg.sto_feedback_status;
    }
    else {
      resolved.sto_feedback_status = false
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

    if (msg.external_stop_status !== undefined) {
      resolved.external_stop_status = msg.external_stop_status;
    }
    else {
      resolved.external_stop_status = false
    }

    if (msg.reset_switch_usable_flag !== undefined) {
      resolved.reset_switch_usable_flag = msg.reset_switch_usable_flag;
    }
    else {
      resolved.reset_switch_usable_flag = false
    }

    if (msg.reset_switch_toggle !== undefined) {
      resolved.reset_switch_toggle = msg.reset_switch_toggle;
    }
    else {
      resolved.reset_switch_toggle = false
    }

    if (msg.manual_move_switch_usable_flag !== undefined) {
      resolved.manual_move_switch_usable_flag = msg.manual_move_switch_usable_flag;
    }
    else {
      resolved.manual_move_switch_usable_flag = false
    }

    if (msg.manual_move_switch_status !== undefined) {
      resolved.manual_move_switch_status = msg.manual_move_switch_status;
    }
    else {
      resolved.manual_move_switch_status = false
    }

    if (msg.lidar_front_warn !== undefined) {
      resolved.lidar_front_warn = msg.lidar_front_warn;
    }
    else {
      resolved.lidar_front_warn = false
    }

    if (msg.lidar_rear_warn !== undefined) {
      resolved.lidar_rear_warn = msg.lidar_rear_warn;
    }
    else {
      resolved.lidar_rear_warn = false
    }

    if (msg.lidar_power_status !== undefined) {
      resolved.lidar_power_status = msg.lidar_power_status;
    }
    else {
      resolved.lidar_power_status = false
    }

    if (msg.mcu_watchdog_status_master !== undefined) {
      resolved.mcu_watchdog_status_master = msg.mcu_watchdog_status_master;
    }
    else {
      resolved.mcu_watchdog_status_master = 0
    }

    if (msg.mcu_watchdog_status_slave !== undefined) {
      resolved.mcu_watchdog_status_slave = msg.mcu_watchdog_status_slave;
    }
    else {
      resolved.mcu_watchdog_status_slave = 0
    }

    if (msg.fault_detected !== undefined) {
      resolved.fault_detected = msg.fault_detected;
    }
    else {
      resolved.fault_detected = false
    }

    if (msg.fault_inconsitent_sequence_two_mcu !== undefined) {
      resolved.fault_inconsitent_sequence_two_mcu = msg.fault_inconsitent_sequence_two_mcu;
    }
    else {
      resolved.fault_inconsitent_sequence_two_mcu = false
    }

    if (msg.fault_different_data_two_mcu !== undefined) {
      resolved.fault_different_data_two_mcu = msg.fault_different_data_two_mcu;
    }
    else {
      resolved.fault_different_data_two_mcu = false
    }

    if (msg.fault_safety_function !== undefined) {
      resolved.fault_safety_function = msg.fault_safety_function;
    }
    else {
      resolved.fault_safety_function = 0
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
SafetyReportV2.Constants = {
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
  FAULT_EXTERNAL_STOP: 7,
  FAULT_PROGRAM_TIMING: 8,
  FAULT_PC_BOARD_CHECK: 9,
  MCU_FAULT_NO_ERROR: 0,
  MCU_FAULT_CORE_TEST_FAIL: 1,
  MCU_FAULT_RAM_TEST_FAIL: 2,
  MCU_FAULT_FLASH_TEST_FAIL: 3,
  MCU_FAULT_PWR_SETTING_MISMATCH: 4,
  MCU_FAULT_RCC_SETTING_MISMATCH: 5,
  MCU_FAULT_GPIO_SETTING_MISMATCH: 6,
  MCU_FAULT_SYSCFG_SETTING_MISMATCH: 7,
  MCU_FAULT_DMA_SETTING_MISMATCH: 8,
  MCU_FAULT_NVIC_SETTING_MISMATCH: 9,
  MCU_FAULT_ADC_SETTING_MISMATCH: 10,
  MCU_FAULT_VREFBUF_SETTING_MISMATCH: 11,
  MCU_FAULT_WDG_SETTING_MISMATCH: 12,
  MCU_FAULT_SPI_SETTING_MISMATCH: 13,
  MCU_FAULT_CAN_SETTING_MISMATCH: 14,
  MCU_FAULT_POWERING_ERROR: 15,
  MCU_FAULT_CLOCKING_ERROR: 16,
  MCU_FAULT_DIAGNOSTIC_ERROR: 17,
  MCU_FAULT_CAN_ERROR: 18,
  MCU_FAULT_RESET_OCCURED: 255,
}

module.exports = SafetyReportV2;
