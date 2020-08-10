package mz.abstracts.windows;

import mz.windows.Window_Selectable;

@:forward
@:forwardStatics
abstract WindowSelectable(Window_Selectable) from Window_Selectable
 to Window_Selectable {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  this = new Window_Selectable(x, y, width, height);
 }

 public inline function raw(): Window_Selectable {
  return this;
 }
}
