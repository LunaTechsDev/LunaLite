package mz.abstracts.windows;

import mz.windows.Window_Base;

@:forward
@:forwardStatics
abstract WindowBase(Window_Base) {
 public inline function raw(): Window_Base {
  return this;
 }
}
