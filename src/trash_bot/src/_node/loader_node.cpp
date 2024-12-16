
#include <iostream>
#include <ros/ros.h>
#include "log/log.h"
#include "helper/helper.h"
#include "loader_unit/loader.h"


fieldro_bot::Log* fieldro_bot::Log::_instance = nullptr;

int main(int argc, char ** argv)
{
  // process node name 초기화
  ros::init(argc, argv, "loader");    

  // 실행 파일 경로로 현재 디렉토리 설정
  fieldro_bot::set_current_dir_to_executable_path();

  // logger 초기화
  LOG->initialize("config/loader.yaml", "logger");
  LOG->add_log(fieldro_bot::UnitName::System, fieldro_bot::LogLevel::Info, 0, " ");
  LOG->add_log(fieldro_bot::UnitName::System, fieldro_bot::LogLevel::Info, 0, " ");
  LOG->add_log(fieldro_bot::UnitName::System, fieldro_bot::LogLevel::Info, 0, "Loader Start");

  // node main 객체 생성
  fieldro_bot::Loader* loader = new fieldro_bot::Loader("config/loader.yaml", "main");
 
  bool command_use = false;
  
  //parameter server에서 command_use를 읽어옴
  loader->get_node_handle()->getParam("command_use", command_use);

  char cmd_input[256];

  while(ros::ok())
  {
    // 종료 예약 확인
    if(loader->is_shutdown())   
     break;

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
      safe_delete(loader);
    }
    else if(input[0] == "clear")  
    {
      if(system("clear") == -1)
      {
        LOG->add_log(fieldro_bot::UnitName::System, fieldro_bot::LogLevel::Error, 0, "system clear error");
      }
    }
    else
    {
    }    
  }

  // node main 객체 삭제
  safe_delete(loader);

  delete LOG;

  return 0;
}