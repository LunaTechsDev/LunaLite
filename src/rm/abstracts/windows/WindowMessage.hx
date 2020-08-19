package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_Message;

@:forward
@:forwardStatics
abstract WindowMessage(Window_Message) from Window_Message to Window_Message {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  #if compileMV
  this = new Window_Message(x, y, width, height);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_Message(rect);
  #end
 }

 public inline function raw(): Window_Message {
  return this;
 }
}
