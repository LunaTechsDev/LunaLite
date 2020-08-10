package mz.abstracts.windows;

import mz.windows.Window_Message;
import mz.windows.Window_NumberInput;

@:forward
@:forwardStatics
abstract WindowNumberInput(Window_NumberInput) from Window_NumberInput
 to Window_NumberInput {
 public inline function new(messageWindow: Window_Message) {
  this = new Window_NumberInput(messageWindow);
 }
}
