package mz.abstracts.windows;

import mv.windows.Window_ChoiceList;

@:forward
@:forwardStatics
abstract WindowChoiceList(Window_ChoiceList) {
 public inline function raw(): Window_Base {
  return this;
 }
}
