package mz.abstracts.windows;

import mz.windows.Window_Message;

@:forward
@:forwardStatics
abstract WindowMessage(Window_Message) {
 public inline function raw(): Window_Message {
  return this;
 }
}
