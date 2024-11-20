
(cl:in-package :asdf)

(defsystem "twinny_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BarcodeReport" :depends-on ("_package_BarcodeReport"))
    (:file "_package_BarcodeReport" :depends-on ("_package"))
    (:file "BatteryCommand" :depends-on ("_package_BatteryCommand"))
    (:file "_package_BatteryCommand" :depends-on ("_package"))
    (:file "BatteryReport" :depends-on ("_package_BatteryReport"))
    (:file "_package_BatteryReport" :depends-on ("_package"))
    (:file "BumperReport" :depends-on ("_package_BumperReport"))
    (:file "_package_BumperReport" :depends-on ("_package"))
    (:file "BuzzerControl" :depends-on ("_package_BuzzerControl"))
    (:file "_package_BuzzerControl" :depends-on ("_package"))
    (:file "BuzzerStateReport" :depends-on ("_package_BuzzerStateReport"))
    (:file "_package_BuzzerStateReport" :depends-on ("_package"))
    (:file "CargoBoxControl" :depends-on ("_package_CargoBoxControl"))
    (:file "_package_CargoBoxControl" :depends-on ("_package"))
    (:file "CargoBoxLEDCommand" :depends-on ("_package_CargoBoxLEDCommand"))
    (:file "_package_CargoBoxLEDCommand" :depends-on ("_package"))
    (:file "CargoBoxReport" :depends-on ("_package_CargoBoxReport"))
    (:file "_package_CargoBoxReport" :depends-on ("_package"))
    (:file "Char_Vector" :depends-on ("_package_Char_Vector"))
    (:file "_package_Char_Vector" :depends-on ("_package"))
    (:file "ConveyorCommand" :depends-on ("_package_ConveyorCommand"))
    (:file "_package_ConveyorCommand" :depends-on ("_package"))
    (:file "ConveyorStatusReport" :depends-on ("_package_ConveyorStatusReport"))
    (:file "_package_ConveyorStatusReport" :depends-on ("_package"))
    (:file "DWMRState" :depends-on ("_package_DWMRState"))
    (:file "_package_DWMRState" :depends-on ("_package"))
    (:file "DesiredActualCommand" :depends-on ("_package_DesiredActualCommand"))
    (:file "_package_DesiredActualCommand" :depends-on ("_package"))
    (:file "DesiredTrajectory" :depends-on ("_package_DesiredTrajectory"))
    (:file "_package_DesiredTrajectory" :depends-on ("_package"))
    (:file "DoorLockCommand" :depends-on ("_package_DoorLockCommand"))
    (:file "_package_DoorLockCommand" :depends-on ("_package"))
    (:file "DoorLockReport" :depends-on ("_package_DoorLockReport"))
    (:file "_package_DoorLockReport" :depends-on ("_package"))
    (:file "HardwareReportErrorCode" :depends-on ("_package_HardwareReportErrorCode"))
    (:file "_package_HardwareReportErrorCode" :depends-on ("_package"))
    (:file "JoystickReport" :depends-on ("_package_JoystickReport"))
    (:file "_package_JoystickReport" :depends-on ("_package"))
    (:file "JoystickStatus" :depends-on ("_package_JoystickStatus"))
    (:file "_package_JoystickStatus" :depends-on ("_package"))
    (:file "LEDControl" :depends-on ("_package_LEDControl"))
    (:file "_package_LEDControl" :depends-on ("_package"))
    (:file "LEDStateReport" :depends-on ("_package_LEDStateReport"))
    (:file "_package_LEDStateReport" :depends-on ("_package"))
    (:file "LampControl" :depends-on ("_package_LampControl"))
    (:file "_package_LampControl" :depends-on ("_package"))
    (:file "LampStateReport" :depends-on ("_package_LampStateReport"))
    (:file "_package_LampStateReport" :depends-on ("_package"))
    (:file "LinearAngular" :depends-on ("_package_LinearAngular"))
    (:file "_package_LinearAngular" :depends-on ("_package"))
    (:file "ManualArmCommand" :depends-on ("_package_ManualArmCommand"))
    (:file "_package_ManualArmCommand" :depends-on ("_package"))
    (:file "ManualArmReport" :depends-on ("_package_ManualArmReport"))
    (:file "_package_ManualArmReport" :depends-on ("_package"))
    (:file "MarkerPose2D" :depends-on ("_package_MarkerPose2D"))
    (:file "_package_MarkerPose2D" :depends-on ("_package"))
    (:file "MarkerPose2DArray" :depends-on ("_package_MarkerPose2DArray"))
    (:file "_package_MarkerPose2DArray" :depends-on ("_package"))
    (:file "MonitorHeartBeatHz" :depends-on ("_package_MonitorHeartBeatHz"))
    (:file "_package_MonitorHeartBeatHz" :depends-on ("_package"))
    (:file "MonitorMotorError" :depends-on ("_package_MonitorMotorError"))
    (:file "_package_MonitorMotorError" :depends-on ("_package"))
    (:file "MonitorPacket" :depends-on ("_package_MonitorPacket"))
    (:file "_package_MonitorPacket" :depends-on ("_package"))
    (:file "MonitorPacketStowage" :depends-on ("_package_MonitorPacketStowage"))
    (:file "_package_MonitorPacketStowage" :depends-on ("_package"))
    (:file "MonitorPowerBoard" :depends-on ("_package_MonitorPowerBoard"))
    (:file "_package_MonitorPowerBoard" :depends-on ("_package"))
    (:file "MonitorRobotBoard" :depends-on ("_package_MonitorRobotBoard"))
    (:file "_package_MonitorRobotBoard" :depends-on ("_package"))
    (:file "MonitorStowageBoard" :depends-on ("_package_MonitorStowageBoard"))
    (:file "_package_MonitorStowageBoard" :depends-on ("_package"))
    (:file "MonitorVoltage" :depends-on ("_package_MonitorVoltage"))
    (:file "_package_MonitorVoltage" :depends-on ("_package"))
    (:file "MotorReport" :depends-on ("_package_MotorReport"))
    (:file "_package_MotorReport" :depends-on ("_package"))
    (:file "ObstacleReport" :depends-on ("_package_ObstacleReport"))
    (:file "_package_ObstacleReport" :depends-on ("_package"))
    (:file "PGVReport" :depends-on ("_package_PGVReport"))
    (:file "_package_PGVReport" :depends-on ("_package"))
    (:file "PalletLiftCommand" :depends-on ("_package_PalletLiftCommand"))
    (:file "_package_PalletLiftCommand" :depends-on ("_package"))
    (:file "PalletLiftReport" :depends-on ("_package_PalletLiftReport"))
    (:file "_package_PalletLiftReport" :depends-on ("_package"))
    (:file "PalletMoveCommand" :depends-on ("_package_PalletMoveCommand"))
    (:file "_package_PalletMoveCommand" :depends-on ("_package"))
    (:file "PalletMoveReport" :depends-on ("_package_PalletMoveReport"))
    (:file "_package_PalletMoveReport" :depends-on ("_package"))
    (:file "PathCommand" :depends-on ("_package_PathCommand"))
    (:file "_package_PathCommand" :depends-on ("_package"))
    (:file "PingStatusReport" :depends-on ("_package_PingStatusReport"))
    (:file "_package_PingStatusReport" :depends-on ("_package"))
    (:file "PlcAdditionalCommand" :depends-on ("_package_PlcAdditionalCommand"))
    (:file "_package_PlcAdditionalCommand" :depends-on ("_package"))
    (:file "PlcMissionCommand" :depends-on ("_package_PlcMissionCommand"))
    (:file "_package_PlcMissionCommand" :depends-on ("_package"))
    (:file "PlcMissionStateReport" :depends-on ("_package_PlcMissionStateReport"))
    (:file "_package_PlcMissionStateReport" :depends-on ("_package"))
    (:file "Pose3D" :depends-on ("_package_Pose3D"))
    (:file "_package_Pose3D" :depends-on ("_package"))
    (:file "Position" :depends-on ("_package_Position"))
    (:file "_package_Position" :depends-on ("_package"))
    (:file "PositionCompensatorReport" :depends-on ("_package_PositionCompensatorReport"))
    (:file "_package_PositionCompensatorReport" :depends-on ("_package"))
    (:file "PowerRelayCommand" :depends-on ("_package_PowerRelayCommand"))
    (:file "_package_PowerRelayCommand" :depends-on ("_package"))
    (:file "PowerSavingMode" :depends-on ("_package_PowerSavingMode"))
    (:file "_package_PowerSavingMode" :depends-on ("_package"))
    (:file "RefrigeStateReport" :depends-on ("_package_RefrigeStateReport"))
    (:file "_package_RefrigeStateReport" :depends-on ("_package"))
    (:file "RobotState" :depends-on ("_package_RobotState"))
    (:file "_package_RobotState" :depends-on ("_package"))
    (:file "SafetyBoardReset" :depends-on ("_package_SafetyBoardReset"))
    (:file "_package_SafetyBoardReset" :depends-on ("_package"))
    (:file "SafetyLaserControl" :depends-on ("_package_SafetyLaserControl"))
    (:file "_package_SafetyLaserControl" :depends-on ("_package"))
    (:file "SafetyLiDARCommand" :depends-on ("_package_SafetyLiDARCommand"))
    (:file "_package_SafetyLiDARCommand" :depends-on ("_package"))
    (:file "SafetyReport" :depends-on ("_package_SafetyReport"))
    (:file "_package_SafetyReport" :depends-on ("_package"))
    (:file "SafetyReportV2" :depends-on ("_package_SafetyReportV2"))
    (:file "_package_SafetyReportV2" :depends-on ("_package"))
    (:file "SellingStartCommand" :depends-on ("_package_SellingStartCommand"))
    (:file "_package_SellingStartCommand" :depends-on ("_package"))
    (:file "SonarReport" :depends-on ("_package_SonarReport"))
    (:file "_package_SonarReport" :depends-on ("_package"))
    (:file "SpeedModeReport" :depends-on ("_package_SpeedModeReport"))
    (:file "_package_SpeedModeReport" :depends-on ("_package"))
    (:file "StationPose2D" :depends-on ("_package_StationPose2D"))
    (:file "_package_StationPose2D" :depends-on ("_package"))
    (:file "StationPoseReport" :depends-on ("_package_StationPoseReport"))
    (:file "_package_StationPoseReport" :depends-on ("_package"))
    (:file "SwitchReport" :depends-on ("_package_SwitchReport"))
    (:file "_package_SwitchReport" :depends-on ("_package"))
    (:file "TorqueOffModeReport" :depends-on ("_package_TorqueOffModeReport"))
    (:file "_package_TorqueOffModeReport" :depends-on ("_package"))
    (:file "Trajectory2" :depends-on ("_package_Trajectory2"))
    (:file "_package_Trajectory2" :depends-on ("_package"))
    (:file "TurnSignalCommand" :depends-on ("_package_TurnSignalCommand"))
    (:file "_package_TurnSignalCommand" :depends-on ("_package"))
  ))