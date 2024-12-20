#pragma once

#include <cstdint>
#include <deque>
#include <mutex>

namespace frb
{
  /**
  * @brief      Class for wheel value.
  * @note       wheel encoder, rpm value를 다루기 위한 class
  *             0. 각각의 type에 맞는 class를 만들어서 사용
  *                 WheelValue<int16_t>* _rpm = new WheelValue<int16_t>();
  *                 WheelValue<int32_t>* _encoder = new WheelValue<int32_t>();
  *                 WheelValue<int16_t> rpm(0, 0);
  *             1. 2개의 구동 wheel로 동작 하기위한 AGV에 적용
  *             2. 향후 4개의 wheel로 확장시키기 위하여 class로 분리 
  *             3. Class Name을 EncoderValue로 변경하는 방안을 고려 : 
  *             4. rpm 데이터도 이 class로 사용하고 있는바 다른 이름이 필요 할듯..
  *             5. rpm의 경우 double type로 표현해야 오차가 그나마 적지 않을까 ??
  * 
  */

  template <typename T>
  class MotorMetrics
  {
  public:
    MotorMetrics() : _left(0), _right(0) { }
    MotorMetrics(T left, T right) : _left(left), _right(right) { }
    ~MotorMetrics() { }

    T _left;
    T _right;

    MotorMetrics& operator =(const MotorMetrics& value)
    {
      _left = value._left;
      _right = value._right;
      return *this;
    }

    MotorMetrics operator-(const MotorMetrics& value)
    {
      return WheelValue(_left - value._left, _right - value._right);
    }

    MotorMetrics& operator-=(const MotorMetrics& value)
    {
      _left -= value._left;
      _right -= value._right;
      return *this;
    }

    void initialize()
    {
      _left = T(0);
      _right = T(0);
    }

    bool update(T left, T right)
    {
      if(_left == left && _right == right)
      {
        return false;
      }

      _left = left;
      _right = right;
      return true;
    }
  };

  /**
  * @author		Fieldro : haloc@fieldro.tech
  * @date			24-12-20
  * @brief		wheel value 값을 바로 넣으면 등락이 너무 심해서 일정기간을 누적해서 평균값으로 전송하는 방안을 생각
  *           이것을 구현하기 위하여 Filter Class를 만들어서 사용
  *           100hz로 동작을 시켜보면 두 바퀴의 encoder값이 너무 튀어서 꼭 좌우 진동이 있는것 처럼 보임
  *           이것을 평균값으로 전달하면 좀더 부드러운 움직임을 보일것으로 예상
  * @note			
  * @details	
  * @see			
  * @todo     칼만필터를 적용하거나 다른 필터을 적용하는 방안도 고려
  */
  template <typename T>
  class MotorMetricsFilter
  {
  public:
      MotorMetricsFilter(size_t maxSize = 1) : _maxSize(maxSize) 
      {
          _history.clear();
      }

      void reset(size_t max_size = 1)
      {
        std::lock_guard<std::mutex> lock(_lock);      

        if(_history.size() <= 0)    return;

        _maxSize = max_size;
        _history.clear();
      }

      void addValue(const MotorMetrics<T>& value)
      {
        std::lock_guard<std::mutex> lock(_lock);      

          if (_history.size() >= _maxSize)
          {
              _history.pop_front();
          }
          _history.push_back(value);
      }

      // void clear()
      // {
      //   _history.clear();
      // }

      MotorMetrics<T> getAverage()// const
      {
        std::lock_guard<std::mutex> lock(_lock);      

          double left = 0.0;
          double right = 0.0;
          for(const auto& value : _history)
          {
            left += (double)value._left;
            right += (double)value._right;
          }

          MotorMetrics<T> average(left, right);
          if(_history.size() < 1)
          {
            return average;
          }

          average._left = (left / _history.size());
          average._right = (right / _history.size());

          return average;
      }

  private:
      std::deque<MotorMetrics<T>> _history;
      size_t _maxSize;
      std::mutex _lock;
  };
}