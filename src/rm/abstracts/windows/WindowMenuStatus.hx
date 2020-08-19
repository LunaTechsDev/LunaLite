package rm.abstracts.windows;

import rm.windows.Window_MenuStatus;

@forward
@:forwardStatics
abstract WindowMenuStatus(Window_MenuStatus) from Window_MenuStatus
 to Window_MenuStatus {
 public inline function new(x: Int, y: Int) {
  this = new Window_MenuStatus(x, y);
 }

 public inline function raw(): Window_MenuStatus {
  return this;
 }
}
