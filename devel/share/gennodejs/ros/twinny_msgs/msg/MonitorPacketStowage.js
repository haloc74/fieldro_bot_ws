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

class MonitorPacketStowage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.can1_rx = null;
      this.can1_tx = null;
      this.mcu_rx_adc = null;
      this.mcu_tx_adc = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = [];
      }
      if (initObj.hasOwnProperty('can1_rx')) {
        this.can1_rx = initObj.can1_rx
      }
      else {
        this.can1_rx = [];
      }
      if (initObj.hasOwnProperty('can1_tx')) {
        this.can1_tx = initObj.can1_tx
      }
      else {
        this.can1_tx = [];
      }
      if (initObj.hasOwnProperty('mcu_rx_adc')) {
        this.mcu_rx_adc = initObj.mcu_rx_adc
      }
      else {
        this.mcu_rx_adc = [];
      }
      if (initObj.hasOwnProperty('mcu_tx_adc')) {
        this.mcu_tx_adc = initObj.mcu_tx_adc
      }
      else {
        this.mcu_tx_adc = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonitorPacketStowage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _arraySerializer.uint8(obj.id, buffer, bufferOffset, null);
    // Serialize message field [can1_rx]
    bufferOffset = _arraySerializer.uint8(obj.can1_rx, buffer, bufferOffset, null);
    // Serialize message field [can1_tx]
    bufferOffset = _arraySerializer.uint8(obj.can1_tx, buffer, bufferOffset, null);
    // Serialize message field [mcu_rx_adc]
    bufferOffset = _arraySerializer.uint8(obj.mcu_rx_adc, buffer, bufferOffset, null);
    // Serialize message field [mcu_tx_adc]
    bufferOffset = _arraySerializer.uint8(obj.mcu_tx_adc, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonitorPacketStowage
    let len;
    let data = new MonitorPacketStowage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [can1_rx]
    data.can1_rx = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [can1_tx]
    data.can1_tx = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [mcu_rx_adc]
    data.mcu_rx_adc = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [mcu_tx_adc]
    data.mcu_tx_adc = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.id.length;
    length += object.can1_rx.length;
    length += object.can1_tx.length;
    length += object.mcu_rx_adc.length;
    length += object.mcu_tx_adc.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/MonitorPacketStowage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a7045a31936c524fdd5bbd3fb3ce238';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header  
    
    uint8[] id                            
    
    uint8[] can1_rx                       
    uint8[] can1_tx                       
    
    uint8[] mcu_rx_adc                  
    uint8[] mcu_tx_adc                  
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
    const resolved = new MonitorPacketStowage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = []
    }

    if (msg.can1_rx !== undefined) {
      resolved.can1_rx = msg.can1_rx;
    }
    else {
      resolved.can1_rx = []
    }

    if (msg.can1_tx !== undefined) {
      resolved.can1_tx = msg.can1_tx;
    }
    else {
      resolved.can1_tx = []
    }

    if (msg.mcu_rx_adc !== undefined) {
      resolved.mcu_rx_adc = msg.mcu_rx_adc;
    }
    else {
      resolved.mcu_rx_adc = []
    }

    if (msg.mcu_tx_adc !== undefined) {
      resolved.mcu_tx_adc = msg.mcu_tx_adc;
    }
    else {
      resolved.mcu_tx_adc = []
    }

    return resolved;
    }
};

module.exports = MonitorPacketStowage;
