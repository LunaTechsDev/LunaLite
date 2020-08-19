package rm.abstracts.windows;

import rm.windows.Window_Message;

@:forward
@:forwardStatics
abstract WindowMessage(Window_Message) from Window_Message to Window_Message {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  this = new Window_Message(x, y, width, height);
 }

 public inline function raw(): Window_Message {
  return this;
 }
}
