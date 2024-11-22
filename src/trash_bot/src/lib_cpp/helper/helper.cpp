
#include "helper/helper.h"

#include <unistd.h>   
#include <limits.h>   
#include <libgen.h>   
#include <sys/select.h>
#include <iostream>
#include <string>
#include <sstream>

namespace fieldro_bot
{
  /**
  * @brief      실행 파일 경로로 현재 디렉토리 설정
  * @note       
  */
  void set_current_dir_to_executable_path() 
  {
    char result[PATH_MAX];
    ssize_t count = readlink("/proc/self/exe", result, PATH_MAX);
    if (count != -1) {
        char *path = dirname(result);
        if(chdir(path) != 0) 
        {
          std::cerr << "Failed to change directory to executable path" << std::endl;
        }
    }
  }

  /**
  /* @brief   user input을 받아서 처리
  /* @param   int32_t a_timeout : timeout value - microsecond
  /* @return  표준입력에서 데이터를 읽을 수 있는 경우 true 반납, 그렇지 않은 경우 false 반납
  */
  int32_t check_std_in(int32_t a_timeout)
  {
    fd_set         rfds;
    struct timeval timeout;

    FD_ZERO(&rfds);    // 0으로 초기화
    FD_SET(STDIN_FILENO, &rfds);  // 파일 디스크립터 0 (stdin) 설정

    timeout.tv_sec  = a_timeout / 1000000;  // timeout 설정
    timeout.tv_usec = a_timeout % 1000000;  // timeout 설정

    return select(STDIN_FILENO+1, &rfds, nullptr, nullptr, &timeout) > 0;
  }

  /**
  /* @brief   console에서 user input을 받아서 string으로 반환
  /* @param   void
  /* @return  입력받은 문자열 한개의 라인(/n 제거된)
  /* @note    사용자가 Enter key를 누르기 전까지 대기.
  /*          공백을 포함한 한 라인 전체를 읽어들임
  /*          입력이 없이 엔터만 누르면 빈 문자열 반환
  */
  std::string get_user_input()
  {
    std::string input;
    std::getline(std::cin, input);
    return input;
  }

  /**
  /* @brief   string을 구분자를 기준으로 각각 분리
  /* @param   string input  변환할 문자열
  /* @return  구분자를 기준으로 분리된 문자열 목록
  /* @note    큰따옴표 ""안의 내용은 하나의 블럭으로 인식
  */
  std::vector<std::string> seperate_command(std::string input, char operator_char)
  {
    std::vector<std::string> tokens;
    std::istringstream iss(input);
    std::string token;
    bool in_quotes = false;
    std::ostringstream current_token;

    char ch;
    while(iss.get(ch)) 
    {
      if (ch == '"') 
      {
        in_quotes = !in_quotes;
      } 
      else if(ch == operator_char && !in_quotes) 
      {
        if (!current_token.str().empty()) 
        {
          tokens.push_back(current_token.str());
          current_token.str("");
        }
      } 
      else 
      {
        current_token << ch;
      }
    }

    // 마지막 토큰 처리
    if(!current_token.str().empty()) 
    {
      tokens.push_back(current_token.str());
    }
    return tokens;
  }

  std::tuple<int32_t, int32_t, int32_t, std::string> interpret_command(std::vector<std::string> command_list)
  {
    int32_t     size    = command_list.size();
    int32_t     unit    = error_to_int(fieldro_bot::Error::ParseFail);
    int32_t     action  = error_to_int(fieldro_bot::Error::ParseFail);
    std::string cmd     = "";

    for(int i = 0; i < command_list.size(); i++)
    {
      //if     (i == 0)   unit  = string_to_unit(command_list[i]);

      if     (i == 0)   unit  = to_int(string_to_enum<fieldro_bot::Unit>(command_list[i]));
      else if(i == 1)   action= string_to_unit_action_index(command_list[i]);
      else              cmd   = command_list[i];
    }
    return std::make_tuple(size, unit, action, cmd);    
  }

  std::map<std::string, int32_t> interpret_parameter(std::string parameter)
  {
    std::map<std::string, int32_t> param_map;
    std::vector<std::string> param_list = seperate_command(parameter, ' ');

    for(int i = 0; i < param_list.size(); i++)
    {
      std::vector<std::string> param = seperate_command(param_list[i], '=');
      if(param.size() == 2)
      {
        try
        {
          param_map[param[0]] = std::stoi(param[1]);  
        }
        catch(const std::invalid_argument& e)
        {
          // 숫자가 아닌 문자가 포함된 경우 처리
          std::cerr << "Invalid number format for parameter " << param[0] << ": " << param[1] << std::endl;
          param_map.erase(param[0]);  // key를 map에서 삭제
        }
        catch(const std::out_of_range& e) 
        {
          // 숫자가 int32_t 범위를 벗어난 경우 처리
          std::cerr << "Number out of range for parameter " << param[0] << ": " << param[1] << std::endl;
          param_map.erase(param[0]);  // key를 map에서 삭제
        }
      }
    }
    return param_map;
  }

  /**
  * @brief      map에서 key에 해당하는 value를 반환
  * @param[in]  data : map data
  * @param[in]  key  : key name 
  * @return     key에 해당하는 value
  * @note       해당 하는 key가 없는 경우 예외 처리
  */
  int32_t get_value_from_map(const std::map<std::string, int32_t>& data, const std::string& key)
  {
    auto it = data.find(key);
    if(it != data.end()) 
    {
      return it->second;
    } 
    else 
    {
      throw std::out_of_range("Key not found in map");
    }
    return 0;
  }

  int8_t check_io_sensor(int32_t sensor_index, int64_t sensor_bit)
  {
    if((sensor_bit & (1 << sensor_index)) != 0) return 0x01;
    return 0x00;
  }

}