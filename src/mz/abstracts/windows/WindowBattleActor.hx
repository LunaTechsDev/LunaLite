package mz.abstracts.windows;

import mz.windows.Window_BattleActor;

@:forward
@:forwardStatics
abstract WindowBattleActor(Window_BattleActor) from Window_BattleActor
 to Window_BattleActor {
 public inline function new(x: Int, y: Int) {
  this = new Window_BattleActor(x, y);
 }
}
