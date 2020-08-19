package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_BattleStatus;

@:forward
@:forwardStatics
abstract WindowBattleStatus(Window_BattleStatus) from Window_BattleStatus
 to Window_BattleStatus {
 public inline function new(?x: Int, ?y: Int, ?width: Int, ?height: Int) {
  #if compileMV
  this = new Window_BattleStatus();
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_BattleStatus(rect);
  #end
 }
}
