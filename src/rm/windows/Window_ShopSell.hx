package rm.windows;

import rm.types.RPG.BaseItem;

/**
 * -----------------------------------------------------------------------------
 * Window_ShopSell
 *
 * The window for selecting an item to sell on the shop screen.
 * @class Window_ShopSell
 */
@:expose("Window_ShopSell")
@:native("Window_ShopSell")
extern class Window_ShopSell extends Window_ItemList {
 public function new(x: Int, y: Int, width: Int, height: Int);

 /**
  * Determines if the item is sellable, otherwise, greyed out.
  *
  * @param {RPG.BaseItem} item
  * @returns {boolean}
  * @memberof Window_ShopSell
  */
 public function isEnabled(item: BaseItem): Bool;
}
