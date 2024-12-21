
#include "zlb_traction.h"
#include <unistd.h>

namespace frb
{
  ZlbTraction::ZlbTraction(std::function<int32_t(int32_t, int32_t, MODBUS_FUNC_CODE)> traction_callback)
  {
    traction_notify = traction_callback;

    traction_init();                      
  }

  ZlbTraction::~ZlbTraction()
  {
    stop();
  }

  // 왜 이 함수를 만든거지 ??? : 생성자에서 한번밖에 호출이 되지 않는데
  void ZlbTraction::traction_init()
  {
    stop();

    _current_position = 0;
    _current_rpm      = 0;
    
    set_velocity_mode();    
  }

  // 
  void ZlbTraction::quick_stop()
  {
    notify_function(ServoFD1X5::CONTROL_REGISTER, 
                    ServoFD1X5::CONTROL_VALUES::QUICK_STOP, 
                    MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);    

    _opmode.clear();
    usleep(10000);      // 이거 왜 있나 ??
    return;
  }

  void ZlbTraction::stop()
  {
    notify_function(ServoFD1X5::CONTROL_REGISTER, 
                    ServoFD1X5::CONTROL_VALUES::STOP, 
                    MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);   

    //_opmode.clear();    // 이거 필요 없나 ?
    usleep(10000);      // 이거 왜 있나 ?? 
  }

  void ZlbTraction::reset()
  {
    notify_function(ServoFD1X5::CONTROL_REGISTER, 
                    ServoFD1X5::CONTROL_VALUES::RESET,
                    MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);    

    _opmode.clear();
    usleep(10000);      // 이거 왜 있나 ?? 
  }

  void ZlbTraction::set_velocity_mode(const std::string& direction)
  {
    stop();

    notify_function(ServoFD1X5::OPMODE_REGISTER, 
                    ServoFD1X5::OPMODE_VALUES::VELOCITY, 
                    MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);

    notify_function(ServoFD1X5::VELOCITY_DIRECTION_REGISTER, 
                    ServoFD1X5::VELOCITY_DIRECTION_VALUES.at(direction), 
                    MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);

    _opmode = "velocity";
    usleep(10000);      // 이거 왜 있나 ??
  }

  void ZlbTraction::set_velocity(int32_t rpm)
  {
    notify_function(ServoFD1X5::VELOCITY_COMMAND_REGISTER, rpm, 
                    MODBUS_FUNC_CODE::WRITE_MULTIPLE_REGISTERS);
  }

  void ZlbTraction::run_velocity()
  {
    if(_opmode != "velocity")
    {
      set_velocity_mode();
    }

    notify_function(ServoFD1X5::CONTROL_REGISTER, 
                    ServoFD1X5::CONTROL_VALUES::START, 
                    MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);

    usleep(10000);      // 이거 왜 있나 ??
  }

  int32_t ZlbTraction::get_velocity()
  {
    _current_rpm = notify_function(ServoFD1X5::VELOCITY_FEEDBACK_REGISTER, 
                                        2, 
                                        MODBUS_FUNC_CODE::READ_HOLDING_REGISTERS);

    return _current_rpm;
  }

  int32_t ZlbTraction::get_position()
  {
    _current_position = notify_function(ServoFD1X5::POSITION_FEEDBACK_REGISTER, 
                                        2, 
                                        MODBUS_FUNC_CODE::READ_HOLDING_REGISTERS);

    return _current_position;
  }


  int32_t ZlbTraction::notify_function(int32_t value1, int32_t value2, MODBUS_FUNC_CODE code)
  {
    if(traction_notify == nullptr)    return;

    int32_t ret = traction_notify(value1, value2, code);

    return ret;
  }





  void ZlbTraction::reset()
  {
    notify_function(0, 0, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  }

  void ZlbTraction::set_velocity_mode(const std::string& direction)
  {
    if (direction == "forward")
    {
      notify_function(0x000F, 0, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
    }
    else if (direction == "backward")
    {
      notify_function(0x001F, 0, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
    }
  }

  void ZlbTraction::set_velocity(int32_t rpm)
  {
    _current_rpm = rpm;
    notify_function(rpm, 0, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  }

  void ZlbTraction::run_velocity()
  {
    notify_function(0x000F, 0, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  }

  int32_t ZlbTraction::get_velocity()
  {
    return _current_rpm;
  }

  int32_t ZlbTraction::get_position()
  {
    return _current_position;
  }

  void ZlbTraction::traction_init()
  {
    notify_function(0x0006, 0, MODBUS_FUNC_CODE::WRITE_SINGLE_REGISTER);
  }

}