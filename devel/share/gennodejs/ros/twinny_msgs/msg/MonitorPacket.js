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

class MonitorPacket {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.CAN1_MCU_Rx_Packet = null;
      this.CAN1_MCU_Tx_Packet = null;
      this.CAN2_MCU_Rx_Packet = null;
      this.CAN2_MCU_Tx_Packet = null;
      this.LIN1_MCU_Rx = null;
      this.LIN1_MCU_Tx = null;
      this.LIN2_MCU_Rx = null;
      this.LIN2_MCU_Tx = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('CAN1_MCU_Rx_Packet')) {
        this.CAN1_MCU_Rx_Packet = initObj.CAN1_MCU_Rx_Packet
      }
      else {
        this.CAN1_MCU_Rx_Packet = 0;
      }
      if (initObj.hasOwnProperty('CAN1_MCU_Tx_Packet')) {
        this.CAN1_MCU_Tx_Packet = initObj.CAN1_MCU_Tx_Packet
      }
      else {
        this.CAN1_MCU_Tx_Packet = 0;
      }
      if (initObj.hasOwnProperty('CAN2_MCU_Rx_Packet')) {
        this.CAN2_MCU_Rx_Packet = initObj.CAN2_MCU_Rx_Packet
      }
      else {
        this.CAN2_MCU_Rx_Packet = 0;
      }
      if (initObj.hasOwnProperty('CAN2_MCU_Tx_Packet')) {
        this.CAN2_MCU_Tx_Packet = initObj.CAN2_MCU_Tx_Packet
      }
      else {
        this.CAN2_MCU_Tx_Packet = 0;
      }
      if (initObj.hasOwnProperty('LIN1_MCU_Rx')) {
        this.LIN1_MCU_Rx = initObj.LIN1_MCU_Rx
      }
      else {
        this.LIN1_MCU_Rx = 0;
      }
      if (initObj.hasOwnProperty('LIN1_MCU_Tx')) {
        this.LIN1_MCU_Tx = initObj.LIN1_MCU_Tx
      }
      else {
        this.LIN1_MCU_Tx = 0;
      }
      if (initObj.hasOwnProperty('LIN2_MCU_Rx')) {
        this.LIN2_MCU_Rx = initObj.LIN2_MCU_Rx
      }
      else {
        this.LIN2_MCU_Rx = 0;
      }
      if (initObj.hasOwnProperty('LIN2_MCU_Tx')) {
        this.LIN2_MCU_Tx = initObj.LIN2_MCU_Tx
      }
      else {
        this.LIN2_MCU_Tx = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonitorPacket
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [CAN1_MCU_Rx_Packet]
    bufferOffset = _serializer.uint16(obj.CAN1_MCU_Rx_Packet, buffer, bufferOffset);
    // Serialize message field [CAN1_MCU_Tx_Packet]
    bufferOffset = _serializer.uint16(obj.CAN1_MCU_Tx_Packet, buffer, bufferOffset);
    // Serialize message field [CAN2_MCU_Rx_Packet]
    bufferOffset = _serializer.uint16(obj.CAN2_MCU_Rx_Packet, buffer, bufferOffset);
    // Serialize message field [CAN2_MCU_Tx_Packet]
    bufferOffset = _serializer.uint16(obj.CAN2_MCU_Tx_Packet, buffer, bufferOffset);
    // Serialize message field [LIN1_MCU_Rx]
    bufferOffset = _serializer.uint16(obj.LIN1_MCU_Rx, buffer, bufferOffset);
    // Serialize message field [LIN1_MCU_Tx]
    bufferOffset = _serializer.uint16(obj.LIN1_MCU_Tx, buffer, bufferOffset);
    // Serialize message field [LIN2_MCU_Rx]
    bufferOffset = _serializer.uint16(obj.LIN2_MCU_Rx, buffer, bufferOffset);
    // Serialize message field [LIN2_MCU_Tx]
    bufferOffset = _serializer.uint16(obj.LIN2_MCU_Tx, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonitorPacket
    let len;
    let data = new MonitorPacket(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [CAN1_MCU_Rx_Packet]
    data.CAN1_MCU_Rx_Packet = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [CAN1_MCU_Tx_Packet]
    data.CAN1_MCU_Tx_Packet = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [CAN2_MCU_Rx_Packet]
    data.CAN2_MCU_Rx_Packet = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [CAN2_MCU_Tx_Packet]
    data.CAN2_MCU_Tx_Packet = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LIN1_MCU_Rx]
    data.LIN1_MCU_Rx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LIN1_MCU_Tx]
    data.LIN1_MCU_Tx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LIN2_MCU_Rx]
    data.LIN2_MCU_Rx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LIN2_MCU_Tx]
    data.LIN2_MCU_Tx = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/MonitorPacket';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66e58c86df0235b897d5abd8cc8e9f6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    uint16 CAN1_MCU_Rx_Packet
    uint16 CAN1_MCU_Tx_Packet
    uint16 CAN2_MCU_Rx_Packet
    uint16 CAN2_MCU_Tx_Packet
    
    uint16 LIN1_MCU_Rx
    uint16 LIN1_MCU_Tx
    uint16 LIN2_MCU_Rx
    uint16 LIN2_MCU_Tx
    
    
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
    const resolved = new MonitorPacket(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.CAN1_MCU_Rx_Packet !== undefined) {
      resolved.CAN1_MCU_Rx_Packet = msg.CAN1_MCU_Rx_Packet;
    }
    else {
      resolved.CAN1_MCU_Rx_Packet = 0
    }

    if (msg.CAN1_MCU_Tx_Packet !== undefined) {
      resolved.CAN1_MCU_Tx_Packet = msg.CAN1_MCU_Tx_Packet;
    }
    else {
      resolved.CAN1_MCU_Tx_Packet = 0
    }

    if (msg.CAN2_MCU_Rx_Packet !== undefined) {
      resolved.CAN2_MCU_Rx_Packet = msg.CAN2_MCU_Rx_Packet;
    }
    else {
      resolved.CAN2_MCU_Rx_Packet = 0
    }

    if (msg.CAN2_MCU_Tx_Packet !== undefined) {
      resolved.CAN2_MCU_Tx_Packet = msg.CAN2_MCU_Tx_Packet;
    }
    else {
      resolved.CAN2_MCU_Tx_Packet = 0
    }

    if (msg.LIN1_MCU_Rx !== undefined) {
      resolved.LIN1_MCU_Rx = msg.LIN1_MCU_Rx;
    }
    else {
      resolved.LIN1_MCU_Rx = 0
    }

    if (msg.LIN1_MCU_Tx !== undefined) {
      resolved.LIN1_MCU_Tx = msg.LIN1_MCU_Tx;
    }
    else {
      resolved.LIN1_MCU_Tx = 0
    }

    if (msg.LIN2_MCU_Rx !== undefined) {
      resolved.LIN2_MCU_Rx = msg.LIN2_MCU_Rx;
    }
    else {
      resolved.LIN2_MCU_Rx = 0
    }

    if (msg.LIN2_MCU_Tx !== undefined) {
      resolved.LIN2_MCU_Tx = msg.LIN2_MCU_Tx;
    }
    else {
      resolved.LIN2_MCU_Tx = 0
    }

    return resolved;
    }
};

module.exports = MonitorPacket;
