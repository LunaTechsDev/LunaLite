package mz.abstracts.windows;

import mz.objects.Game_Actor;
import mz.windows.Window_NameEdit;

@:forward
@:forwardStatics
abstract WindowNameEdit(Window_NameEdit) from Window_NameEdit
 to Window_NameEdit {
 public inline function new(actor: Game_Actor, maxLength: Int) {
  this = new Window_NameEdit(actor, maxLength);
 }
}
