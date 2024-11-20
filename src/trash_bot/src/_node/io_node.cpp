
#include <iostream>
#include "log/log.h"
#include "helper/helper.h"
#include "wago.h"


fieldro_bot::Log* fieldro_bot::Log::_instance = nullptr;

int main(int argc, char **argv)                 
{
  // process node name 초기화
  ros::init(argc, argv, "io_signal");    

  // 실행 파일 경로로 현재 디렉토리 설정
  fieldro_bot::set_current_dir_to_executable_path();

  // logger 초기화
  LOG->initialize("config/io.yaml", "logger");
  LOG->add_log(fieldro_bot::Unit::System, fieldro_bot::LogLevel::Info, 0, " ");
  LOG->add_log(fieldro_bot::Unit::System, fieldro_bot::LogLevel::Info, 0, " ");
  LOG->add_log(fieldro_bot::Unit::System, fieldro_bot::LogLevel::Info, 0, "IO Signal Start");

  // wago 객체 생성
  fieldro_bot::Wago* wago = new fieldro_bot::Wago();
 
  bool command_use = false;
  wago->get_node_handle()->getParam("command_use", command_use);

  char cmd_input[256];

  while(ros::ok())
  {
    if(wago->is_shutdown())    break;

    if(!command_use)   continue;

    // 표준 입력에 data가 있는지 체크 
    if(!fieldro_bot::check_std_in(10000))    continue;

    // Enter key가 눌려질 때까지 기다려서 문자열 전체를 읽어들여 분석
    std::string               str   = fieldro_bot::get_user_input();
    std::vector<std::string>  input = fieldro_bot::seperate_command(str, ' ');

    // command가 없을 경우 skip
    if(input.size() < 1)      continue;

    if(input[0] == "finish") 
    {
      safe_delete(wago);
    }
    else if(input[0] == "clear")  
    {
      system("clear");
    }
    else
    {
    }    
  }

  safe_delete(wago);

  delete LOG;

  return 0;
}