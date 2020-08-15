package mz.abstracts.windows;

import mz.windows.Window_BattleEnemy;

@:forward
@:forwardStatics
abstract WindowBattleEnemy(Window_BattleEnemy) from Window_BattleEnemy
 to Window_BattleEnemy {
 public inline function new(x: Int, y: Int) {
  this = new Window_BattleEnemy(x, y);
 }
}
