package mz.abstracts.windows;

import mz.windows.Window_TitleCommand;

@:forward
@:forwardStatics
abstract WindowTitleCommand(Window_TitleCommand) {
 public inline function raw(): Window_TitleCommand {
  return this;
 }
}
