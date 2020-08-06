package mv.windows;

import mv.types.RPG.UsableItem;

/**
 * -----------------------------------------------------------------------------
 * Window_BattleItem
 *
 * The window for selecting an item to use on the battle screen.
 * @class Window_BattleItem
 */
@:native("Window_BattleItem")
extern class Window_BattleItem extends Window_ItemList {
 public function new(x: Int, y: Int, width: Int, height: Int);

 public function includes(item: UsableItem): Bool;
}
