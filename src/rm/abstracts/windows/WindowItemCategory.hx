package rm.abstracts.windows;

import rm.windows.Window_ItemCategory;

@:forward
@:forwardStatics
abstract WindowItemCategory(Window_ItemCategory) from Window_ItemCategory
 to Window_ItemCategory {
 public inline function new(x: Int, y: Int) {
  this = new Window_ItemCategory(x, y);
 }
}
