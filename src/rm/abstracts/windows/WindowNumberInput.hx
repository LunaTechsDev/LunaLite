package rm.abstracts.windows;

import rm.windows.Window_Message;
import rm.windows.Window_NumberInput;

@:forward
@:forwardStatics
abstract WindowNumberInput(Window_NumberInput) from Window_NumberInput
 to Window_NumberInput {
 public inline function new(messageWindow: Window_Message) {
  this = new Window_NumberInput(messageWindow);
 }
}
