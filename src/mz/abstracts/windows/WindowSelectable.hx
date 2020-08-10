package mz.abstracts.windows;

import mz.windows.Window_Selectable;

@:forward
@:forwardStatics
abstract WindowSelectable(Window_Selectable) {
 public inline function raw(): Window_Selectable {
  return this;
 }
}
