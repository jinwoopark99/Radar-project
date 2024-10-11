
"use strict";

let HilStateQuaternion = require('./HilStateQuaternion.js');
let WheelOdomStamped = require('./WheelOdomStamped.js');
let Vibration = require('./Vibration.js');
let State = require('./State.js');
let CommandCode = require('./CommandCode.js');
let TimesyncStatus = require('./TimesyncStatus.js');
let AttitudeTarget = require('./AttitudeTarget.js');
let TerrainReport = require('./TerrainReport.js');
let ESCInfo = require('./ESCInfo.js');
let CompanionProcessStatus = require('./CompanionProcessStatus.js');
let RTCM = require('./RTCM.js');
let GPSRTK = require('./GPSRTK.js');
let EstimatorStatus = require('./EstimatorStatus.js');
let Altitude = require('./Altitude.js');
let ESCStatus = require('./ESCStatus.js');
let LogEntry = require('./LogEntry.js');
let ESCInfoItem = require('./ESCInfoItem.js');
let DebugValue = require('./DebugValue.js');
let ESCStatusItem = require('./ESCStatusItem.js');
let HilGPS = require('./HilGPS.js');
let PositionTarget = require('./PositionTarget.js');
let Waypoint = require('./Waypoint.js');
let VehicleInfo = require('./VehicleInfo.js');
let LogData = require('./LogData.js');
let ParamValue = require('./ParamValue.js');
let StatusText = require('./StatusText.js');
let Thrust = require('./Thrust.js');
let Tunnel = require('./Tunnel.js');
let HilActuatorControls = require('./HilActuatorControls.js');
let HilSensor = require('./HilSensor.js');
let CameraImageCaptured = require('./CameraImageCaptured.js');
let NavControllerOutput = require('./NavControllerOutput.js');
let LandingTarget = require('./LandingTarget.js');
let WaypointList = require('./WaypointList.js');
let BatteryStatus = require('./BatteryStatus.js');
let PlayTuneV2 = require('./PlayTuneV2.js');
let OpticalFlowRad = require('./OpticalFlowRad.js');
let Mavlink = require('./Mavlink.js');
let RadioStatus = require('./RadioStatus.js');
let MagnetometerReporter = require('./MagnetometerReporter.js');
let ManualControl = require('./ManualControl.js');
let Trajectory = require('./Trajectory.js');
let GPSINPUT = require('./GPSINPUT.js');
let CamIMUStamp = require('./CamIMUStamp.js');
let ESCTelemetry = require('./ESCTelemetry.js');
let WaypointReached = require('./WaypointReached.js');
let OnboardComputerStatus = require('./OnboardComputerStatus.js');
let ExtendedState = require('./ExtendedState.js');
let OverrideRCIn = require('./OverrideRCIn.js');
let GlobalPositionTarget = require('./GlobalPositionTarget.js');
let RCOut = require('./RCOut.js');
let MountControl = require('./MountControl.js');
let ActuatorControl = require('./ActuatorControl.js');
let RTKBaseline = require('./RTKBaseline.js');
let ADSBVehicle = require('./ADSBVehicle.js');
let FileEntry = require('./FileEntry.js');
let CellularStatus = require('./CellularStatus.js');
let VFR_HUD = require('./VFR_HUD.js');
let RCIn = require('./RCIn.js');
let Param = require('./Param.js');
let SysStatus = require('./SysStatus.js');
let GPSRAW = require('./GPSRAW.js');
let HilControls = require('./HilControls.js');
let HomePosition = require('./HomePosition.js');
let ESCTelemetryItem = require('./ESCTelemetryItem.js');

module.exports = {
  HilStateQuaternion: HilStateQuaternion,
  WheelOdomStamped: WheelOdomStamped,
  Vibration: Vibration,
  State: State,
  CommandCode: CommandCode,
  TimesyncStatus: TimesyncStatus,
  AttitudeTarget: AttitudeTarget,
  TerrainReport: TerrainReport,
  ESCInfo: ESCInfo,
  CompanionProcessStatus: CompanionProcessStatus,
  RTCM: RTCM,
  GPSRTK: GPSRTK,
  EstimatorStatus: EstimatorStatus,
  Altitude: Altitude,
  ESCStatus: ESCStatus,
  LogEntry: LogEntry,
  ESCInfoItem: ESCInfoItem,
  DebugValue: DebugValue,
  ESCStatusItem: ESCStatusItem,
  HilGPS: HilGPS,
  PositionTarget: PositionTarget,
  Waypoint: Waypoint,
  VehicleInfo: VehicleInfo,
  LogData: LogData,
  ParamValue: ParamValue,
  StatusText: StatusText,
  Thrust: Thrust,
  Tunnel: Tunnel,
  HilActuatorControls: HilActuatorControls,
  HilSensor: HilSensor,
  CameraImageCaptured: CameraImageCaptured,
  NavControllerOutput: NavControllerOutput,
  LandingTarget: LandingTarget,
  WaypointList: WaypointList,
  BatteryStatus: BatteryStatus,
  PlayTuneV2: PlayTuneV2,
  OpticalFlowRad: OpticalFlowRad,
  Mavlink: Mavlink,
  RadioStatus: RadioStatus,
  MagnetometerReporter: MagnetometerReporter,
  ManualControl: ManualControl,
  Trajectory: Trajectory,
  GPSINPUT: GPSINPUT,
  CamIMUStamp: CamIMUStamp,
  ESCTelemetry: ESCTelemetry,
  WaypointReached: WaypointReached,
  OnboardComputerStatus: OnboardComputerStatus,
  ExtendedState: ExtendedState,
  OverrideRCIn: OverrideRCIn,
  GlobalPositionTarget: GlobalPositionTarget,
  RCOut: RCOut,
  MountControl: MountControl,
  ActuatorControl: ActuatorControl,
  RTKBaseline: RTKBaseline,
  ADSBVehicle: ADSBVehicle,
  FileEntry: FileEntry,
  CellularStatus: CellularStatus,
  VFR_HUD: VFR_HUD,
  RCIn: RCIn,
  Param: Param,
  SysStatus: SysStatus,
  GPSRAW: GPSRAW,
  HilControls: HilControls,
  HomePosition: HomePosition,
  ESCTelemetryItem: ESCTelemetryItem,
};
