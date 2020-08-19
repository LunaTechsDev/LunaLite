package rm.abstracts.windows;

import rm.windows.Window_ShopStatus;

@:forward
@:forwardStatics
abstract WindowShopStatus(Window_ShopStatus) from Window_ShopStatus
 to Window_ShopStatus {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  this = new Window_ShopStatus(x, y, width, height);
 }
}
