package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_BattleLog;

@:forward
@:forwardStatics
abstract WindowBattleLog(Window_BattleLog) from Window_BattleLog
 to Window_BattleLog {
 public inline function new(?x: Int, ?y: Int, ?width: Int, ?height: Int) {
  #if compileMV
  this = new Window_BattleLog();
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_BattleLog(rect);
  #end
 }
}
