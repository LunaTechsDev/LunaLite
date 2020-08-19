package mz.abstracts.windows;

import mz.core.Rectangle;
import mz.windows.Window_StatusBase;

#if !compileMV
abstract WindowStatusBase(Window_StatusBase) from Window_StatusBase
 to Window_StatusBase {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  var rect = new Rectangle(x, y, width, height);
  this = new Window_StatusBase(rect);
 }
}
#else
#end
