package mz.abstracts.windows;

import mz.windows.Window_HorzCommand;

@:forward
@:forwardStatics
abstract WindowHorzCommand(Window_HorzCommand) {
 public inline function raw(): Window_HorzCommand {
  return this;
 }
}
