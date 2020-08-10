package mz.abstracts.windows;

import mz.windows.Window_MenuStatus;

@forward
@:forwardStatics
abstract WindowMenuStatus(Window_MenuStatus) from Window_MenuStatus
 to Window_MenuStatus {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  this = new Window_MenuStatus(x, y, width, height);
 }

 public inline function raw(): Window_MenuStatus {
  return this;
 }
}
