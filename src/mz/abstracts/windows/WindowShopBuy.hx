package mz.abstracts.windows;

@:forward
@:forwardStatics
abstract WindowShopBuy(Window_ShopBuy) from Window_ShopBuy to Window_ShopBuy {
 public inline function new() {
  this = new Window_ShopBuy();
 }
}
