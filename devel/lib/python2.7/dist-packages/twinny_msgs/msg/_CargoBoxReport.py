# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from twinny_msgs/CargoBoxReport.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class CargoBoxReport(genpy.Message):
  _md5sum = "691cdd8fb0f467254faafb3ddd2b40aa"
  _type = "twinny_msgs/CargoBoxReport"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header
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
"""
  # Pseudo-constants
  DOOR_LOCK_STATE_UNLOCKED = 0
  DOOR_LOCK_STATE_LOCKED = 1
  DOOR_LOCK_STATE_ERROR = -1

  __slots__ = ['header','type','cargobox_id','door_lock_state','door_open_state','door_sensor_state','lamp_state','led_color','led_state','weight','x_coordinate','y_coordinate']
  _slot_types = ['std_msgs/Header','string','uint8[]','int32[]','bool[]','bool[]','bool[]','string','string','float32[]','int8[]','int8[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,type,cargobox_id,door_lock_state,door_open_state,door_sensor_state,lamp_state,led_color,led_state,weight,x_coordinate,y_coordinate

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CargoBoxReport, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.type is None:
        self.type = ''
      if self.cargobox_id is None:
        self.cargobox_id = b''
      if self.door_lock_state is None:
        self.door_lock_state = []
      if self.door_open_state is None:
        self.door_open_state = []
      if self.door_sensor_state is None:
        self.door_sensor_state = []
      if self.lamp_state is None:
        self.lamp_state = []
      if self.led_color is None:
        self.led_color = ''
      if self.led_state is None:
        self.led_state = ''
      if self.weight is None:
        self.weight = []
      if self.x_coordinate is None:
        self.x_coordinate = []
      if self.y_coordinate is None:
        self.y_coordinate = []
    else:
      self.header = std_msgs.msg.Header()
      self.type = ''
      self.cargobox_id = b''
      self.door_lock_state = []
      self.door_open_state = []
      self.door_sensor_state = []
      self.lamp_state = []
      self.led_color = ''
      self.led_state = ''
      self.weight = []
      self.x_coordinate = []
      self.y_coordinate = []

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
      _x = self.cargobox_id
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.door_lock_state)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.Struct(pattern).pack(*self.door_lock_state))
      length = len(self.door_open_state)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(struct.Struct(pattern).pack(*self.door_open_state))
      length = len(self.door_sensor_state)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(struct.Struct(pattern).pack(*self.door_sensor_state))
      length = len(self.lamp_state)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(struct.Struct(pattern).pack(*self.lamp_state))
      _x = self.led_color
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.led_state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.weight)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.weight))
      length = len(self.x_coordinate)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(struct.Struct(pattern).pack(*self.x_coordinate))
      length = len(self.y_coordinate)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(struct.Struct(pattern).pack(*self.y_coordinate))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.cargobox_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.door_lock_state = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.door_open_state = s.unpack(str[start:end])
      self.door_open_state = list(map(bool, self.door_open_state))
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.door_sensor_state = s.unpack(str[start:end])
      self.door_sensor_state = list(map(bool, self.door_sensor_state))
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.lamp_state = s.unpack(str[start:end])
      self.lamp_state = list(map(bool, self.lamp_state))
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.led_color = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.led_color = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.led_state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.led_state = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.weight = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.x_coordinate = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.y_coordinate = s.unpack(str[start:end])
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
      _x = self.cargobox_id
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.door_lock_state)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.door_lock_state.tostring())
      length = len(self.door_open_state)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(self.door_open_state.tostring())
      length = len(self.door_sensor_state)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(self.door_sensor_state.tostring())
      length = len(self.lamp_state)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(self.lamp_state.tostring())
      _x = self.led_color
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.led_state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.weight)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.weight.tostring())
      length = len(self.x_coordinate)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(self.x_coordinate.tostring())
      length = len(self.y_coordinate)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(self.y_coordinate.tostring())
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.cargobox_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.door_lock_state = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.door_open_state = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
      self.door_open_state = list(map(bool, self.door_open_state))
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.door_sensor_state = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
      self.door_sensor_state = list(map(bool, self.door_sensor_state))
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.lamp_state = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
      self.lamp_state = list(map(bool, self.lamp_state))
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.led_color = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.led_color = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.led_state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.led_state = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.weight = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.x_coordinate = numpy.frombuffer(str[start:end], dtype=numpy.int8, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.y_coordinate = numpy.frombuffer(str[start:end], dtype=numpy.int8, count=length)
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
