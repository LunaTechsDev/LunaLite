package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_BattleSkill;

@:forward
@:forwardStatics
abstract WindowBattleSkill(Window_BattleSkill) from Window_BattleSkill
 to Window_BattleSkill {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  #if compileMV
  this = new Window_BattleSkill(x, y, width, height);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_BattleSkill(rect);
  #end
 }
}
