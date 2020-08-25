package rm.objects;

import rm.types.RPG.BaseItem;

/**
 * Game_Item
 * The game object class for handling skills, items, weapons. armor.
 * This is required, because the save data should not include the database object itself.
 * @class Game_Item
 */
@:expose("Game_Item")
@:native("Game_Item")
extern class Game_Item {
 @:native("_dataClass")
 public var __dataClass: String;
 private var _dataClass: String;
 @:native("_itemId")
 public var __itemId: Int;
 private var _itemId: Int;

 public function new(item: BaseItem): Void;
 public function initialize(): Void;

 /**
  * Returns true the item is a skill.
  *
  * @returns {boolean}
  * @memberof Game_Item
  */
 public function isSkill(): Bool;

 /**
  * Returns true if the item is an item.
  *
  * @returns {boolean}
  * @memberof Game_Item
  */
 public function isItem(): Bool;

 /**
  * Returns true if the item is a usable item, similar to a potion.
  *
  * @returns {boolean}
  * @memberof Game_Item
  */
 public function isUsableItem(): Bool;

 /**
  * Returns true if the item is a weapon.
  *
  * @returns {boolean}
  * @memberof Game_Item
  */
 public function isWeapon(): Bool;

 /**
  * Returns true if the item is an armor.
  *
  * @returns {boolean}
  * @memberof Game_Item
  */
 public function isArmor(): Bool;

 /**
  * Returns true if the item is equippable (weapon or armor).
  *
  * @returns {boolean}
  * @memberof Game_Item
  */
 public function isEquipItem(): Bool;

 /**
  * Returns true if the item is 'null'.
  *
  * @returns {boolean}
  * @memberof Game_Item
  */
 public function isNull(): Bool;

 /**
  * Returns the current itemId.
  *
  * @returns {number}
  * @memberof Game_Item
  */
 public function itemId(): Int;

 public function object(): BaseItem;

 /**
  * Sets the current item of the current Game_Item object.
  *
  * @param {RPG.BaseItem} item
  * @memberof Game_Item
  */
 public function setObject(item: BaseItem): Void;

 public function setEquip(isWeapon: Bool, itemId: Int): Void;
}
