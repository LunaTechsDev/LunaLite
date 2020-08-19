package rm.abstracts.windows;

import rm.windows.Window_GameEnd;

@:forward
@:forwardStatics
abstract WindowGameEnd(Window_GameEnd) from Window_GameEnd to Window_GameEnd {
 public inline function new() {
  this = new Window_GameEnd();
 }

 public inline function raw(): Window_GameEnd {
  return this;
 }
}
