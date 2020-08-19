package rm.abstracts.windows;

import rm.windows.Window_EquipItem;

@:forward
@:forwardStatics
abstract WindowEquipItem(Window_EquipItem) from Window_EquipItem
 to Window_EquipItem {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  this = new Window_EquipItem(x, y, width, height);
 }

 public inline function raw(): Window_EquipItem {
  return this;
 }
}
