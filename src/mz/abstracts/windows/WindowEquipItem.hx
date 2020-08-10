package mz.abstracts.windows;

import mz.windows.Window_EquipItem;

@:forward
@:forwardStatics
abstract WindowEquipItem(Window_EquipItem) from Window_EquipItem
 to Window_EquipItem {
 public inline function new() {
  this = new Window_EquipItem();
 }

 public inline function raw(): Window_EquipItem {
  return this;
 }
}
