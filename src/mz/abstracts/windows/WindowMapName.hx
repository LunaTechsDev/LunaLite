package mz.abstracts.windows;

import mz.windows.Window_MapName;

@:forward
@:forwardStatics
abstract WindowMapName(Window_MapName) {
 public inline function raw(): Window_MapName {
  return this;
 }
}
