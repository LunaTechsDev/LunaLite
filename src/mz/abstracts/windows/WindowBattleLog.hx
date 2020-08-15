package mz.abstracts.windows;

import mz.windows.Window_BattleLog;

@:forward
@:forwardStatics
abstract WindowBattleLog(Window_BattleLog) from Window_BattleLog
 to Window_BattleLog {
 public inline function new() {
  this = new Window_BattleLog();
 }
}
