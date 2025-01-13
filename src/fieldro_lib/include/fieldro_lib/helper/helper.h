
#pragma once

// #include <unistd.h>       // readlink(), chdir() 함수용, STDIN_FILENO
// #include <libgen.h>       // dirname() 함수용
// #include <limits.h>       // PATH_MAX 상수용
// #include <sys/select.h>   // select() 함수용
// #include <sys/time.h>     // timeval 구조체용
// #include <vector>
// #include <string>
// #include <sstream>
// #include <thread>
// #include <chrono>
// #include <functional>
// #include <cstdint>
// #include <iostream>

#include <functional>
#include <thread>
#include <chrono>
#include <cstdint>
#include <vector>
#include <map>
//#include "define/error_code.h"
#include <fieldro_lib/define/error_code.h>
//#include "define/unit_define.h"
//#include <fieldro_lib/define/unit_define.h>
//#include "define/unit_action_define.h"
#include <fieldro_lib/define/unit_action_define.h>


 
namespace frb
{
  // Safe Delete Macro 
  template <typename T> 
  inline void safe_delete(T& p)
  {
      if (p == nullptr) return;
      delete p;
      p = nullptr;  
  }

  template <typename T>
  inline void safe_delete_array(T*& arr) 
  {
    if (arr == nullptr) return;
    delete[] arr;
    arr = nullptr;
  }  

  /**
  * @brief      인자로 주어진 값은 최대 최소값 사이의 값으로 제한
  * @param[in]  T value : 제한할 값
  * @param[in]  T min : 최소값
  * @param[in]  T max : 최대값
  * @return     T : 제한된 값 (범위 만족값)
  */
  template <typename T>
  inline T limit_value(T value, T min, T max)
  {
    if(value < min)  return min;
    if(value > max)  return max;
    return value;
  }

  /**
  * @brief      실행 파일 경로로 현재 디렉토리 설정
  * @note       
  */
  void set_current_dir_to_executable_path(); 

  /**
  * @brief      비동기로 동작되는 지정된 시간만큼 대기 후 callback 함수 호출
  * @param[in]  millisecond : 대기 시간 (밀리초)
  * @param[in]  callback : 호출할 함수
  * @return     void
  * @note       
  */
  inline void delay_call(int32_t millisecond, std::function<void()> callback)
  {
    std::thread([millisecond, callback]() 
    {
      std::this_thread::sleep_for(std::chrono::milliseconds(millisecond));
      callback();
    }).detach();
  }

  template<typename... Args>
  inline void delay_call(int32_t millisecond, std::function<void(Args...)> callback, Args... args) 
  {
    std::thread([millisecond, callback, args...]() 
    {
        std::this_thread::sleep_for(std::chrono::milliseconds(millisecond));
        callback(args...);
    });
  }

  int32_t check_std_in(int32_t a_timeout);

  std::string get_user_input();

  // command를 공백 문자를 기준으로 분해
  std::vector<std::string> seperate_command(std::string input, char operator_char);



  // parameter를 분해하여 map 형태로 반환
  std::map<std::string, int32_t> interpret_parameter(std::string parameter);

  // map에서 key에 해당하는 value를 반환
  int32_t get_value_from_map(const std::map<std::string, int32_t>& data, const std::string& key);

  // bit mask된 io sensor의 on, off 상태를 체크하여 반환
  int8_t check_io_sensor(int32_t sensor_index, int64_t sensor_bit);

  double get_current_micro_time();
}