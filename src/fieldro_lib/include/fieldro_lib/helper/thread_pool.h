
#pragma once

#include <vector>
#include <queue>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <functional>
#include <atomic>

namespace frb
{
  class ThreadPool 
  {
  public:
    // example : thread pool 생성
    // _thread_pool = new ThreadPool(std::thread::hardware_concurrency());
    ThreadPool(size_t numThreads) : stop(false) 
    {
      for (size_t i = 0; i < numThreads; ++i) 
      {
        workers.emplace_back([this] 
        {
          while (true) 
          {
            std::function<void()> task;
            {
              std::unique_lock<std::mutex> lock(queueMutex);
              condition.wait(lock, [this] 
              {
                return stop || !tasks.empty();
              });
              
              if (stop && tasks.empty()) 
              {
                return;
              }
              
              task = std::move(tasks.front());
              tasks.pop();
            }                    
            task();
          }
        });
      }
    }
      
    template<class F>
    void enqueue(F&& f) 
    {
      {
        std::unique_lock<std::mutex> lock(queueMutex);
        tasks.emplace(std::forward<F>(f));
      }
      condition.notify_one();
    }
      
    ~ThreadPool() 
    {
      {
        std::unique_lock<std::mutex> lock(queueMutex);
        stop = true;
      }

      condition.notify_all();
      for(std::thread& worker : workers) 
      {
        worker.join();
      }
    }

  private:
    std::vector<std::thread> workers;
    std::queue<std::function<void()>> tasks;
    std::mutex queueMutex;
    std::condition_variable condition;
    bool stop;
  };
}