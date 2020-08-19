package rm.windows;

import rm.core.Rectangle;
import rm.types.RPG.UsableItem;

/**
 * -----------------------------------------------------------------------------
 * Window_BattleItem
 *
 * The window for selecting an item to use on the battle screen.
 * @class Window_BattleItem
 */
@:native("Window_BattleItem")
extern class Window_BattleItem extends Window_ItemList {
 #if compileMV
 public function new(x: Int, y: Int, width: Int, height: Int);
 public function initialize(x: Int, y: Int, width: Int, height: Int): Void;
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;
 #end

 public function includes(item: UsableItem): Bool;
}
