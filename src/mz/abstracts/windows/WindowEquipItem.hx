package mz.abstracts.windows;

import mz.windows.Window_EquipItem;

@:forward
@:forwardStatics
abstract WindowEquipItem(Window_EquipItem) {
 public inline function raw(): Window_EquipItem {
  return this;
 }
}
