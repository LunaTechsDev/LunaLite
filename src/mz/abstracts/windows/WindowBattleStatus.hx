package mz.abstracts.windows;

import mz.windows.Window_BattleStatus;

@:forward
@:forwardStatics
abstract WindowBattleStatus(Window_BattleStatus) from Window_BattleStatus
 to Window_BattleStatus {
 public inline function new() {
  this = new Window_BattleStatus();
 }
}
