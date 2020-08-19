package rm.abstracts.windows;

import rm.windows.Window_Options;

@:forward
@:forwardStatics
abstract WindowOptions(Window_Options) from Window_Options to Window_Options {
 public inline function new() {
  this = new Window_Options();
 }

 public inline function raw(): Window_Options {
  return this;
 }
}
