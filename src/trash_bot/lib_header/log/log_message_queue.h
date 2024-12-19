
#pragma once

#include <atomic>
#include <memory>

#include "log/log_message.h"

namespace frb
{
  class LogMessageQueue
  {
  private:
    struct Node 
    {
      std::unique_ptr<LogMessage> msg;
      std::atomic<Node*> next;
      Node(std::unique_ptr<LogMessage> m) : msg(std::move(m)), next(nullptr) {}
    };

    std::atomic<Node*> head { new Node(nullptr) };
    std::atomic<Node*> tail { head.load()       };

  public:
    void push(std::unique_ptr<LogMessage> msg);
    // {
    //   Node* new_node = new Node(std::move(msg));
    //   Node* old_tail = tail.load();

    //   while (!tail.compare_exchange_weak(old_tail, new_node)) 
    //   {
    //   }
    //   old_tail->next.store(new_node);
    // }

    std::unique_ptr<LogMessage> pop(); 
    // {
    //   Node* old_head = head.load();
    //   Node* new_head;
    //   do 
    //   {
    //     new_head = old_head->next.load();
    //     if (!new_head) 
    //     {
    //         return nullptr;
    //     }
    //   } while (!head.compare_exchange_weak(old_head, new_head));

    //   std::unique_ptr<LogMessage> result = std::move(new_head->msg);
    //   delete old_head;
    //   return result;
    // }

    bool empty();
    // {
    //   return head.load()->next.load() == nullptr;
    // }
  };
}