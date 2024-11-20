# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from twinny_msgs/BatteryReport.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class BatteryReport(genpy.Message):
  _md5sum = "e9a48e58d2c7cc1f7859a62328338891"
  _type = "twinny_msgs/BatteryReport"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header

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
"""
  # Pseudo-constants
  NORMAL = 0
  ERROR = 1
  CHARGING = 1
  NOCHARGING = 0
  DOCKING_SENSOR_OFF = 0
  DOCKING_SENSOR_ON = 1
  CHARGER_RELAY_OFF = 0
  CHARGER_RELAY_ON = 1
  POWER_SAVING_OFF = 0
  POWER_SAVING_ON = 1
  WIRE_CHARGING_MODE_OFF = 0
  WIRE_CHARGING_MODE_ON = 1
  DOCKING_CHARGE_DISABLE = 0
  DOCKING_CHARGE_ENABLE = 1
  BATTERY_NONFULL = 0
  BATTERY_FULL = 1
  BATTERY_NONZERO = 0
  BATTERY_ZERO = 1

  __slots__ = ['header','STATE','Battery_power','Battery_current','Battery_voltage','Charge_flag','Docking_sensor_flag','Charger_relay_status','Power_saving_mode','Wire_charging_mode','Docking_charge_enable','Battery_full_flag','Battery_empty_flag']
  _slot_types = ['std_msgs/Header','uint8','uint8','float64','float64','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,STATE,Battery_power,Battery_current,Battery_voltage,Charge_flag,Docking_sensor_flag,Charger_relay_status,Power_saving_mode,Wire_charging_mode,Docking_charge_enable,Battery_full_flag,Battery_empty_flag

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BatteryReport, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.STATE is None:
        self.STATE = 0
      if self.Battery_power is None:
        self.Battery_power = 0
      if self.Battery_current is None:
        self.Battery_current = 0.
      if self.Battery_voltage is None:
        self.Battery_voltage = 0.
      if self.Charge_flag is None:
        self.Charge_flag = 0
      if self.Docking_sensor_flag is None:
        self.Docking_sensor_flag = 0
      if self.Charger_relay_status is None:
        self.Charger_relay_status = 0
      if self.Power_saving_mode is None:
        self.Power_saving_mode = 0
      if self.Wire_charging_mode is None:
        self.Wire_charging_mode = 0
      if self.Docking_charge_enable is None:
        self.Docking_charge_enable = 0
      if self.Battery_full_flag is None:
        self.Battery_full_flag = 0
      if self.Battery_empty_flag is None:
        self.Battery_empty_flag = 0
    else:
      self.header = std_msgs.msg.Header()
      self.STATE = 0
      self.Battery_power = 0
      self.Battery_current = 0.
      self.Battery_voltage = 0.
      self.Charge_flag = 0
      self.Docking_sensor_flag = 0
      self.Charger_relay_status = 0
      self.Power_saving_mode = 0
      self.Wire_charging_mode = 0
      self.Docking_charge_enable = 0
      self.Battery_full_flag = 0
      self.Battery_empty_flag = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2B2d8B().pack(_x.STATE, _x.Battery_power, _x.Battery_current, _x.Battery_voltage, _x.Charge_flag, _x.Docking_sensor_flag, _x.Charger_relay_status, _x.Power_saving_mode, _x.Wire_charging_mode, _x.Docking_charge_enable, _x.Battery_full_flag, _x.Battery_empty_flag))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 26
      (_x.STATE, _x.Battery_power, _x.Battery_current, _x.Battery_voltage, _x.Charge_flag, _x.Docking_sensor_flag, _x.Charger_relay_status, _x.Power_saving_mode, _x.Wire_charging_mode, _x.Docking_charge_enable, _x.Battery_full_flag, _x.Battery_empty_flag,) = _get_struct_2B2d8B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2B2d8B().pack(_x.STATE, _x.Battery_power, _x.Battery_current, _x.Battery_voltage, _x.Charge_flag, _x.Docking_sensor_flag, _x.Charger_relay_status, _x.Power_saving_mode, _x.Wire_charging_mode, _x.Docking_charge_enable, _x.Battery_full_flag, _x.Battery_empty_flag))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 26
      (_x.STATE, _x.Battery_power, _x.Battery_current, _x.Battery_voltage, _x.Charge_flag, _x.Docking_sensor_flag, _x.Charger_relay_status, _x.Power_saving_mode, _x.Wire_charging_mode, _x.Docking_charge_enable, _x.Battery_full_flag, _x.Battery_empty_flag,) = _get_struct_2B2d8B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B2d8B = None
def _get_struct_2B2d8B():
    global _struct_2B2d8B
    if _struct_2B2d8B is None:
        _struct_2B2d8B = struct.Struct("<2B2d8B")
    return _struct_2B2d8B
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
