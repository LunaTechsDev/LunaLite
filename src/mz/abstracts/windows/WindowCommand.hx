package mz.abstracts.windows;

import mz.windows.Window_Command;

@:forward
@:forwardStatics
abstract WindowCommand(Window_Command) from Window_Command to Window_Command {
 public inline function new(x: Int, y: Int) {
  this = new Window_Command(x, y);
 }

 public inline function raw(): Window_Command {
  return this;
 }
}
