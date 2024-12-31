
#pragma once

//#include "define/unit_define.h"
#include <fieldro_lib/define/unit_define.h>
#include "log/log_message_queue.h"

#include <string>                 
#include <thread>                 
#include <mutex>                  
#include <condition_variable>     
#include <atomic>                 
#include <memory>                 
#include <iostream>               
#include <vector>                 

namespace frb
{
  #define LOG         frb::Log::get()
  #define LogInfo     frb::LogLevel::Info
  #define LogError    frb::LogLevel::Error
  #define LogWarning  frb::LogLevel::Warning
  
  /**
  * @class      Logger
  * @author		  FieldRo
  * @date				2024.07.23
  * @brief    	일반 로그를 기록하기 위한 Class
  * @note  			1. 빈번한 IO 접근을 막기 위해 로그를 캐시에 저장하고 일정 시간마다 또는 
  *                설정 갯수가 될 때마다 파일로 저장.
  *             2. 로그 파일은 일자별로 생성되며, 파일명은 "YYMMDD-HH.log" 형식으로 생성.
  *             3. lock 제어가 되어야 하는 부분은 message push, pop 부분이다.
  * @details  	
  * @see				
  * @todo       1. 파일 경로 설정
  *             2. 로그 매니저 설정 ???
  */
  class Log
  {
  private:
    static Log* _instance;

    LogMessageQueue           _log_queue;     // log message queue
    std::thread               _writer;        // writer thread
    std::mutex                _mutex;         // _log_queue 접근을 제어하기 위한 mutex
    std::condition_variable   _cv;            // _log_queue에 새로운 log가 추가되었을 때 writer thread에 알리기 위한 cv
    std::atomic<bool>         _stop;          // writer thread 종료를 위한 flag

    int32_t                   _queue_size;            // _log_queue 사이즈
    int32_t                   _max_log_per_write;     // writing count (IO writing 되어야 할 로그 갯수)
    int32_t                   _auto_writing_interval; // 자동 writing interval
    std::string               _suffix;                // 파일명 suffix
    std::string               _dir_name;              // 로그저장 디렉토리 명

    Log() {};

  public:
    Log(Log const&)             = delete;
    void operator=(Log const&)  = delete;

    static Log* get()
    {
      if(_instance == nullptr) { _instance = new Log();  }
      return _instance;
    }

    void initialize(std::string config_name, std::string session_name);

    virtual ~Log();

    /**
    * @brief      file로 남겨야 할 log 기록 추가
    * @param[in]  level Log Level
    * @param[in]  unit  UnitName ID   (H/W ID)
    * @param[in]  error Error Code
    * @param[in]  msg   Log Message
    * @return     void
    * @note       message를 _log_queue에 추가시 lock 설정하는 부분 주의해야 함.
    */
    void add_log(UnitName unit, LogLevel level, int32_t error, std::string msg);

  private:
    /**
    * @brief      _log_queue에 있는 log message를 캐시에 기록
    * @note       File IO에 매번 접근을 하게되면 overhead가 너무 커지게 된다.
    *             몇개의 log message를 기록하는것이 아닌 빠른 속도로 많은 log를 기록
    *             하기 위해서 일정량을 모아서 한번에 writing 하는 방식을 사용하기 위해
    *             캐시에 기록하는 함수.
    * @todo       1. vector reserve 갯수를 옵션에서 설정할 수 있도록 변경
    *             2. 파일로 기록할 기준을 옵션에서 설정할 수 있도록 변경
    *             3. writing count 기준이 되지 않더라도 일정 시간이 되면 writing.
    *                time 변수도 옵션에서 설정 되도록 하자
    *             4. 만약을 위해 reserve개수는 writing count의 2배로 하자.
    * @attention  _cv.wait(lock, std::chrono::milliseconds(_auto_writing_interval), [this] 
    *             { 
    *               return !_log_queue.empty() || _stop; 
    *             });
    *             동작 방식을 정확하게 이해하자.
    *            1. !_log_queue.empty() || _stop 조건이 만족되면 wait를 빠져나온다.
    *            2. 1에서 조건이 만족 되지 않았을 경우 최대 설정 시간 _auto_writing_interval 까지 기다린다.
    *            3. interval이 경과 하면 다시 1번의 조건을 확인한다.
    *            4. _log_queue에 로그가 추가 되었거나 _stop flag가 설정되면 wait를 빠져나온다.
    *            5. _auto_writing_interval 시간이 되지 않았을 경우에도 _log_queue에 로그가 추가되었다면
    *               add_log()에서 _cv.notify_once()를 통해 writer thread를 깨운다.
    */
    void write_to_cache();

    /**
    * @brief      캐시에 기록된 log message를 파일로 기록
    * @param[in]  log_vector 캐시에 기록된 log message
    * @note       시간대가 다를 경우 이전 시간대에 기록되는 것을 방지하기 위한 로직 주의
    *             option_dir/YYMMDD-HH_suffix.log 형태로 로그 파일명이 생성된다.
    * @todo       1. 파일 경로 설정  옵션 추가
    *             2. 
    */
    void write_to_disk(const std::vector<std::unique_ptr<LogMessage>>& log_vector);

    /**
    * @brief      option 설정을 로드
    * @param[in]  session_name config.yaml 파일 안에서의 session 명
    * @note       message queue size는 max_log_per_write의 2배로 설정
    */
    void load_option(std::string conifg_name, std::string session_name);

    bool create_directory(std::string& dir_name);
  };

}