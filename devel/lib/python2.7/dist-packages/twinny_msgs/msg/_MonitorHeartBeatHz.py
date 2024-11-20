# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from twinny_msgs/MonitorHeartBeatHz.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class MonitorHeartBeatHz(genpy.Message):
  _md5sum = "6e75bac3d8efef67e052259a96f13d33"
  _type = "twinny_msgs/MonitorHeartBeatHz"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header 

uint8 Motor_DriverA_Hz
uint8 Motor_DriverB_Hz
uint8 Motor_DriverC_Hz
uint8 Motor_DriverD_Hz
uint8 Motor_DriverE_Hz
uint8 Motor_DriverF_Hz
uint8 Motor_DriverG_Hz
uint8 Motor_DriverH_Hz
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
  __slots__ = ['header','Motor_DriverA_Hz','Motor_DriverB_Hz','Motor_DriverC_Hz','Motor_DriverD_Hz','Motor_DriverE_Hz','Motor_DriverF_Hz','Motor_DriverG_Hz','Motor_DriverH_Hz']
  _slot_types = ['std_msgs/Header','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,Motor_DriverA_Hz,Motor_DriverB_Hz,Motor_DriverC_Hz,Motor_DriverD_Hz,Motor_DriverE_Hz,Motor_DriverF_Hz,Motor_DriverG_Hz,Motor_DriverH_Hz

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MonitorHeartBeatHz, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.Motor_DriverA_Hz is None:
        self.Motor_DriverA_Hz = 0
      if self.Motor_DriverB_Hz is None:
        self.Motor_DriverB_Hz = 0
      if self.Motor_DriverC_Hz is None:
        self.Motor_DriverC_Hz = 0
      if self.Motor_DriverD_Hz is None:
        self.Motor_DriverD_Hz = 0
      if self.Motor_DriverE_Hz is None:
        self.Motor_DriverE_Hz = 0
      if self.Motor_DriverF_Hz is None:
        self.Motor_DriverF_Hz = 0
      if self.Motor_DriverG_Hz is None:
        self.Motor_DriverG_Hz = 0
      if self.Motor_DriverH_Hz is None:
        self.Motor_DriverH_Hz = 0
    else:
      self.header = std_msgs.msg.Header()
      self.Motor_DriverA_Hz = 0
      self.Motor_DriverB_Hz = 0
      self.Motor_DriverC_Hz = 0
      self.Motor_DriverD_Hz = 0
      self.Motor_DriverE_Hz = 0
      self.Motor_DriverF_Hz = 0
      self.Motor_DriverG_Hz = 0
      self.Motor_DriverH_Hz = 0

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
      buff.write(_get_struct_8B().pack(_x.Motor_DriverA_Hz, _x.Motor_DriverB_Hz, _x.Motor_DriverC_Hz, _x.Motor_DriverD_Hz, _x.Motor_DriverE_Hz, _x.Motor_DriverF_Hz, _x.Motor_DriverG_Hz, _x.Motor_DriverH_Hz))
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
      end += 8
      (_x.Motor_DriverA_Hz, _x.Motor_DriverB_Hz, _x.Motor_DriverC_Hz, _x.Motor_DriverD_Hz, _x.Motor_DriverE_Hz, _x.Motor_DriverF_Hz, _x.Motor_DriverG_Hz, _x.Motor_DriverH_Hz,) = _get_struct_8B().unpack(str[start:end])
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
      buff.write(_get_struct_8B().pack(_x.Motor_DriverA_Hz, _x.Motor_DriverB_Hz, _x.Motor_DriverC_Hz, _x.Motor_DriverD_Hz, _x.Motor_DriverE_Hz, _x.Motor_DriverF_Hz, _x.Motor_DriverG_Hz, _x.Motor_DriverH_Hz))
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
      end += 8
      (_x.Motor_DriverA_Hz, _x.Motor_DriverB_Hz, _x.Motor_DriverC_Hz, _x.Motor_DriverD_Hz, _x.Motor_DriverE_Hz, _x.Motor_DriverF_Hz, _x.Motor_DriverG_Hz, _x.Motor_DriverH_Hz,) = _get_struct_8B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_8B = None
def _get_struct_8B():
    global _struct_8B
    if _struct_8B is None:
        _struct_8B = struct.Struct("<8B")
    return _struct_8B
