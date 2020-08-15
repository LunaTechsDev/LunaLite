package mz.abstracts.windows;

import mz.windows.Window_BattleSkill;

@:forward
@:forwardStatics
abstract WindowBattleSkill(Window_BattleSkill) from Window_BattleSkill
 to Window_BattleSkill {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  this = new Window_BattleSkill(x, y, width, height);
 }
}
