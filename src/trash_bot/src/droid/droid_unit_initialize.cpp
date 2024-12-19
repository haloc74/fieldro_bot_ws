
#include "droid.h"

namespace frb
{
 void Droid::create_unit_initialize_sequence()      
 {  
    add_sequence(to_int(frb::UnitName::Observer), to_int(frb::UnitAction::Init));
    add_sequence(to_int(frb::UnitName::Signal), to_int(frb::UnitAction::Init));  

     // Loader 
   // add_sequence(to_int(frb::UnitName::Loader), to_int(frb::UnitAction::Fall));
   //  add_sequence(to_int(frb::UnitName::Loader), to_int(frb::UnitAction::Raise));
 }

}