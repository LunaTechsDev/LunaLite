package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_Base;

@:forward
@:forwardStatics
abstract WindowBase(Window_Base) from Window_Base to Window_Base {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  #if compileMV
  this = new Window_Base(x, y, width, height);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_Base(rect);
  #end
 }

 public inline function raw(): Window_Base {
  return this;
 }

 public inline function destroyContents(): Void {
  #if compileMZ
  this.destroyContents();
  #else
  #end
 }
}
