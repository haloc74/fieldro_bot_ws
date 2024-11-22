

#include <iostream>
#include "log/log.h"
#include "helper/helper.h"
#include "observer_unit/unit_observer.h"

fieldro_bot::Log* fieldro_bot::Log::_instance = nullptr;
 
int main(int argc, char **argv)                 
{
  // process node name 초기화
  ros::init(argc, argv, "unit_observer");    

  // 실행 파일 경로로 현재 디렉토리 설정
  fieldro_bot::set_current_dir_to_executable_path();

  // logger 초기화
  LOG->initialize("config/observer.yaml", "logger");
  LOG->add_log(fieldro_bot::Unit::System, fieldro_bot::LogLevel::Info, 0, " ");
  LOG->add_log(fieldro_bot::Unit::System, fieldro_bot::LogLevel::Info, 0, " ");
  LOG->add_log(fieldro_bot::Unit::System, fieldro_bot::LogLevel::Info, 0, "Unit Observer Start");

  // Observer 객체 생성
  fieldro_bot::UnitObserver* observer = new fieldro_bot::UnitObserver();

  // command 사용여부 설정
  bool command_use = false;
//  observer->get_node_handle()->getParam("command_use", command_use);

  char cmd_input[256];

  while(ros::ok())
  {
    if(observer->is_shutdown())             break;
    if(!command_use)                        continue;
    if(!fieldro_bot::check_std_in(10000))   continue;   // 표준 입력에 data가 있는지 체크 

    // Enter key가 눌려질 때까지 기다려서 문자열 전체를 읽어들여 분석
    std::string               str   = fieldro_bot::get_user_input();
    std::vector<std::string>  input = fieldro_bot::seperate_command(str, ' ');

    // command가 없을 경우 skip
    if(input.size() < 1)      continue;

    if(input[0] == "finish") 
    {
      break;
    }
    else if(input[0] == "clear")  
    {
      if(system("clear") == -1)
      {
        LOG->add_log(fieldro_bot::Unit::System, fieldro_bot::LogLevel::Error, 0, "system clear error");
      }
    }
    else
    {
    }    
  }

  safe_delete(observer);

  delete LOG;

  return 0;
}