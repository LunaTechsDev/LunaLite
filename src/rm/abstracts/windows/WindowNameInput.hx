package rm.abstracts.windows;

import rm.windows.Window_NameEdit;
import rm.windows.Window_NameInput;

@:forward
@:forwardStactics
abstract WindowNameInput(Window_NameInput) from Window_NameInput
 to Window_NameInput {
 public inline function new(windowNameEdit: Window_NameEdit) {
  this = new Window_NameInput(windowNameEdit);
 }
}
