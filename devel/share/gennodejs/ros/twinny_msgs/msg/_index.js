
"use strict";

let DoorLockReport = require('./DoorLockReport.js');
let PalletLiftCommand = require('./PalletLiftCommand.js');
let ConveyorStatusReport = require('./ConveyorStatusReport.js');
let Trajectory2 = require('./Trajectory2.js');
let BuzzerControl = require('./BuzzerControl.js');
let MarkerPose2D = require('./MarkerPose2D.js');
let SafetyBoardReset = require('./SafetyBoardReset.js');
let MonitorVoltage = require('./MonitorVoltage.js');
let PingStatusReport = require('./PingStatusReport.js');
let SafetyReportV2 = require('./SafetyReportV2.js');
let RefrigeStateReport = require('./RefrigeStateReport.js');
let PathCommand = require('./PathCommand.js');
let CargoBoxControl = require('./CargoBoxControl.js');
let MarkerPose2DArray = require('./MarkerPose2DArray.js');
let PowerSavingMode = require('./PowerSavingMode.js');
let LinearAngular = require('./LinearAngular.js');
let PalletMoveCommand = require('./PalletMoveCommand.js');
let DWMRState = require('./DWMRState.js');
let SonarReport = require('./SonarReport.js');
let ConveyorCommand = require('./ConveyorCommand.js');
let SafetyReport = require('./SafetyReport.js');
let PalletMoveReport = require('./PalletMoveReport.js');
let SpeedModeReport = require('./SpeedModeReport.js');
let SellingStartCommand = require('./SellingStartCommand.js');
let TorqueOffModeReport = require('./TorqueOffModeReport.js');
let StationPoseReport = require('./StationPoseReport.js');
let PlcAdditionalCommand = require('./PlcAdditionalCommand.js');
let MonitorPowerBoard = require('./MonitorPowerBoard.js');
let ManualArmCommand = require('./ManualArmCommand.js');
let SafetyLiDARCommand = require('./SafetyLiDARCommand.js');
let CargoBoxLEDCommand = require('./CargoBoxLEDCommand.js');
let MonitorHeartBeatHz = require('./MonitorHeartBeatHz.js');
let JoystickReport = require('./JoystickReport.js');
let BatteryReport = require('./BatteryReport.js');
let Pose3D = require('./Pose3D.js');
let PositionCompensatorReport = require('./PositionCompensatorReport.js');
let ManualArmReport = require('./ManualArmReport.js');
let MonitorPacket = require('./MonitorPacket.js');
let MonitorMotorError = require('./MonitorMotorError.js');
let PlcMissionStateReport = require('./PlcMissionStateReport.js');
let Char_Vector = require('./Char_Vector.js');
let BarcodeReport = require('./BarcodeReport.js');
let LEDControl = require('./LEDControl.js');
let PowerRelayCommand = require('./PowerRelayCommand.js');
let MonitorPacketStowage = require('./MonitorPacketStowage.js');
let DesiredActualCommand = require('./DesiredActualCommand.js');
let CargoBoxReport = require('./CargoBoxReport.js');
let DesiredTrajectory = require('./DesiredTrajectory.js');
let HardwareReportErrorCode = require('./HardwareReportErrorCode.js');
let Position = require('./Position.js');
let TurnSignalCommand = require('./TurnSignalCommand.js');
let MotorReport = require('./MotorReport.js');
let BumperReport = require('./BumperReport.js');
let LampControl = require('./LampControl.js');
let BuzzerStateReport = require('./BuzzerStateReport.js');
let PGVReport = require('./PGVReport.js');
let PlcMissionCommand = require('./PlcMissionCommand.js');
let PalletLiftReport = require('./PalletLiftReport.js');
let ObstacleReport = require('./ObstacleReport.js');
let BatteryCommand = require('./BatteryCommand.js');
let DoorLockCommand = require('./DoorLockCommand.js');
let SwitchReport = require('./SwitchReport.js');
let LEDStateReport = require('./LEDStateReport.js');
let MonitorStowageBoard = require('./MonitorStowageBoard.js');
let JoystickStatus = require('./JoystickStatus.js');
let StationPose2D = require('./StationPose2D.js');
let MonitorRobotBoard = require('./MonitorRobotBoard.js');
let RobotState = require('./RobotState.js');
let LampStateReport = require('./LampStateReport.js');
let SafetyLaserControl = require('./SafetyLaserControl.js');

