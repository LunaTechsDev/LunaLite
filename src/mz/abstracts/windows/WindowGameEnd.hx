package mz.abstracts.windows;

import mz.windows.Window_GameEnd;

@:forward
@:forwardStatics
abstract WindowGameEnd(Window_GameEnd) {
 public inline function raw(): Window_GameEnd {
  return this;
 }
}
