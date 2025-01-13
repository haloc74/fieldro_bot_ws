
#include <iostream>
#include <fieldro_lib/log/log.h>
//#include <fieldro_lib/helper/helper.h>
#include "wago.h"

#include "package/package_helper.h"
#include "package/unit_define.h"

frb::Log* frb::Log::_instance = nullptr;

int main(int argc, char **argv)                 
{
  // process node name 초기화
  ros::init(argc, argv, "io");    

  // 실행 파일 경로로 현재 디렉토리 설정
  frb::set_current_dir_to_executable_path();

  // logger 초기화
  LOG->initialize("config/io.yaml", "logger");
  LOG->add_log(frb::to_string(frb::UnitName::System), frb::LogLevel::Info, 0, " ");
  LOG->add_log(frb::to_string(frb::UnitName::System), frb::LogLevel::Info, 0, " ");
  LOG->add_log(frb::to_string(frb::UnitName::System), frb::LogLevel::Info, 0, "IO Signal Start");

  // wago 객체 생성
  frb::Wago* wago = new frb::Wago("config/io.yaml", "wago");
 
  bool command_use = false;
  wago->get_node_handle()->getParam("command_use", command_use);

  char cmd_input[256];

  while(ros::ok())
  {
    if(wago->is_shutdown())  
      break;

    if(!command_use)   continue;

    // 표준 입력에 data가 있는지 체크 
    if(!frb::check_std_in(10000))    continue;

    // Enter key가 눌려질 때까지 기다려서 문자열 전체를 읽어들여 분석
    std::string               str   = frb::get_user_input();
    std::vector<std::string>  input = frb::seperate_command(str, ' ');

    // command가 없을 경우 skip
    if(input.size() < 1)      continue;

    if(input[0] == "finish") 
    {
      safe_delete(wago);
    }
    else if(input[0] == "clear")  
    {
      if(system("clear") == -1)
      {
        LOG->add_log(frb::to_string(frb::UnitName::System), frb::LogLevel::Error, 0, "system clear error");
      }
    }
    else
    {
    }    
  }

  safe_delete(wago);

  delete LOG;

  return 0;
}