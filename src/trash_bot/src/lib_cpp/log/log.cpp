
#include "log/log.h"

#include <queue>
#include <boost/filesystem.hpp>
#include <sys/stat.h>
#include <yaml-cpp/yaml.h>

namespace fieldro_bot
{
  void Log::initialize(std::string config_name, std::string session_name)
  {
    _writer = std::thread(&Log::write_to_cache, this);
    _stop   = false;
    load_option(config_name, session_name);
  }

  Log::~Log()
  {
    _stop = true;                           // writer thread 종료
    _cv.notify_one();                        // writer thread에 알림

    if(_writer.joinable()) _writer.join();  // writer thread 종료 대기
  }

  /**
  * @brief      file로 남겨야 할 log 기록 추가
  * @param[in]  level Log Level
  * @param[in]  unit  Unit ID   (H/W ID)
  * @param[in]  error Error Code
  * @param[in]  msg   Log Message
  * @return     void
  * @note       message를 _log_queue에 추가시 lock 설정하는 부분 주의해야 함.
  */
  void Log::add_log(Unit unit, LogLevel level, int32_t error, std::string msg)
  {
    {
      std::lock_guard<std::mutex> lock(_mutex);
      _log_queue.push(std::make_unique<LogMessage>(level, unit, error, std::move(msg))); 
    }
    _cv.notify_one();
  }

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
  void Log::write_to_cache()
  {
    std::vector<std::unique_ptr<LogMessage>> log_vector;

    // 메모리 재할당을 방지하기 위하여 영역을 예약.
    log_vector.reserve(_queue_size);

    while(!_stop || !_log_queue.empty())
    {
      std::unique_lock<std::mutex> lock(_mutex);

      // condition_variable에서 notify 올때까지 기다리기
      _cv.wait_for(lock, std::chrono::milliseconds(_auto_writing_interval), [this] 
      { 
        return !_log_queue.empty()||_stop; 
      });

      std::unique_ptr<LogMessage> msg;

      // _log_queue에 있는 log message를 캐시에 기록
      // 예외적으로 thread 멈춤시에도 캐시에 로그를 기록
      while((msg = _log_queue.pop()) != nullptr)
      {
        log_vector.push_back(std::move(msg));
        if(log_vector.size() >= _max_log_per_write || _stop)   break;
      }

      // 캐시에 기록된 log message를 파일로 기록
      if(!log_vector.empty())
      {
        write_to_disk(log_vector);
        log_vector.clear();
      }
    }
  }

  /**
  * @brief      캐시에 기록된 log message를 파일로 기록
  * @param[in]  log_vector 캐시에 기록된 log message
  * @note       시간대가 다를 경우 이전 시간대에 기록되는 것을 방지하기 위한 로직 주의
  *             option_dir/YYMMDD-HH_suffix.log 형태로 로그 파일명이 생성된다.
  * @todo       1. 파일 경로 설정  옵션 추가
  *             2. 
  */
  void Log::write_to_disk(const std::vector<std::unique_ptr<LogMessage>>& log_vector)
  {
    if(log_vector.empty()) return;

    std::string   prev_file_name  = std::string(log_vector.front()->_file_name);
    std::string   file_path       = _dir_name + "/" + prev_file_name + _suffix + ".log";
    std::ofstream ofs(file_path, std::ios_base::out | std::ios_base::app);

    for(const auto& msg : log_vector)
    {
      if(prev_file_name != std::string(msg->_file_name))
      {
        ofs.close();
        prev_file_name = std::string(msg->_file_name);
        file_path      = _dir_name + "/" + prev_file_name + _suffix + ".log";

        ofs.open(file_path, std::ios_base::out | std::ios_base::app);
      }

      if (ofs.is_open()) 
      {
          ofs << "[" << msg->_info_time << "][" << msg->_log_level << "]" 
              << "[" << msg->_error << "] : " << msg->_msg << std::endl;

          std::cout << "[" << msg->_info_time << "][" << msg->_log_level << "]" 
                    << "[" << msg->_error << "] : " << msg->_msg << std::endl;
      } else 
      {
          std::cerr << "Error: Unable to open log file" << std::endl;
      }        
    }
  }

  /**
  * @brief      option 설정을 로드
  * @param[in]  session_name config.yaml 파일 안에서의 session 명
  * @note       message queue size는 max_log_per_write의 2배로 설정
  */
  void Log::load_option(std::string config_name, std::string session_name)
  {
    int32_t debug = 0;
    int32_t hz    = 0;
    try
    {
      // file open
      std::ifstream yaml_file(config_name);

      //
      if(!yaml_file.is_open()) 
      {
        std::cerr << "Error: Unable to open the YAML file." << std::endl;
        return; 
      }

      YAML::Node yaml = YAML::Load(yaml_file);
      yaml_file.close();

      hz    = yaml[session_name]["hz"].as<int32_t>();
      debug = yaml[session_name]["debug"].as<int32_t>();

      _suffix                 = yaml[session_name]["suffix"].as<std::string>();
      _dir_name               = yaml[session_name]["dir_name"].as<std::string>();
      _max_log_per_write      = yaml[session_name]["max_log_per_write"].as<int32_t>();
      _auto_writing_interval  = yaml[session_name]["auto_write_interval"].as<int32_t>();
      _queue_size             = _max_log_per_write * 2;
    }
    catch(YAML::Exception& e)
    {
      std::cout << "YAML Exception : " << session_name << "    "  << e.what() << std::endl;
    }
    catch(std::exception& e)
    {
      std::cout << "Exception : " << session_name << "    " << e.what() << std::endl;
    }
    catch(...)
    {
      std::cout << "Unknown Exception" << session_name << "    " << std::endl;
    }

    // log 저장 Directory가 없을 경우 생성 시키자
    create_directory(_dir_name);

    // option을 log file로 저장 (Debugging 용도) 
    if(debug != 0)
    {
      std::cout << "Logger [" + session_name + "] option : " << std::endl;
      
      std::cout << "  hz                    : " << hz << std::endl;
      std::cout << "  debug                 : " << debug << std::endl;

      std::cout << "  suffix                : " << _suffix << std::endl;
      std::cout << "  _dir_name             : " << _dir_name << std::endl;
      std::cout << "  max_log_per_write     : " << _max_log_per_write << std::endl;
      std::cout << "  queue_size            : " << _queue_size << std::endl;
      std::cout << "  auto_writing_interval : " << _auto_writing_interval << std::endl;
    }      
  }

  bool Log::create_directory(std::string& dir_name)
  {
    // if (mkdir(path.c_str(), 0777) == -1)
    // {
    //   std::cerr << "Error: " << strerror(errno) << std::endl;
    //   return false;
    // }
    // return true;

    std::string file_path = "";

    char cwd[PATH_MAX];
    if (getcwd(cwd, sizeof(cwd)) != NULL)
    {
      file_path = std::string(cwd) + "/" + dir_name;
    }
    else
    {
      std::cerr << "Error: " << strerror(errno) << std::endl;
      return false;
    }

    boost::filesystem::path dir(file_path);
    if(!boost::filesystem::exists(dir))
    {
      if(boost::filesystem::create_directories(dir))
      {
        chmod(dir.parent_path().c_str(), 0777);  // 모든 권한 부여
        return true;
      }
      else
      {
        return false;
      }
    }
    return true;
  }              
}