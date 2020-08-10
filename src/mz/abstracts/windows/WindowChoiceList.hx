package mz.abstracts.windows;

import mv.windows.Window_ChoiceList;

@:forward
@:forwardStatics
abstract WindowChoiceList(Window_ChoiceList) from Window_ChoiceList
 to Window_ChoiceList {
 public inline function new() {
  this = new Window_ChoiceList();
 }

 public inline function raw(): Window_Base {
  return this;
 }
}
