package rm.objects;

import rm.types.RPG;
import rm.types.RPG.BaseItem;
import js.lib.Object;

/**
 * The game object for the party. Contains information
 * such as gold and items.
 */
@:native("Game_Party")
extern class Game_Party extends Game_Unit {
 public static var ABILITY_ENCOUNTER_HALF: Int;
 public static var ABILITY_ENCOUNTER_NONE: Int;
 public static var ABILITY_CANCEL_SURPRISE: Int;
 public static var ABILITY_RAISE_PREEMPTIVE: Int;
 public static var ABILITY_GOLD_DOUBLE: Int;
 public static var ABILITY_DROP_ITEM_DOUBLE: Int;

 private var _gold: Int;
 private var _steps: Int;
 private var _lastItem: Game_Item;
 private var _menuActorId: Int;
 private var _targetActorId: Int;
 private var _actors: Array<Game_Actor>;
 /*For _items, _weapons, _armors {
  [itemId:Int]:Int
  Objects
 };*/
 private var _items: Object;
 private var _weapons: Object;
 private var _armors: Object;

 /**
  * Returns all party members.
  *
  * @returns {Array<Game_Actor>}
  * @memberof Game_Party
  */
 public function members(): Array<Game_Actor>;

 /**
  * Returns the living party members.
  *
  * @returns {Array<Game_Actor>}
  * @memberof Game_Party
  */
 public function aliveMembers(): Array<Game_Actor>;

 /**
  * Returns the dead party members.
  *
  * @returns {Array<Game_Actor>}
  * @memberof Game_Party
  */
 public function deadMembers(): Array<Game_Actor>;

 /**
  * Returns the movable members in the party.
  *
  * @returns {Array<Game_Actor>}
  * @memberof Game_Party
  */
 public function movableMembers(): Array<Game_Actor>;

 /**
  * Returns the battle members in the party.
  *
  * @returns {Array<Game_Actor>}
  * @memberof Game_Party
  */
 public function battleMembers(): Array<Game_Actor>;

 /**
  * Initialize all party items.
  *
  * @memberof Game_Party
  */
 public function initAllItems(): Void;

 /**
  * Returns true if the game party exists.
  *
  * @returns {Bool}
  * @memberof Game_Party
  */
 public function exists(): Bool;

 /**
  * Returns the size of the party.
  *
  * @returns {Int}
  * @memberof Game_Party
  */
 public function size(): Int;

 /**
  * Returns true if the game party is empty.
  *
  * @returns {Bool}
  * @memberof Game_Party
  */
 public function isEmpty(): Bool;

 /**
  * Returns the maximum battle members in the party.
  *
  * @returns {Int}
  * @memberof Game_Party
  */
 public function maxBattleMembers(): Int;

 /**
  * Returns the leader of the party.
  *
  * @returns {Game_Actor}
  * @memberof Game_Party
  */
 public function leader(): Game_Actor;

 /**
  * Revive the battle members of the party.
  *
  * @memberof Game_Party
  */
 public function reviveBattleMembers(): Void;

 public function items(): Array<Item>;

 /**
  * Returns the weapons of the party.
  *
  * @returns {Array<RPG.Weapon>}
  * @memberof Game_Party
  */
 public function weapons(): Array<Weapon>;

 /**
  * Returns the party's armor.
  *
  * @returns {Array<RPG.Armor>}
  * @memberof Game_Party
  */
 public function armors(): Array<Armor>;

 /**
  * Returns the party's equippable items.
  *
  * @returns {Array<RPG.EquipItem>}
  * @memberof Game_Party
  */
 public function equipItems(): Array<EquipItem>;

 /**
  * Returns all items within the party's posession.
  * Items can be of equip item, or item type.
  * @returns {Array<RPG.BaseItem>}
  * @memberof Game_Party
  */
 public function allItems(): Array<BaseItem>;

 public function itemContainer(item: BaseItem): {ItemId: Int};

 /**
  * Sets up the starting party members.
  *
  * @memberof Game_Party
  */
 public function setupStartingMembers(): Void;

 public function name(): String;

 /**
  * Sets up a test battle with the party.
  *
  * @memberof Game_Party
  */
 public function setupBattleTest(): Void;

 /**
  * Sets up the battle test members.
  *
  * @memberof Game_Party
  */
 public function setupBattleTestMembers(): Void;

 /**
  * Sets up the battle test items.
  *
  * @memberof Game_Party
  */
 public function setupBattleTestItems(): Void;

 /**
  * Returns the highest level in the party.
  *
  * @returns {Int}
  * @memberof Game_Party
  */
 public function highestLevel(): Int;

 /**
  * Adds an actor to the party given the actor id.
  *
  * @param {Int} actorId
  * @memberof Game_Party
  */
 public function addActor(actorId: Int): Void;

 /**
  * Removes an actor from the party given the actor id.
  *
  * @param {Int} actorId
  * @memberof Game_Party
  */
 public function removeActor(actorId: Int): Void;

 /**
  * Returns party gold.
  *
  * @returns {Int}
  * @memberof Game_Party
  */
 public function gold(): Int;

 /**
  * Increases the party gold given a specified amount.
  *
  * @param {Int} amount
  * @memberof Game_Party
  */
 public function gainGold(amount: Int): Void;

 /**
  * Decreases the party gold given a specified amount.
  *
  * @param {Int} amount
  * @memberof Game_Party
  */
 public function loseGold(amount: Int): Void;

 /**
  * Returns maximum gold of the party.
  *
  * @returns {Int}
  * @memberof Game_Party
  */
 public function maxGold(): Int;

 /**
  * Returns the Int of steps the party has taken.
  *
  * @returns {Int}
  * @memberof Game_Party
  */
 public function steps(): Int;

 /**
  * Increases the Int of steps the party has taken.
  *
  * @memberof Game_Party
  */
 public function increaseSteps(): Void;

 /**
  * Returns the Int of items in the possession of the party of the
  * given item.
  * @param {RPG.BaseItem} item
  * @returns {Int}
  * @memberof Game_Party
  */
 public function numItems(item: BaseItem): Int;

 /**
  * Returns the maximum Int of items of the given item.
  *
  * @param {RPG.BaseItem} item
  * @returns {Int}
  * @memberof Game_Party
  */
 public function maxItems(item: BaseItem): Int;

 public function hasMaxItems(item: BaseItem): Bool;

 /**
  * Returns true if the party has the given item;
  * if includeEquip is set to true, this will also check party equipment.
  * @param {RPG.BaseItem} item
  * @param {Bool} includeEquip
  * @returns {Bool}
  * @memberof Game_Party
  */
 public function hasItem(item: BaseItem, includeEquip: Bool): Bool;

 /**
  * Returns true if any party member has the specified equip item.
  *
  * @param {RPG.EquipItem} item
  * @returns {Bool}
  * @memberof Game_Party
  */
 public function isAnyMemberEquipped(item: EquipItem): Bool;

 public function gainItem(item: BaseItem, amount: Int,
  includeEquip: Bool): Void;
 public function discardMembersEquip(item: EquipItem, amount: Int): Void;
 public function loseItem(item: BaseItem, amount: Int,
  includeEquip: Bool): Void;

 /**
  * Has the party consume the given item.
  *
  * @param {RPG.BaseItem} item
  * @memberof Game_Party
  */
 public function consumeItem(item: BaseItem): Void;

 /**
  * Returns true if the party can use the item.
  *
  * @param {RPG.BaseItem} item
  * @returns {Bool}
  * @memberof Game_Party
  */
 public function canUse(item: BaseItem): Bool;

 public function canInput(): Bool;

 /**
  * Handler for when the player walks.
  *
  * @memberof Game_Party
  */
 public function onPlayerWalk(): Void;

 /**
  * Returns the actor that will be used in the current menu;
  * this is for menu scenes that target one actor.
  * @returns {Game_Actor}
  * @memberof Game_Party
  */
 public function menuActor(): Game_Actor;

 public function setMenuActor(actor: Game_Actor): Void;
 public function makeMenuActorNext(): Void;
 public function makeMenuActorPrevious(): Void;
 public function targetActor(): Game_Actor;
 public function setTargetActor(actor: Game_Actor): Void;

 /**
  * Returns the last item selected by the game party.
  *
  * @returns {RPG.BaseItem}
  * @memberof Game_Party
  */
 public function lastItem(): BaseItem;

 public function setLastItem(item: BaseItem): Void;
 public function swapOrder(index1: Int, index2: Int): Void;

 /**
  * Returns the characters that go on the save life.
  *
  * @returns {Array<Array<any>>}
  * @memberof Game_Party
  */
 public function charactersForSavefile(): Array<Array<Any>>;

 /**
  * Returns the actor faces for the save file.
  *
  * @returns {Array<Array<any>>}
  * @memberof Game_Party
  */
 public function facesForSavefile(): Array<Array<Any>>;

 public function partyAbility(abilityId: Int): Bool;

 /**
  * Returns true if the encounter rate is set to half.
  *
  * @returns {Bool}
  * @memberof Game_Party
  */
 public function hasEncounterHalf(): Bool;

 /**
  * Returns true if the encounter rate is set to none.
  *
  * @returns {Bool}
  * @memberof Game_Party
  */
 public function hasEncounterNone(): Bool;

 public function hasCancelSurprise(): Bool;

 /**
  * Returns true if the party has an increased chance of preemptive strike.
  *
  * @returns {Bool}
  * @memberof Game_Party
  */
 public function hasRaisePreemptive(): Bool;

 /**
  * Returns true if the party has double gold in effect.
  *
  * @returns {Bool}
  * @memberof Game_Party
  */
 public function hasGoldDouble(): Bool;

 public function hasDropItemDouble(): Bool;
 public function ratePreemptive(troopAgi: Int): Int;
 public function rateSurprise(troopAgi: Int): Int;

 /**
  * Performs victory motion for the entire party.
  *
  * @memberof Game_Party
  */
 public function performVictory(): Void;

 /**
  * Performs escape motion for the entire party.
  *
  * @memberof Game_Party
  */
 public function performEscape(): Void;

 /**
  * Remove battle states from all actors in the party.
  *
  * @memberof Game_Party
  */
 public function removeBattleStates(): Void;

 /**
  * Refreshes the motion on all actors in the party.
  *
  * @memberof Game_Party
  */
 public function requestMotionRefresh(): Void;
}
