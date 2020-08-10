package mz.abstracts.windows;

import mz.windows.Window_Command;

@:forward
@:forwardStatics
abstract WindowCommand(Window_Command) {
 public inline function raw(): Window_Command {
  return this;
 }
}
