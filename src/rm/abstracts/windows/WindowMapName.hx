package rm.abstracts.windows;

import rm.windows.Window_MapName;

@:forward
@:forwardStatics
abstract WindowMapName(Window_MapName) from Window_MapName to Window_MapName {
 public inline function new() {
  this = new Window_MapName();
 }

 public inline function raw(): Window_MapName {
  return this;
 }
}
