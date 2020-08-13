package mz.abstracts.windows;

import mz.windows.Window_Message;
import mz.windows.Window_ChoiceList;

@:forward
@:forwardStatics
abstract WindowChoiceList(Window_ChoiceList) from Window_ChoiceList
 to Window_ChoiceList {
 public inline function new(messageWindow: Window_Message) {
  this = new Window_ChoiceList(messageWindow);
 }

 public inline function raw(): Window_ChoiceList {
  return this;
 }
}
