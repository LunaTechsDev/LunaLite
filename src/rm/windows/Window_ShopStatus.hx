package rm.windows;

import rm.types.RPG.BaseItem;
import rm.objects.Game_Actor;
import rm.types.LunaTea.ParameterId;
import rm.types.RPG.EquipItem;
import rm.types.LunaTea.EquipTypeId;

/**
 * -----------------------------------------------------------------------------
 * Window_ShopStatus
 *
 * The window for displaying number of items in possession and the actor's
 * equipment on the shop screen.
 * @class Window_ShopStatus
 */
extern class Window_ShopStatus extends Window_Base {
 private var _item: BaseItem;
 private var _pageIndex: Int;

 /**
  * Creates an instance of Window_ShopStatus.
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @param {number} height
  * @memberof Window_ShopStatus
  */
 public function new(x: Int, y: Int, width: Int, height: Int);

 /**
  * Refreshes the window contents.
  *
  * @memberof Window_ShopStatus
  */
 public function refresh(): Void;

 /**
  * Sets the item in the window shop status for display.
  */
 public function setItem(item: BaseItem): Void;

 /**
  * Returns true if the item in the
  * shop status window is an equippable item.
  */
 public function isEquipItem(): Bool;

 public function drawPossession(x: Int, y: Int): Void;

 /**
  * Draw Equip Information.
  */
 public function drawEquipInfo(x: Int, y: Int): Void;

 public function statusMembers(): Array<Game_Actor>;

 /**
  * Returns the page size.
  *
  * @returns {number}
  * @memberof Window_ShopStatus
  */
 public function pageSize(): Int;

 /**
  * Returns the max number of pages.
  *
  * @returns {number}
  * @memberof Window_ShopStatus
  */
 public function maxPages(): Int;

 public function drawActorEquipInfo(x: Int, y: Int, actor: Game_Actor): Void;

 public function drawActorParamChange(x: Int, y: Int, actor: Game_Actor,
  item1: EquipItem): Void;

 /**
  * Returns the parameter id.
  *
  * @returns {number}
  * @memberof Window_ShopStatus
  */
 public function paramId(): ParameterId;

 /**
  * Returns the current item equiped by the given actor when
  * the respective equipment Id is passed.
  * @param {Game_Actor} actor
  * @param {number} etypeId
  * @returns {RPG.EquipItem}
  * @memberof Window_ShopStatus
  */
 public function currentEquippedItem(actor: Game_Actor,
  etypeId: EquipTypeId): EquipItem;

 /**
  * Updates the current page.
  *
  * @memberof Window_ShopStatus
  */
 public function updatePage(): Void;

 /**
  * Determines if page can be changed.
  *
  * @returns {boolean}
  * @memberof Window_ShopStatus
  */
 public function isPageChangeEnabled(): Bool;

 public function isPageChangeRequested(): Bool;

 /**
  * Determines if the window is touched within it's frame.
  *
  * @returns {boolean}
  * @memberof Window_ShopStatus
  */
 public function isTouchedInsideFrame(): Bool;

 /**
  * Changes the current page.
  *
  * @memberof Window_ShopStatus
  */
 public function changePage(): Void;
}
