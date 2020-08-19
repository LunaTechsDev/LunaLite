package rm.abstracts.windows;

import rm.windows.Window_SavefileList;

@:forward
@:forwardStatics
abstract WindowSavefileList(Window_SavefileList) from Window_SavefileList
 to Window_SavefileList {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  this = new Window_SavefileList(x, y, width, height);
 }
}
