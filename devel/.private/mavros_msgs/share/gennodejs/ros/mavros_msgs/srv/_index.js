
"use strict";

let WaypointClear = require('./WaypointClear.js')
let FileClose = require('./FileClose.js')
let ParamGet = require('./ParamGet.js')
let StreamRate = require('./StreamRate.js')
let ParamPull = require('./ParamPull.js')
let LogRequestData = require('./LogRequestData.js')
let MessageInterval = require('./MessageInterval.js')
let SetMavFrame = require('./SetMavFrame.js')
let FileList = require('./FileList.js')
let FileOpen = require('./FileOpen.js')
let CommandLong = require('./CommandLong.js')
let VehicleInfoGet = require('./VehicleInfoGet.js')
let FileTruncate = require('./FileTruncate.js')
let CommandTriggerControl = require('./CommandTriggerControl.js')
let CommandVtolTransition = require('./CommandVtolTransition.js')
let FileWrite = require('./FileWrite.js')
let CommandTriggerInterval = require('./CommandTriggerInterval.js')
let LogRequestEnd = require('./LogRequestEnd.js')
let CommandAck = require('./CommandAck.js')
let FileRead = require('./FileRead.js')
let CommandBool = require('./CommandBool.js')
let ParamSet = require('./ParamSet.js')
let FileChecksum = require('./FileChecksum.js')
let SetMode = require('./SetMode.js')
let FileRemoveDir = require('./FileRemoveDir.js')
let CommandInt = require('./CommandInt.js')
let MountConfigure = require('./MountConfigure.js')
let WaypointPull = require('./WaypointPull.js')
let WaypointPush = require('./WaypointPush.js')
let FileRemove = require('./FileRemove.js')
let FileMakeDir = require('./FileMakeDir.js')
let CommandHome = require('./CommandHome.js')
let LogRequestList = require('./LogRequestList.js')
let CommandTOL = require('./CommandTOL.js')
let WaypointSetCurrent = require('./WaypointSetCurrent.js')
let ParamPush = require('./ParamPush.js')
let FileRename = require('./FileRename.js')

module.exports = {
  WaypointClear: WaypointClear,
  FileClose: FileClose,
  ParamGet: ParamGet,
  StreamRate: StreamRate,
  ParamPull: ParamPull,
  LogRequestData: LogRequestData,
  MessageInterval: MessageInterval,
  SetMavFrame: SetMavFrame,
  FileList: FileList,
  FileOpen: FileOpen,
  CommandLong: CommandLong,
  VehicleInfoGet: VehicleInfoGet,
  FileTruncate: FileTruncate,
  CommandTriggerControl: CommandTriggerControl,
  CommandVtolTransition: CommandVtolTransition,
  FileWrite: FileWrite,
  CommandTriggerInterval: CommandTriggerInterval,
  LogRequestEnd: LogRequestEnd,
  CommandAck: CommandAck,
  FileRead: FileRead,
  CommandBool: CommandBool,
  ParamSet: ParamSet,
  FileChecksum: FileChecksum,
  SetMode: SetMode,
  FileRemoveDir: FileRemoveDir,
  CommandInt: CommandInt,
  MountConfigure: MountConfigure,
  WaypointPull: WaypointPull,
  WaypointPush: WaypointPush,
  FileRemove: FileRemove,
  FileMakeDir: FileMakeDir,
  CommandHome: CommandHome,
  LogRequestList: LogRequestList,
  CommandTOL: CommandTOL,
  WaypointSetCurrent: WaypointSetCurrent,
  ParamPush: ParamPush,
  FileRename: FileRename,
};
