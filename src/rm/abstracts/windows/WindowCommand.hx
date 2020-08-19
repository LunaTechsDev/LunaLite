package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_Command;

@:forward
@:forwardStatics
abstract WindowCommand(Window_Command) from Window_Command to Window_Command {
 /**
  * Creates a new Window_Command.
  * Takes x, y, width, height.
  * Width and height are optional and for rm.
  * @param x
  * @param y
  * @param width
  * @param height
  */
 public inline function new(x: Int, y: Int, ?width: Int, ?height: Int) {
  #if compileMV
  this = new Window_Command(x, y);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_Command(rect);
  #end
 }

 public inline function raw(): Window_Command {
  return this;
 }
}
