
#include "droid.h"

namespace frb
{
 void Droid::create_unit_initialize_sequence()      
 {  
  add_sequence(to_int(frb::UnitName::Observer), to_int(frb::UnitAction::Init));

  add_sequence(to_int(frb::UnitName::Signal), to_int(frb::UnitAction::Init)); 

  //add_sequence(to_int(frb::UnitName::Loader), to_int(frb::UnitAction::Init));
  add_sequence(to_int(frb::UnitName::Driving), to_int(frb::UnitAction::Init));

  // Loader 
  // add_sequence(to_int(frb::UnitName::Loader), to_int(frb::UnitAction::Fall));
  // add_sequence(to_int(frb::UnitName::Loader), to_int(frb::UnitAction::Raise));

   log_msg(LogInfo, 0, "create_unit_initialize_sequence !!!");
 }

  // void Droid::add_sequence_with_delay(int32_t unit_name, int32_t unit_action, int32_t delay_ms)
  // {
  //     std::this_thread::sleep_for(std::chrono::milliseconds(delay_ms));
  //     add_sequence(unit_name, unit_action);
  // }

  // void Droid::create_unit_initialize_sequence()      
  // {  
  //   auto seq1 = std::async(std::launch::async, [this]() 
  //   {
  //       add_sequence_with_delay(to_int(frb::UnitName::Observer), to_int(frb::UnitAction::Init), 0);
  //   });
    
  //   auto seq2 = std::async(std::launch::async, [this]() 
  //   {
  //       add_sequence_with_delay(to_int(frb::UnitName::Signal), to_int(frb::UnitAction::Init), 100);
  //   });
    
  //   auto seq3 = std::async(std::launch::async, [this]() 
  //   {
  //       add_sequence_with_delay(to_int(frb::UnitName::Driving), to_int(frb::UnitAction::Init), 200);
  //   });
  // } 

}