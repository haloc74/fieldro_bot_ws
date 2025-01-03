#pragma once

#include <string>
#include <thread>
#include <iostream>
#include <fstream>
#include "yaml-cpp/yaml.h"

namespace frb
{
  class ThreadActionInfo
  {
  public:
    ThreadActionInfo(std::string file_name, std::string session_name);
    // {
    //   _active = false;
    //   _hz     = 10;
    //   _sleep  = 0;
      
    //   load_option(file_name, session_name);
    // }

    virtual ~ThreadActionInfo();
    // {
    //   _active = false;
    //   _thread.join();
    // }

    bool          _active;       // thread 동작 여부
    int64_t       _hz;           // thread 동작 속도 (Hz)
    int64_t       _sleep;        // thread sleep 시간 (ms) _thread_hz에 따라 계산                  
    std::thread   _thread;       // thread 객체

  protected:
    ThreadActionInfo() {}        // 일반 생성자 Block
    void load_option(std::string file_name, std::string session_name);
    // {
    //   try
    //   {
    //     // file open
    //     std::ifstream yaml_file(file_name);
    //     YAML::Node yaml = YAML::Load(yaml_file);
    //     yaml_file.close();

    //     // 여러개의 object처리 할 필요가 있어 session_name으로 구분한다.
    //     _hz = yaml[session_name]["hz"].as<int32_t>();
    //   }
    //   catch(YAML::Exception& e)
    //   {
    //     std::cout << "YAML Exception : " << e.what() << std::endl;
    //   }
    //   catch(std::exception& e)
    //   {
    //     std::cout << "Exception : " << e.what() << std::endl;
    //   }
    //   catch(...)
    //   {
    //     std::cout << "Unknown Exception" << std::endl;
    //   }  

    //   // _thread_sleep 계산의 경우 설정되는 _thread_hz * 1.1 정도로 설정
    //   // 해줘야 실제 thread 동작 속도가 _thread_hz에 가까워진다.
    //   // thread 내에서 동작하는 각종 구현 함수의 overhead 때문에
    //   _sleep = 1000/(_hz*1.1);      
    // }
  };
}