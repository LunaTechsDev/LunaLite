package rm.windows;

import rm.types.RPG.Item;
import rm.core.Rectangle;

@:expose("Window_ItemList")
@:native("Window_ItemList")
extern class Window_ItemList extends Window_Selectable {
 private var _category: String;

 #if compileMV
 public function new(x: Int, y: Int, width: Int, height: Int);
 public function initialize(x: Int, y: Int, width: Int, height: Int): Void;
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;

 /**
  * Returns the item at the current index of the window.
  * @return Item
  */
 public function item(): Item;

 /**
  * Returns item at the specific index.
  * @return Null<Item>
  */
 public function itemAt(): Null<Item>;
 #end

 public function needsNumber(): Bool;

 public function selectLast(): Void;

 public function makeItemList(): Void;

 public function numberWidth(): Int;
}
