




// #include "zlb_drive.h"
// namespace frb
// {

//   ZlbDrive::ZlbDrive(std::string config_file)
//   {
//     // _modbus = new ModbusWrapper(ModbusType::RTU, "/home/fieldro/Dev/zlb_drive/src/zlb_drive/config/zlb_drive.yaml");
//     // _modbus->connect_check();

//     _sorvo_power = false;
//     _modbus = new ModbusWrapper(ModbusType::RTU, 
//                                 config_file, 
//                                 "drive", 
//                                 std::bind(&ZlbDrive::modbus_state_receive, this, std::placeholders::_1));

//     _traction = new ZlbTraction(std::bind(&ZlbDrive::traction_callback, this, std::placeholders::_1, std::placeholders::_2, std::placeholders::_3));

//     _steer = new ZlbSteer(std::bind(&ZlbDrive::steer_callback, this, std::placeholders::_1, std::placeholders::_2, std::placeholders::_3), "/home/fieldro/Dev/zlb_drive/src/zlb_drive/config/zlb_steer.yaml");

//     _thread = new ThreadActionInfo(config_file, "motor");
//     _thread->_thread = std::thread(std::bind(&ZlbDrive::update, this));  
//     _thread->_active = true;
//   }

//   ZlbDrive::~ZlbDrive()
//   {
//     stop();

//     safe_delete(_traction);
//     safe_delete(_steer);
//     safe_delete(_modbus);

//     _thread->_active = false;
//     safe_delete(_thread);
//   }

//   /**
//   * @brief      modbus 연결 상태 통보 callback
//   * @param[in]  const CommStatus notify : modbus 상태
//   * @return     void
//   * @note       이전과 동일한 상태일 경우에는 처리를 할 필요가 없다.
//   */
//   void ZlbDrive::modbus_state_receive(const CommStatus notify)
//   {
//     if(notify == _modbus_state)     return;

//     _modbus_state = notify;

//     if(_modbus_state == CommStatus::Connect && !_sorvo_power)
//     {
//       // todo : 연결 되었다 motor에 대한 적절한 처리 하자
//       // 1. servo motor power on
//       // 2. traction motor init
//       // 3. steer motor init
//     }
//     return;
//   }

//   void ZlbDrive::update()
//   {
//     while(_thread->_active)
//     {
//       if(_modbus->connect_check() != CommStatus::Connect)   continue;

//       // todo : motor에 대한 상태를 확인하고 처리하는 로직을 작성하자
//       // 1. traction motor status check
//       // 2. steer motor status check

//       // thread Hz 싱크 및 독점 방지를 위한 sleep
//       std::this_thread::sleep_for(std::chrono::milliseconds(_thread->_sleep));
//     }
//   }
//}