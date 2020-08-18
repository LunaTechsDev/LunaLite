package mz.abstracts.windows;

import mz.core.Rectangle;
import mz.windows.Window_BattleActor;

@:forward
@:forwardStatics
abstract WindowBattleActor(Window_BattleActor) from Window_BattleActor
 to Window_BattleActor {
 public inline function new(x: Int, y: Int) {
  #if compileMV
  this = new Window_BattleActor(x, y);
  #else
  var rect = new Rectangle(x, y);
  this = new Window_BattleActor(rect);
  #end
 }
}
