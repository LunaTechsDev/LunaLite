package mz.abstracts.windows;

import mz.windows.Window_ShopNumber;

@:forward
@:forwardStatics
abstract WindowShopNumber(Window_ShopNumber) from Window_ShopNumber
 to Window_ShopNumber {
 public inline function new(x: Int, y: Int, height: Int) {
  this = new Window_ShopNumber(x, y, height);
 }
}
