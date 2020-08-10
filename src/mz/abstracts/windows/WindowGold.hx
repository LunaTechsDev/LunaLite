package mz.abstracts.windows;

import mz.windows.Window_Gold;

@:forward
@:forwardStatics
abstract WindowGold(Window_Gold) {
 public inline function raw(): Window_Gold {
  return this;
 }
}
