
#pragma once

#include <string>
#include <cstdint>
#include <type_traits>

namespace fieldro_bot
{
  /**
  * @brief      enum type을 int로 변환
  * @param[in]  enum class EnumType : enum type(name)
  * @return     int32_t : enum type을 int로 변환한 값
  * @note       공용 함수
  */
  template<typename EnumType>
  constexpr int32_t to_int(EnumType value) 
  {
    static_assert(std::is_enum<EnumType>::value, "Template parameter must be an enum type");
    return static_cast<int32_t>(value);
  }

  /**
  * @brief      int를 enum type으로 변환
  * @param[in]  int32_t value : int value
  * @return     enum class EnumType : int를 enum type으로 변환한 값
  * @note       공용 함수
  */
  template<typename EnumType>
  constexpr EnumType to_enum(int32_t value) 
  {
    static_assert(std::is_enum<EnumType>::value, "Template parameter must be an enum type");
    return static_cast<EnumType>(value);
  }

  /**
  * @brief      enum type을 string으로 변환
  * @param[in]  enum class EnumType : enum type(name)
  * @return     std::string : enum type중 value에 해당하는 string(name)
  * @attention  각 enum class가 정의된 header에 구현 되어야 한다.
  */
  template<typename EnumType>
  std::string to_string(EnumType value);

  /**
  * @brief      string을 enum type으로 변환
  * @param[in]  const std::string& str : string value
  * @return     enum class EnumType : string을 enum type의 값중 매칭되는 값
  * @attention  각 enum class가 정의된 header에 구현 되어야 한다.
  */
  template<typename EnumType>
  EnumType string_to_enum(const std::string& str);

  /**
  * @brief      int32_t 값을 enum type value로 변환
  * @param[in]  int32_t value : int32_t value
  * @return     EnumType : int32_t 값을 enum type 중 매칭되는 값으로 변환.
  * @attention  각 enum class가 정의된 header에 구현 되어야 한다.       
  */
  template<typename EnumType>
  std::string to_name(int32_t value);
}