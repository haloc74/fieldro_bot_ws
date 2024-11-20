;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::SafetyReportV2)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'SafetyReportV2 (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::SAFETYREPORTV2")
  (make-package "TWINNY_MSGS::SAFETYREPORTV2"))

(in-package "ROS")
;;//! \htmlinclude SafetyReportV2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_NORMAL*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MODE_NORMAL* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MODE_NORMAL* 0)
(intern "*MODE_OSSD_MUTE_MOVE*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MODE_OSSD_MUTE_MOVE* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MODE_OSSD_MUTE_MOVE* 1)
(intern "*MODE_MANUAL_MOVE*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MODE_MANUAL_MOVE* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MODE_MANUAL_MOVE* 2)
(intern "*MODE_EMERGENCY_STOP*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MODE_EMERGENCY_STOP* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MODE_EMERGENCY_STOP* -1)
(intern "*MODE_PROTECTIVE_STOP*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MODE_PROTECTIVE_STOP* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MODE_PROTECTIVE_STOP* -2)
(intern "*MODE_EXTERNAL_STOP*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MODE_EXTERNAL_STOP* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MODE_EXTERNAL_STOP* -3)
(intern "*MCU_WATCHDOG_NORMAL*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_WATCHDOG_NORMAL* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_WATCHDOG_NORMAL* 0)
(intern "*MCU_WATCHDOG_ALARM*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_WATCHDOG_ALARM* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_WATCHDOG_ALARM* 1)
(intern "*MCU_WATCHDOG_FAULT*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_WATCHDOG_FAULT* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_WATCHDOG_FAULT* 2)
(intern "*FAULT_EMERGENCY_SW_FAULT*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*FAULT_EMERGENCY_SW_FAULT* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*FAULT_EMERGENCY_SW_FAULT* 1)
(intern "*FAULT_STO_FAULT*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*FAULT_STO_FAULT* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*FAULT_STO_FAULT* 2)
(intern "*FAULT_OSSD_FRONT*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*FAULT_OSSD_FRONT* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*FAULT_OSSD_FRONT* 3)
(intern "*FAULT_OSSD_REAR*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*FAULT_OSSD_REAR* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*FAULT_OSSD_REAR* 4)
(intern "*FAULT_LIDAR_FRONT*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*FAULT_LIDAR_FRONT* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*FAULT_LIDAR_FRONT* 5)
(intern "*FAULT_LIDAR_REAR*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*FAULT_LIDAR_REAR* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*FAULT_LIDAR_REAR* 6)
(intern "*FAULT_EXTERNAL_STOP*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*FAULT_EXTERNAL_STOP* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*FAULT_EXTERNAL_STOP* 7)
(intern "*FAULT_PROGRAM_TIMING*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*FAULT_PROGRAM_TIMING* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*FAULT_PROGRAM_TIMING* 8)
(intern "*FAULT_PC_BOARD_CHECK*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*FAULT_PC_BOARD_CHECK* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*FAULT_PC_BOARD_CHECK* 9)
(intern "*MCU_FAULT_NO_ERROR*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_NO_ERROR* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_NO_ERROR* 0)
(intern "*MCU_FAULT_CORE_TEST_FAIL*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_CORE_TEST_FAIL* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_CORE_TEST_FAIL* 1)
(intern "*MCU_FAULT_RAM_TEST_FAIL*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_RAM_TEST_FAIL* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_RAM_TEST_FAIL* 2)
(intern "*MCU_FAULT_FLASH_TEST_FAIL*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_FLASH_TEST_FAIL* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_FLASH_TEST_FAIL* 3)
(intern "*MCU_FAULT_PWR_SETTING_MISMATCH*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_PWR_SETTING_MISMATCH* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_PWR_SETTING_MISMATCH* 4)
(intern "*MCU_FAULT_RCC_SETTING_MISMATCH*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_RCC_SETTING_MISMATCH* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_RCC_SETTING_MISMATCH* 5)
(intern "*MCU_FAULT_GPIO_SETTING_MISMATCH*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_GPIO_SETTING_MISMATCH* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_GPIO_SETTING_MISMATCH* 6)
(intern "*MCU_FAULT_SYSCFG_SETTING_MISMATCH*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_SYSCFG_SETTING_MISMATCH* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_SYSCFG_SETTING_MISMATCH* 7)
(intern "*MCU_FAULT_DMA_SETTING_MISMATCH*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_DMA_SETTING_MISMATCH* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_DMA_SETTING_MISMATCH* 8)
(intern "*MCU_FAULT_NVIC_SETTING_MISMATCH*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_NVIC_SETTING_MISMATCH* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_NVIC_SETTING_MISMATCH* 9)
(intern "*MCU_FAULT_ADC_SETTING_MISMATCH*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_ADC_SETTING_MISMATCH* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_ADC_SETTING_MISMATCH* 10)
(intern "*MCU_FAULT_VREFBUF_SETTING_MISMATCH*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_VREFBUF_SETTING_MISMATCH* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_VREFBUF_SETTING_MISMATCH* 11)
(intern "*MCU_FAULT_WDG_SETTING_MISMATCH*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_WDG_SETTING_MISMATCH* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_WDG_SETTING_MISMATCH* 12)
(intern "*MCU_FAULT_SPI_SETTING_MISMATCH*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_SPI_SETTING_MISMATCH* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_SPI_SETTING_MISMATCH* 13)
(intern "*MCU_FAULT_CAN_SETTING_MISMATCH*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_CAN_SETTING_MISMATCH* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_CAN_SETTING_MISMATCH* 14)
(intern "*MCU_FAULT_POWERING_ERROR*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_POWERING_ERROR* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_POWERING_ERROR* 15)
(intern "*MCU_FAULT_CLOCKING_ERROR*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_CLOCKING_ERROR* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_CLOCKING_ERROR* 16)
(intern "*MCU_FAULT_DIAGNOSTIC_ERROR*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_DIAGNOSTIC_ERROR* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_DIAGNOSTIC_ERROR* 17)
(intern "*MCU_FAULT_CAN_ERROR*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_CAN_ERROR* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_CAN_ERROR* 18)
(intern "*MCU_FAULT_RESET_OCCURED*" (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(shadow '*MCU_FAULT_RESET_OCCURED* (find-package "TWINNY_MSGS::SAFETYREPORTV2"))
(defconstant twinny_msgs::SafetyReportV2::*MCU_FAULT_RESET_OCCURED* 255)
(defclass twinny_msgs::SafetyReportV2
  :super ros::object
  :slots (_header _mode _estop_switch_status _sto_status _sto_feedback_status _ossd_front_status _ossd_rear_status _external_stop_status _reset_switch_usable_flag _reset_switch_toggle _manual_move_switch_usable_flag _manual_move_switch_status _lidar_front_warn _lidar_rear_warn _lidar_power_status _mcu_watchdog_status_master _mcu_watchdog_status_slave _fault_detected _fault_inconsitent_sequence_two_mcu _fault_different_data_two_mcu _fault_safety_function _fault_mcu ))

(defmethod twinny_msgs::SafetyReportV2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:estop_switch_status __estop_switch_status) nil)
    ((:sto_status __sto_status) nil)
    ((:sto_feedback_status __sto_feedback_status) nil)
    ((:ossd_front_status __ossd_front_status) nil)
    ((:ossd_rear_status __ossd_rear_status) nil)
    ((:external_stop_status __external_stop_status) nil)
    ((:reset_switch_usable_flag __reset_switch_usable_flag) nil)
    ((:reset_switch_toggle __reset_switch_toggle) nil)
    ((:manual_move_switch_usable_flag __manual_move_switch_usable_flag) nil)
    ((:manual_move_switch_status __manual_move_switch_status) nil)
    ((:lidar_front_warn __lidar_front_warn) nil)
    ((:lidar_rear_warn __lidar_rear_warn) nil)
    ((:lidar_power_status __lidar_power_status) nil)
    ((:mcu_watchdog_status_master __mcu_watchdog_status_master) 0)
    ((:mcu_watchdog_status_slave __mcu_watchdog_status_slave) 0)
    ((:fault_detected __fault_detected) nil)
    ((:fault_inconsitent_sequence_two_mcu __fault_inconsitent_sequence_two_mcu) nil)
    ((:fault_different_data_two_mcu __fault_different_data_two_mcu) nil)
    ((:fault_safety_function __fault_safety_function) 0)
    ((:fault_mcu __fault_mcu) (make-array 2 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _estop_switch_status __estop_switch_status)
   (setq _sto_status __sto_status)
   (setq _sto_feedback_status __sto_feedback_status)
   (setq _ossd_front_status __ossd_front_status)
   (setq _ossd_rear_status __ossd_rear_status)
   (setq _external_stop_status __external_stop_status)
   (setq _reset_switch_usable_flag __reset_switch_usable_flag)
   (setq _reset_switch_toggle __reset_switch_toggle)
   (setq _manual_move_switch_usable_flag __manual_move_switch_usable_flag)
   (setq _manual_move_switch_status __manual_move_switch_status)
   (setq _lidar_front_warn __lidar_front_warn)
   (setq _lidar_rear_warn __lidar_rear_warn)
   (setq _lidar_power_status __lidar_power_status)
   (setq _mcu_watchdog_status_master (round __mcu_watchdog_status_master))
   (setq _mcu_watchdog_status_slave (round __mcu_watchdog_status_slave))
   (setq _fault_detected __fault_detected)
   (setq _fault_inconsitent_sequence_two_mcu __fault_inconsitent_sequence_two_mcu)
   (setq _fault_different_data_two_mcu __fault_different_data_two_mcu)
   (setq _fault_safety_function (round __fault_safety_function))
   (setq _fault_mcu __fault_mcu)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:estop_switch_status
   (&optional __estop_switch_status)
   (if __estop_switch_status (setq _estop_switch_status __estop_switch_status)) _estop_switch_status)
  (:sto_status
   (&optional __sto_status)
   (if __sto_status (setq _sto_status __sto_status)) _sto_status)
  (:sto_feedback_status
   (&optional __sto_feedback_status)
   (if __sto_feedback_status (setq _sto_feedback_status __sto_feedback_status)) _sto_feedback_status)
  (:ossd_front_status
   (&optional __ossd_front_status)
   (if __ossd_front_status (setq _ossd_front_status __ossd_front_status)) _ossd_front_status)
  (:ossd_rear_status
   (&optional __ossd_rear_status)
   (if __ossd_rear_status (setq _ossd_rear_status __ossd_rear_status)) _ossd_rear_status)
  (:external_stop_status
   (&optional __external_stop_status)
   (if __external_stop_status (setq _external_stop_status __external_stop_status)) _external_stop_status)
  (:reset_switch_usable_flag
   (&optional __reset_switch_usable_flag)
   (if __reset_switch_usable_flag (setq _reset_switch_usable_flag __reset_switch_usable_flag)) _reset_switch_usable_flag)
  (:reset_switch_toggle
   (&optional __reset_switch_toggle)
   (if __reset_switch_toggle (setq _reset_switch_toggle __reset_switch_toggle)) _reset_switch_toggle)
  (:manual_move_switch_usable_flag
   (&optional __manual_move_switch_usable_flag)
   (if __manual_move_switch_usable_flag (setq _manual_move_switch_usable_flag __manual_move_switch_usable_flag)) _manual_move_switch_usable_flag)
  (:manual_move_switch_status
   (&optional __manual_move_switch_status)
   (if __manual_move_switch_status (setq _manual_move_switch_status __manual_move_switch_status)) _manual_move_switch_status)
  (:lidar_front_warn
   (&optional __lidar_front_warn)
   (if __lidar_front_warn (setq _lidar_front_warn __lidar_front_warn)) _lidar_front_warn)
  (:lidar_rear_warn
   (&optional __lidar_rear_warn)
   (if __lidar_rear_warn (setq _lidar_rear_warn __lidar_rear_warn)) _lidar_rear_warn)
  (:lidar_power_status
   (&optional __lidar_power_status)
   (if __lidar_power_status (setq _lidar_power_status __lidar_power_status)) _lidar_power_status)
  (:mcu_watchdog_status_master
   (&optional __mcu_watchdog_status_master)
   (if __mcu_watchdog_status_master (setq _mcu_watchdog_status_master __mcu_watchdog_status_master)) _mcu_watchdog_status_master)
  (:mcu_watchdog_status_slave
   (&optional __mcu_watchdog_status_slave)
   (if __mcu_watchdog_status_slave (setq _mcu_watchdog_status_slave __mcu_watchdog_status_slave)) _mcu_watchdog_status_slave)
  (:fault_detected
   (&optional __fault_detected)
   (if __fault_detected (setq _fault_detected __fault_detected)) _fault_detected)
  (:fault_inconsitent_sequence_two_mcu
   (&optional __fault_inconsitent_sequence_two_mcu)
   (if __fault_inconsitent_sequence_two_mcu (setq _fault_inconsitent_sequence_two_mcu __fault_inconsitent_sequence_two_mcu)) _fault_inconsitent_sequence_two_mcu)
  (:fault_different_data_two_mcu
   (&optional __fault_different_data_two_mcu)
   (if __fault_different_data_two_mcu (setq _fault_different_data_two_mcu __fault_different_data_two_mcu)) _fault_different_data_two_mcu)
  (:fault_safety_function
   (&optional __fault_safety_function)
   (if __fault_safety_function (setq _fault_safety_function __fault_safety_function)) _fault_safety_function)
  (:fault_mcu
   (&optional __fault_mcu)
   (if __fault_mcu (setq _fault_mcu __fault_mcu)) _fault_mcu)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _mode
    1
    ;; bool _estop_switch_status
    1
    ;; bool _sto_status
    1
    ;; bool _sto_feedback_status
    1
    ;; bool _ossd_front_status
    1
    ;; bool _ossd_rear_status
    1
    ;; bool _external_stop_status
    1
    ;; bool _reset_switch_usable_flag
    1
    ;; bool _reset_switch_toggle
    1
    ;; bool _manual_move_switch_usable_flag
    1
    ;; bool _manual_move_switch_status
    1
    ;; bool _lidar_front_warn
    1
    ;; bool _lidar_rear_warn
    1
    ;; bool _lidar_power_status
    1
    ;; uint8 _mcu_watchdog_status_master
    1
    ;; uint8 _mcu_watchdog_status_slave
    1
    ;; bool _fault_detected
    1
    ;; bool _fault_inconsitent_sequence_two_mcu
    1
    ;; bool _fault_different_data_two_mcu
    1
    ;; uint16 _fault_safety_function
    2
    ;; uint8[2] _fault_mcu
    (* 1    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _mode
       (write-byte _mode s)
     ;; bool _estop_switch_status
       (if _estop_switch_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _sto_status
       (if _sto_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _sto_feedback_status
       (if _sto_feedback_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _ossd_front_status
       (if _ossd_front_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _ossd_rear_status
       (if _ossd_rear_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _external_stop_status
       (if _external_stop_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _reset_switch_usable_flag
       (if _reset_switch_usable_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _reset_switch_toggle
       (if _reset_switch_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _manual_move_switch_usable_flag
       (if _manual_move_switch_usable_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _manual_move_switch_status
       (if _manual_move_switch_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _lidar_front_warn
       (if _lidar_front_warn (write-byte -1 s) (write-byte 0 s))
     ;; bool _lidar_rear_warn
       (if _lidar_rear_warn (write-byte -1 s) (write-byte 0 s))
     ;; bool _lidar_power_status
       (if _lidar_power_status (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _mcu_watchdog_status_master
       (write-byte _mcu_watchdog_status_master s)
     ;; uint8 _mcu_watchdog_status_slave
       (write-byte _mcu_watchdog_status_slave s)
     ;; bool _fault_detected
       (if _fault_detected (write-byte -1 s) (write-byte 0 s))
     ;; bool _fault_inconsitent_sequence_two_mcu
       (if _fault_inconsitent_sequence_two_mcu (write-byte -1 s) (write-byte 0 s))
     ;; bool _fault_different_data_two_mcu
       (if _fault_different_data_two_mcu (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _fault_safety_function
       (write-word _fault_safety_function s)
     ;; uint8[2] _fault_mcu
     (princ _fault_mcu s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; bool _estop_switch_status
     (setq _estop_switch_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sto_status
     (setq _sto_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sto_feedback_status
     (setq _sto_feedback_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ossd_front_status
     (setq _ossd_front_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ossd_rear_status
     (setq _ossd_rear_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _external_stop_status
     (setq _external_stop_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reset_switch_usable_flag
     (setq _reset_switch_usable_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reset_switch_toggle
     (setq _reset_switch_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _manual_move_switch_usable_flag
     (setq _manual_move_switch_usable_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _manual_move_switch_status
     (setq _manual_move_switch_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lidar_front_warn
     (setq _lidar_front_warn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lidar_rear_warn
     (setq _lidar_rear_warn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lidar_power_status
     (setq _lidar_power_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _mcu_watchdog_status_master
     (setq _mcu_watchdog_status_master (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mcu_watchdog_status_slave
     (setq _mcu_watchdog_status_slave (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _fault_detected
     (setq _fault_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fault_inconsitent_sequence_two_mcu
     (setq _fault_inconsitent_sequence_two_mcu (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fault_different_data_two_mcu
     (setq _fault_different_data_two_mcu (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _fault_safety_function
     (setq _fault_safety_function (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[2] _fault_mcu
   (setq _fault_mcu (make-array 2 :element-type :char))
   (replace _fault_mcu buf :start2 ptr-) (incf ptr- 2)
   ;;
   self)
  )

(setf (get twinny_msgs::SafetyReportV2 :md5sum-) "29c0534163876600d31359fed6020e8b")
(setf (get twinny_msgs::SafetyReportV2 :datatype-) "twinny_msgs/SafetyReportV2")
(setf (get twinny_msgs::SafetyReportV2 :definition-)
      "Header header

int8 MODE_NORMAL=0
int8 MODE_OSSD_MUTE_MOVE=1
int8 MODE_MANUAL_MOVE=2
int8 MODE_EMERGENCY_STOP=-1
int8 MODE_PROTECTIVE_STOP=-2
int8 MODE_EXTERNAL_STOP=-3

int8 mode

bool estop_switch_status
bool sto_status
bool sto_feedback_status
bool ossd_front_status
bool ossd_rear_status
bool external_stop_status

bool reset_switch_usable_flag
bool reset_switch_toggle
bool manual_move_switch_usable_flag
bool manual_move_switch_status
bool lidar_front_warn
bool lidar_rear_warn
bool lidar_power_status

uint8 MCU_WATCHDOG_NORMAL=0
uint8 MCU_WATCHDOG_ALARM=1
uint8 MCU_WATCHDOG_FAULT=2

uint8 mcu_watchdog_status_master
uint8 mcu_watchdog_status_slave

bool fault_detected

bool fault_inconsitent_sequence_two_mcu
bool fault_different_data_two_mcu

uint8 FAULT_EMERGENCY_SW_FAULT=1
uint8 FAULT_STO_FAULT=2
uint8 FAULT_OSSD_FRONT=3
uint8 FAULT_OSSD_REAR=4
uint8 FAULT_LIDAR_FRONT=5
uint8 FAULT_LIDAR_REAR=6
uint8 FAULT_EXTERNAL_STOP=7
uint8 FAULT_PROGRAM_TIMING=8
uint8 FAULT_PC_BOARD_CHECK=9
uint16 fault_safety_function

uint8 MCU_FAULT_NO_ERROR=0
uint8 MCU_FAULT_CORE_TEST_FAIL=1
uint8 MCU_FAULT_RAM_TEST_FAIL=2
uint8 MCU_FAULT_FLASH_TEST_FAIL=3
uint8 MCU_FAULT_PWR_SETTING_MISMATCH=4
uint8 MCU_FAULT_RCC_SETTING_MISMATCH=5
uint8 MCU_FAULT_GPIO_SETTING_MISMATCH=6
uint8 MCU_FAULT_SYSCFG_SETTING_MISMATCH=7
uint8 MCU_FAULT_DMA_SETTING_MISMATCH=8
uint8 MCU_FAULT_NVIC_SETTING_MISMATCH=9
uint8 MCU_FAULT_ADC_SETTING_MISMATCH=10
uint8 MCU_FAULT_VREFBUF_SETTING_MISMATCH=11
uint8 MCU_FAULT_WDG_SETTING_MISMATCH=12
uint8 MCU_FAULT_SPI_SETTING_MISMATCH=13
uint8 MCU_FAULT_CAN_SETTING_MISMATCH=14
uint8 MCU_FAULT_POWERING_ERROR=15
uint8 MCU_FAULT_CLOCKING_ERROR=16
uint8 MCU_FAULT_DIAGNOSTIC_ERROR=17
uint8 MCU_FAULT_CAN_ERROR=18
uint8 MCU_FAULT_RESET_OCCURED=255
uint8[2] fault_mcu

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :twinny_msgs/SafetyReportV2 "29c0534163876600d31359fed6020e8b")


