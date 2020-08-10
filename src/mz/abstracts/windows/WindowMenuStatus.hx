package mz.abstracts.windows;

import mz.windows.Window_MenuStatus;

@forward
@:forwardStatics
abstract WindowMenuStatus(Window_MenuStatus) {
 public inline function raw(): Window_MenuStatus {
  return this;
 }
}
