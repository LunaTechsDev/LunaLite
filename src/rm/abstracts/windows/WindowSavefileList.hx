package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_SavefileList;

@:forward
@:forwardStatics
abstract WindowSavefileList(Window_SavefileList) from Window_SavefileList
 to Window_SavefileList {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  #if compileMV
  this = new Window_SavefileList(x, y, width, height);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_SavefileList(rect);
  #end
 }
}
