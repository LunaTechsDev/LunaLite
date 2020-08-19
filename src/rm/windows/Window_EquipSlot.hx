package rm.windows;

import rm.types.RPG.EquipItem;
import rm.objects.Game_Actor;

/**
 * -----------------------------------------------------------------------------
 * Window_EquipSlot
 *
 * The window for selecting an equipment slot on the equipment screen.
 * @class Window_EquipSlot
 */
@:native("Window_EquipSlot")
extern class Window_EquipSlot extends Window_Selectable {
 private var _actor: Game_Actor;
 private var _itemWindow: Window_EquipItem;
 private var _statusWindow: Window_EquipStatus;

 public function new(x: Int, y: Int, width: Int, height: Int): Void;
 public function initialize(x: Int, y: Int, width: Int, height: Int): Void;

 /**
  * Sets the current game actor.
  *
  * @param {Game_Actor} actor
  * @memberof Window_EquipSlot
  */
 public function setActor(actor: Game_Actor): Void;

 /**
  * Returns the current equip item.
  *
  * @returns {RPG.EquipItem}
  * @memberof Window_EquipSlot
  */
 public function item(): EquipItem;

 /**
  * Returns the name of the slot at the specified index.
  *
  * @param {number} index
  * @returns {string}
  * @memberof Window_EquipSlot
  */
 public function slotName(index: Int): String;

 /**
  * Returns true if the current slot is enabled.
  *
  * @param {number} index
  * @returns {boolean}
  * @memberof Window_EquipSlot
  */
 public function isEnabled(index: Int): Bool;

 /**
  * Sets the status window within the equip slot window.
  *
  * @param {Window_EquipStatus} statusWindow
  * @memberof Window_EquipSlot
  */
 public function setStatusWindow(statusWindow: Window_EquipStatus): Void;

 /**
  * Sets the item window within the equip slot window.
  *
  * @param {Window_EquipItem} itemWindow
  * @memberof Window_EquipSlot
  */
 public function setItemWindow(itemWindow: Window_EquipItem): Void;
}
