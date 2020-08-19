package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_BattleItem;

@:forward
@:forwardStatics
abstract WindowBattleItem(Window_BattleItem) from Window_BattleItem
 to Window_BattleItem {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  #if compileMV
  this = new Window_BattleItem(x, y, width, height);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_BattleItem(rect);
  #end
 }
}