module.exports = {
  DoorLockReport: DoorLockReport,
  PalletLiftCommand: PalletLiftCommand,
  ConveyorStatusReport: ConveyorStatusReport,
  Trajectory2: Trajectory2,
  BuzzerControl: BuzzerControl,
  MarkerPose2D: MarkerPose2D,
  SafetyBoardReset: SafetyBoardReset,
  MonitorVoltage: MonitorVoltage,
  PingStatusReport: PingStatusReport,
  SafetyReportV2: SafetyReportV2,
  RefrigeStateReport: RefrigeStateReport,
  PathCommand: PathCommand,
  CargoBoxControl: CargoBoxControl,
  MarkerPose2DArray: MarkerPose2DArray,
  PowerSavingMode: PowerSavingMode,
  LinearAngular: LinearAngular,
  PalletMoveCommand: PalletMoveCommand,
  DWMRState: DWMRState,
  SonarReport: SonarReport,
  ConveyorCommand: ConveyorCommand,
  SafetyReport: SafetyReport,
  PalletMoveReport: PalletMoveReport,
  SpeedModeReport: SpeedModeReport,
  SellingStartCommand: SellingStartCommand,
  TorqueOffModeReport: TorqueOffModeReport,
  StationPoseReport: StationPoseReport,
  PlcAdditionalCommand: PlcAdditionalCommand,
  MonitorPowerBoard: MonitorPowerBoard,
  ManualArmCommand: ManualArmCommand,
  SafetyLiDARCommand: SafetyLiDARCommand,
  CargoBoxLEDCommand: CargoBoxLEDCommand,
  MonitorHeartBeatHz: MonitorHeartBeatHz,
  JoystickReport: JoystickReport,
  BatteryReport: BatteryReport,
  Pose3D: Pose3D,
  PositionCompensatorReport: PositionCompensatorReport,
  ManualArmReport: ManualArmReport,
  MonitorPacket: MonitorPacket,
  MonitorMotorError: MonitorMotorError,
  PlcMissionStateReport: PlcMissionStateReport,
  Char_Vector: Char_Vector,
  BarcodeReport: BarcodeReport,
  LEDControl: LEDControl,
  PowerRelayCommand: PowerRelayCommand,
  MonitorPacketStowage: MonitorPacketStowage,
  DesiredActualCommand: DesiredActualCommand,
  CargoBoxReport: CargoBoxReport,
  DesiredTrajectory: DesiredTrajectory,
  HardwareReportErrorCode: HardwareReportErrorCode,
  Position: Position,
  TurnSignalCommand: TurnSignalCommand,
  MotorReport: MotorReport,
  BumperReport: BumperReport,
  LampControl: LampControl,
  BuzzerStateReport: BuzzerStateReport,
  PGVReport: PGVReport,
  PlcMissionCommand: PlcMissionCommand,
  PalletLiftReport: PalletLiftReport,
  ObstacleReport: ObstacleReport,
  BatteryCommand: BatteryCommand,
  DoorLockCommand: DoorLockCommand,
  SwitchReport: SwitchReport,
  LEDStateReport: LEDStateReport,
  MonitorStowageBoard: MonitorStowageBoard,
  JoystickStatus: JoystickStatus,
  StationPose2D: StationPose2D,
  MonitorRobotBoard: MonitorRobotBoard,
  RobotState: RobotState,
  LampStateReport: LampStateReport,
  SafetyLaserControl: SafetyLaserControl,
};
