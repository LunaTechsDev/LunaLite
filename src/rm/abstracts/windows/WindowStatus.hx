package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_Status;

@:forward
@:forwardStatics
abstract WindowStatus(Window_Status) from Window_Status to Window_Status {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  #if compileMV
  this = new Window_Status(x, y, width, height);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_Status(rect);
  #end
 }

 public inline function raw(): Window_Status {
  return this;
 }
}
