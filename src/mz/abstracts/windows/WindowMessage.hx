package mz.abstracts.windows;

import mz.windows.Window_Message;

@:forward
@:forwardStatics
abstract WindowMessage(Window_Message) from Window_Message to Window_Message {
 public inline function raw(): Window_Message {
  return this;
 }
}
