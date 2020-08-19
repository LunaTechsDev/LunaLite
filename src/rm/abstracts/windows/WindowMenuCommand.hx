package rm.abstracts.windows;

import rm.windows.Window_MenuCommand;

@:forward
@:forwardStatics
abstract WindowMenuCommand(Window_MenuCommand) from Window_MenuCommand
 to Window_MenuCommand {
 public inline function raw(): Window_MenuCommand {
  return this;
 }
}
