package mz.abstracts.windows;

import mz.core.Rectangle;
import mz.windows.Window_Selectable;

@:forward
@:forwardStatics
abstract WindowSelectable(Window_Selectable) from Window_Selectable
 to Window_Selectable {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  #if compileMV
  this = new Window_Selectable(x, y, width, height);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_Selectable(rect);
  #end
 }

 public inline function raw(): Window_Selectable {
  return this;
 }
}
