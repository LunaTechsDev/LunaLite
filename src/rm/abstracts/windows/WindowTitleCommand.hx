package rm.abstracts.windows;

import rm.windows.Window_TitleCommand;

@:forward
@:forwardStatics
abstract WindowTitleCommand(Window_TitleCommand) from Window_TitleCommand
 to Window_TitleCommand {
 public inline function raw(): Window_TitleCommand {
  return this;
 }
}
