

#include "droid/droid.h"
#include "log/log.h"
#include "helper/helper.h"

fieldro_bot::Log* fieldro_bot::Log::_instance = nullptr;

int main(int argc, char **argv)                 
{
  // process node name 초기화
  ros::init(argc, argv, "trash_bot_node");  

  // 실행 파일 경로로 현재 디렉토리 설정
  fieldro_bot::set_current_dir_to_executable_path();

  // log 객체 초기화
  LOG->initialize("config/droid.yaml", "logger");
  LOG->add_log(fieldro_bot::UnitName::System, fieldro_bot::LogLevel::Info, 0, "   ");
  LOG->add_log(fieldro_bot::UnitName::System, fieldro_bot::LogLevel::Info, 0, "   ");
  LOG->add_log(fieldro_bot::UnitName::System, fieldro_bot::LogLevel::Info, 0, "Trash Bot Start");

  // carrybot 객체 생성
  fieldro_bot::Droid* droid = new fieldro_bot::Droid("config/droid.yaml", "main");

  bool command_use = false;
  droid->get_node_handle()->getParam("command_use", command_use);

  char cmd_input[256];

  while(ros::ok())
  {
    if(droid->is_shutdown())    break;

    if(!command_use)            continue;

    // 표준 입력에 data가 있는지 체크 
    if(!fieldro_bot::check_std_in(10000))    continue;

    // Enter key가 눌려질 때까지 기다려서 문자열 전체를 읽어들여 분석
    std::string               str   = fieldro_bot::get_user_input();
    std::vector<std::string>  input = fieldro_bot::seperate_command(str, ' ');

    // command가 없을 경우 skip
    if(input.size() < 1)      continue;

    if(input[0] == "finish") 
    {
      safe_delete(droid);
    }
    if(input[0] == "clear")  
    {
      if(system("clear") == -1)
      {
        LOG->add_log(fieldro_bot::UnitName::System, fieldro_bot::LogLevel::Error, 0, "system clear error");
      } 
    }
    else
    {
      if(!droid->control(input))
      {
        LOG->add_log(fieldro_bot::UnitName::System, fieldro_bot::LogLevel::Error, 0, std::string("Command Error : ")+str);
      }
    }                        
  }

  safe_delete(droid);

  delete LOG;
  
  return 0;
}
