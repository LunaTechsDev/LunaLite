package mz.abstracts.windows;

import mz.windows.Window_Options;

@:forward
@:forwardStatics
abstract WindowOptions(Window_Options) {
 public inline function raw(): Window_Options {
  return this;
 }
}
