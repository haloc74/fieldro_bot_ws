# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from twinny_msgs/PowerRelayCommand.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class PowerRelayCommand(genpy.Message):
  _md5sum = "7c82c51a774f35c41519d2c48627f1d3"
  _type = "twinny_msgs/PowerRelayCommand"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header 

uint8 Motor_power_relay_control
uint8 PC_MCU_power_relay_control
uint8 Charger_start_command

uint8 FORCED_OFF = 0
uint8 ON = 1
uint8 KEEP = 2

uint8 CHARGER_OFF = 0
uint8 CHARGER_ON = 1
uint8 CHARGER_KEEP = 2

uint8 MOTOR_RELAY_OFF = 0
uint8 MOTOR_RELAY_ON = 1
uint8 MOTOR_RELAY_KEEP = 2

uint8 PC_MCU_RELAY_OFF = 0
uint8 PC_MCU_RELAY_ON = 1
uint8 PC_MCU_RELAY_KEEP = 2
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
  FORCED_OFF = 0
  ON = 1
  KEEP = 2
  CHARGER_OFF = 0
  CHARGER_ON = 1
  CHARGER_KEEP = 2
  MOTOR_RELAY_OFF = 0
  MOTOR_RELAY_ON = 1
  MOTOR_RELAY_KEEP = 2
  PC_MCU_RELAY_OFF = 0
  PC_MCU_RELAY_ON = 1
  PC_MCU_RELAY_KEEP = 2

  __slots__ = ['header','Motor_power_relay_control','PC_MCU_power_relay_control','Charger_start_command']
  _slot_types = ['std_msgs/Header','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,Motor_power_relay_control,PC_MCU_power_relay_control,Charger_start_command

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PowerRelayCommand, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.Motor_power_relay_control is None:
        self.Motor_power_relay_control = 0
      if self.PC_MCU_power_relay_control is None:
        self.PC_MCU_power_relay_control = 0
      if self.Charger_start_command is None:
        self.Charger_start_command = 0
    else:
      self.header = std_msgs.msg.Header()
      self.Motor_power_relay_control = 0
      self.PC_MCU_power_relay_control = 0
      self.Charger_start_command = 0

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
      buff.write(_get_struct_3B().pack(_x.Motor_power_relay_control, _x.PC_MCU_power_relay_control, _x.Charger_start_command))
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
      end += 3
      (_x.Motor_power_relay_control, _x.PC_MCU_power_relay_control, _x.Charger_start_command,) = _get_struct_3B().unpack(str[start:end])
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
      buff.write(_get_struct_3B().pack(_x.Motor_power_relay_control, _x.PC_MCU_power_relay_control, _x.Charger_start_command))
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
      end += 3
      (_x.Motor_power_relay_control, _x.PC_MCU_power_relay_control, _x.Charger_start_command,) = _get_struct_3B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
