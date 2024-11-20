# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from twinny_msgs/LEDControl.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class LEDControl(genpy.Message):
  _md5sum = "280cc3f1ed08eaa950d3ccca2f9e6e3e"
  _type = "twinny_msgs/LEDControl"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header
string type

uint8 LED_0=0
uint8 LED_1=1
uint8 LED_2=2
uint8 LED_3=3 
uint8 LED_4=4
uint8 LED_5=5

uint8 LED_6=6
uint8 LED_7=7
uint8 LED_8=8
uint8 LED_9=9
uint8 LED_10=10
uint8 LED_11=11

uint8 LED_BAR_OFF=100
uint8 LED_BAR_RED=101
uint8 LED_BAR_GREEN=102
uint8 LED_BAR_YELLOW=103
uint8 LED_BAR_BLUE=104
uint8 LED_BAR_MAGENTA=105
uint8 LED_BAR_CYAN=106
uint8 LED_BAR_WHITE=107

uint8 LED_BAR_OFF_2=200
uint8 LED_BAR_RED_2=201
uint8 LED_BAR_GREEN_2=202
uint8 LED_BAR_YELLOW_2=203
uint8 LED_BAR_BLUE_2=204
uint8 LED_BAR_MAGENTA_2=205
uint8 LED_BAR_CYAN_2=206
uint8 LED_BAR_WHITE_2=207

uint8 LED_ALL=255

uint8 STATE_OFF=0
uint8 STATE_ON=1
uint8 STATE_BLINK=2
uint8 STATE_KEEP=3

uint8 ID
uint8 STATE

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
  LED_0 = 0
  LED_1 = 1
  LED_2 = 2
  LED_3 = 3
  LED_4 = 4
  LED_5 = 5
  LED_6 = 6
  LED_7 = 7
  LED_8 = 8
  LED_9 = 9
  LED_10 = 10
  LED_11 = 11
  LED_BAR_OFF = 100
  LED_BAR_RED = 101
  LED_BAR_GREEN = 102
  LED_BAR_YELLOW = 103
  LED_BAR_BLUE = 104
  LED_BAR_MAGENTA = 105
  LED_BAR_CYAN = 106
  LED_BAR_WHITE = 107
  LED_BAR_OFF_2 = 200
  LED_BAR_RED_2 = 201
  LED_BAR_GREEN_2 = 202
  LED_BAR_YELLOW_2 = 203
  LED_BAR_BLUE_2 = 204
  LED_BAR_MAGENTA_2 = 205
  LED_BAR_CYAN_2 = 206
  LED_BAR_WHITE_2 = 207
  LED_ALL = 255
  STATE_OFF = 0
  STATE_ON = 1
  STATE_BLINK = 2
  STATE_KEEP = 3

  __slots__ = ['header','type','ID','STATE']
  _slot_types = ['std_msgs/Header','string','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,type,ID,STATE

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LEDControl, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.type is None:
        self.type = ''
      if self.ID is None:
        self.ID = 0
      if self.STATE is None:
        self.STATE = 0
    else:
      self.header = std_msgs.msg.Header()
      self.type = ''
      self.ID = 0
      self.STATE = 0

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
      _x = self.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.ID, _x.STATE))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.type = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.ID, _x.STATE,) = _get_struct_2B().unpack(str[start:end])
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
      _x = self.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.ID, _x.STATE))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.type = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.ID, _x.STATE,) = _get_struct_2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
