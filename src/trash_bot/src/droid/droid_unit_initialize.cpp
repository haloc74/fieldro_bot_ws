
#include "droid.h"

namespace fieldro_bot
{
 void Droid::create_unit_initialize_sequence()      
 {  
    add_sequence(to_int(fieldro_bot::UnitName::Observer), to_int(fieldro_bot::UnitAction::Init));
    add_sequence(to_int(fieldro_bot::UnitName::Signal), to_int(fieldro_bot::UnitAction::Init));  

     // Loader 
   // add_sequence(to_int(fieldro_bot::UnitName::Loader), to_int(fieldro_bot::UnitAction::Fall));
   //  add_sequence(to_int(fieldro_bot::UnitName::Loader), to_int(fieldro_bot::UnitAction::Raise));
 }

}