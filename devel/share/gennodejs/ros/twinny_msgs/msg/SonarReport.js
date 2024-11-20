// Auto-generated. Do not edit!

// (in-package twinny_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SonarReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sonar_range = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sonar_range')) {
        this.sonar_range = initObj.sonar_range
      }
      else {
        this.sonar_range = new Array(12).fill(new sensor_msgs.msg.Range());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SonarReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [sonar_range] has the right length
    if (obj.sonar_range.length !== 12) {
      throw new Error('Unable to serialize array field sonar_range - length must be 12')
    }
    // Serialize message field [sonar_range]
    obj.sonar_range.forEach((val) => {
      bufferOffset = sensor_msgs.msg.Range.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonarReport
    let len;
    let data = new SonarReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sonar_range]
    len = 12;
    data.sonar_range = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sonar_range[i] = sensor_msgs.msg.Range.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.sonar_range.forEach((val) => {
      length += sensor_msgs.msg.Range.getMessageSize(val);
    });
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'twinny_msgs/SonarReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12459e57aa4616e3ed20f17651e15882';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 LEFT_SONAR=0
    uint8 FRONT_SONAR=1
    uint8 RIGHT_SONAR=2
    
    uint8 FRONT_LEFT_SONAR=0
    uint8 FRONT_MID_SONAR=1
    uint8 FRONT_RIGHT_SONAR=2
    
    uint8 RIGHT_FRONT_SONAR=3
    uint8 RIGHT_MID_SONAR=4
    uint8 RIGHT_BACK_SONAR=5
    
    uint8 BACK_RIGHT_SONAR=6
    uint8 BACK_MID_SONAR=7
    uint8 BACK_LEFT_SONAR=8
    
    uint8 LEFT_BACK_SONAR=9
    uint8 LEFT_MID_SONAR=10
    uint8 LEFT_FRONT_SONAR=11
    
    sensor_msgs/Range[12] sonar_range
    
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
    
    ================================================================================
    MSG: sensor_msgs/Range
    # Single range reading from an active ranger that emits energy and reports
    # one range reading that is valid along an arc at the distance measured. 
    # This message is  not appropriate for laser scanners. See the LaserScan
    # message if you are working with a laser scanner.
    
    # This message also can represent a fixed-distance (binary) ranger.  This
    # sensor will have min_range===max_range===distance of detection.
    # These sensors follow REP 117 and will output -Inf if the object is detected
    # and +Inf if the object is outside of the detection range.
    
    Header header           # timestamp in the header is the time the ranger
                            # returned the distance reading
    
    # Radiation type enums
    # If you want a value added to this list, send an email to the ros-users list
    uint8 ULTRASOUND=0
    uint8 INFRARED=1
    
    uint8 radiation_type    # the type of radiation used by the sensor
                            # (sound, IR, etc) [enum]
    
    float32 field_of_view   # the size of the arc that the distance reading is
                            # valid for [rad]
                            # the object causing the range reading may have
                            # been anywhere within -field_of_view/2 and
                            # field_of_view/2 at the measured range. 
                            # 0 angle corresponds to the x-axis of the sensor.
    
    float32 min_range       # minimum range value [m]
    float32 max_range       # maximum range value [m]
                            # Fixed distance rangers require min_range==max_range
    
    float32 range           # range data [m]
                            # (Note: values < range_min or > range_max
                            # should be discarded)
                            # Fixed distance rangers only output -Inf or +Inf.
                            # -Inf represents a detection within fixed distance.
                            # (Detection too close to the sensor to quantify)
                            # +Inf represents no detection within the fixed distance.
                            # (Object out of range)
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SonarReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sonar_range !== undefined) {
      resolved.sonar_range = new Array(12)
      for (let i = 0; i < resolved.sonar_range.length; ++i) {
        if (msg.sonar_range.length > i) {
          resolved.sonar_range[i] = sensor_msgs.msg.Range.Resolve(msg.sonar_range[i]);
        }
        else {
          resolved.sonar_range[i] = new sensor_msgs.msg.Range();
        }
      }
    }
    else {
      resolved.sonar_range = new Array(12).fill(new sensor_msgs.msg.Range())
    }

    return resolved;
    }
};

// Constants for message
SonarReport.Constants = {
  LEFT_SONAR: 0,
  FRONT_SONAR: 1,
  RIGHT_SONAR: 2,
  FRONT_LEFT_SONAR: 0,
  FRONT_MID_SONAR: 1,
  FRONT_RIGHT_SONAR: 2,
  RIGHT_FRONT_SONAR: 3,
  RIGHT_MID_SONAR: 4,
  RIGHT_BACK_SONAR: 5,
  BACK_RIGHT_SONAR: 6,
  BACK_MID_SONAR: 7,
  BACK_LEFT_SONAR: 8,
  LEFT_BACK_SONAR: 9,
  LEFT_MID_SONAR: 10,
  LEFT_FRONT_SONAR: 11,
}

module.exports = SonarReport;
