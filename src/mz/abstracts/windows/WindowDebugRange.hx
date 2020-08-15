package mz.abstracts.windows;

import mz.windows.Window_DebugRange;

@:forward
@:forwardStatics
abstract WindowDebugRange(Window_DebugRange) from Window_DebugRange
 to Window_DebugRange {
 public inline function new(x: Int, y: Int) {
  this = new Window_DebugRange(x, y);
 }
}
