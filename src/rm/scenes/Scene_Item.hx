package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_ItemCategory;

/**
 * -----------------------------------------------------------------------------
 * Scene_Item
 *
 * The scene class of the item screen.
 * @class Scene_Item
 * @extends {Scene_ItemBase}
 */
@:expose("Scene_Item")
@:native("Scene_Item")
extern class Scene_Item extends Scene_ItemBase {
 private var _categoryWindow: Window_ItemCategory;

 #if !compileMV
 public function categoryWindowRect(): Rectangle;
 public function itemWindowRect(): Rectangle;
 #end

 /**
  * Creates the category window on the
  * item scene.
  * @memberof Scene_Item
  */
 public function createCategoryWindow(): Void;

 /**
  * Creates the item window on the item
  * scene.
  * @memberof Scene_Item
  */
 public function createItemWindow(): Void;

 /**
  * Handler for when a cataegory is selected
  * on the item scene.
  * @memberof Scene_Item
  */
 public function onCategoryOk(): Void;

 /**
  * Handler for when an item is selected
  * on the item scene.
  * @memberof Scene_Item
  */
 public function onItemOk(): Void;

 /**
  * Handler for when an item selection
  * is canceled on the item scene.
  * @memberof Scene_Item
  */
 public function onItemCancel(): Void;

 /**
  * Plays a sound effect when the
  * item is confirmed.
  * @memberof Scene_Item
  */
 public function playSeForItem(): Void;
}
