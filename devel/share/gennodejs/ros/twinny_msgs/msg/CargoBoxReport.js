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

class CargoBoxReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.cargobox_id = null;
      this.door_lock_state = null;
      this.door_open_state = null;
      this.door_sensor_state = null;
      this.lamp_state = null;
      this.led_color = null;
      this.led_state = null;
      this.weight = null;
      this.x_coordinate = null;
      this.y_coordinate = null;
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
      if (initObj.hasOwnProperty('cargobox_id')) {
        this.cargobox_id = initObj.cargobox_id
      }
      else {
        this.cargobox_id = [];
      }
      if (initObj.hasOwnProperty('door_lock_state')) {
        this.door_lock_state = initObj.door_lock_state
      }
      else {
        this.door_lock_state = [];
      }
      if (initObj.hasOwnProperty('door_open_state')) {
        this.door_open_state = initObj.door_open_state
      }
      else {
        this.door_open_state = [];
      }
      if (initObj.hasOwnProperty('door_sensor_state')) {
        this.door_sensor_state = initObj.door_sensor_state
      }
      else {
        this.door_sensor_state = [];
      }
      if (initObj.hasOwnProperty('lamp_state')) {
        this.lamp_state = initObj.lamp_state
      }
      else {
        this.lamp_state = [];
      }
      if (initObj.hasOwnProperty('led_color')) {
        this.led_color = initObj.led_color
      }
      else {
        this.led_color = '';
      }
      if (initObj.hasOwnProperty('led_state')) {
        this.led_state = initObj.led_state
      }
      else {
        this.led_state = '';
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = [];
      }
      if (initObj.hasOwnProperty('x_coordinate')) {
        this.x_coordinate = initObj.x_coordinate
      }
      else {
        this.x_coordinate = [];
      }
      if (initObj.hasOwnProperty('y_coordinate')) {
        this.y_coordinate = initObj.y_coordinate
      }
      else {
        this.y_coordinate = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CargoBoxReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [cargobox_id]
    bufferOffset = _arraySerializer.uint8(obj.cargobox_id, buffer, bufferOffset, null);
    // Serialize message field [door_lock_state]
    bufferOffset = _arraySerializer.int32(obj.door_lock_state, buffer, bufferOffset, null);
    // Serialize message field [door_open_state]
    bufferOffset = _arraySerializer.bool(obj.door_open_state, buffer, bufferOffset, null);
    // Serialize message field [door_sensor_state]
    bufferOffset = _arraySerializer.bool(obj.door_sensor_state, buffer, bufferOffset, null);
    // Serialize message field [lamp_state]
    bufferOffset = _arraySerializer.bool(obj.lamp_state, buffer, bufferOffset, null);
    // Serialize message field [led_color]
    bufferOffset = _serializer.string(obj.led_color, buffer, bufferOffset);
    // Serialize message field [led_state]
    bufferOffset = _serializer.string(obj.led_state, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _arraySerializer.float32(obj.weight, buffer, bufferOffset, null);
    // Serialize message field [x_coordinate]
    bufferOffset = _arraySerializer.int8(obj.x_coordinate, buffer, bufferOffset, null);
    // Serialize message field [y_coordinate]
    bufferOffset = _arraySerializer.int8(obj.y_coordinate, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CargoBoxReport
    let len;
    let data = new CargoBoxReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cargobox_id]
    data.cargobox_id = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [door_lock_state]
    data.door_lock_state = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [door_open_state]
    data.door_open_state = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [door_sensor_state]
    data.door_sensor_state = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [lamp_state]
    data.lamp_state = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [led_color]
    data.led_color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [led_state]
    data.led_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [x_coordinate]
    data.x_coordinate = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [y_coordinate]
    data.y_coordinate = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    length += object.cargobox_id.length;
    length += 4 * object.door_lock_state.length;
    length += object.door_open_state.length;
    length += object.door_sensor_state.length;
    length += object.lamp_state.length;
    length += object.led_color.length;
    length += object.led_state.length;
    length += 4 * object.weight.length;
    length += object.x_coordinate.length;
    length += object.y_coordinate.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/CargoBoxReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '691cdd8fb0f467254faafb3ddd2b40aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    
    int32 DOOR_LOCK_STATE_UNLOCKED=0
    int32 DOOR_LOCK_STATE_LOCKED=1
    int32 DOOR_LOCK_STATE_ERROR=-1
    
    uint8[] cargobox_id                                
    
    int32[] door_lock_state             
    
    bool[] door_open_state              
    
    bool[] door_sensor_state                             
    
    bool[] lamp_state                   
    
    string led_color
    string led_state
    
    float32[] weight    
    
    int8[] x_coordinate                
    
    int8[] y_coordinate                  
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
    const resolved = new CargoBoxReport(null);
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

    if (msg.cargobox_id !== undefined) {
      resolved.cargobox_id = msg.cargobox_id;
    }
    else {
      resolved.cargobox_id = []
    }

    if (msg.door_lock_state !== undefined) {
      resolved.door_lock_state = msg.door_lock_state;
    }
    else {
      resolved.door_lock_state = []
    }

    if (msg.door_open_state !== undefined) {
      resolved.door_open_state = msg.door_open_state;
    }
    else {
      resolved.door_open_state = []
    }

    if (msg.door_sensor_state !== undefined) {
      resolved.door_sensor_state = msg.door_sensor_state;
    }
    else {
      resolved.door_sensor_state = []
    }

    if (msg.lamp_state !== undefined) {
      resolved.lamp_state = msg.lamp_state;
    }
    else {
      resolved.lamp_state = []
    }

    if (msg.led_color !== undefined) {
      resolved.led_color = msg.led_color;
    }
    else {
      resolved.led_color = ''
    }

    if (msg.led_state !== undefined) {
      resolved.led_state = msg.led_state;
    }
    else {
      resolved.led_state = ''
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = []
    }

    if (msg.x_coordinate !== undefined) {
      resolved.x_coordinate = msg.x_coordinate;
    }
    else {
      resolved.x_coordinate = []
    }

    if (msg.y_coordinate !== undefined) {
      resolved.y_coordinate = msg.y_coordinate;
    }
    else {
      resolved.y_coordinate = []
    }

    return resolved;
    }
};

// Constants for message
CargoBoxReport.Constants = {
  DOOR_LOCK_STATE_UNLOCKED: 0,
  DOOR_LOCK_STATE_LOCKED: 1,
  DOOR_LOCK_STATE_ERROR: -1,
}

module.exports = CargoBoxReport;
