package mz.abstracts.windows;

import mz.windows.Window_Base;

@:forward
@:forwardStatics
abstract WindowBase(Window_Base) from Window_Base to Window_Base {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  this = new Window_Base(x, y, width, height);
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
