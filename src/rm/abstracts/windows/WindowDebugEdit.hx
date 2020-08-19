package rm.abstracts.windows;

import rm.windows.Window_DebugEdit;

@:forward
@:forwardStatics
abstract WindowDebugEdit(Window_DebugEdit) from Window_DebugEdit
 to Window_DebugEdit {
 public inline function new(x: Int, y: Int, width: Int) {
  this = new Window_DebugEdit(x, y, width);
 }
}
