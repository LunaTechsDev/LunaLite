package mz.abstracts.windows;

import mz.core.Rectangle;
import mz.windows.Window_Command;

@:forward
@:forwardStatics
abstract WindowCommand(Window_Command) from Window_Command to Window_Command {
 public inline function new(x: Int, y: Int) {
  #if compileMV
  this = new Window_Command(x, y);
  #else
  var rect = new Rectangle(x, y);
  this = new Window_Command(rect);
  #end
 }

 public inline function raw(): Window_Command {
  return this;
 }
}
