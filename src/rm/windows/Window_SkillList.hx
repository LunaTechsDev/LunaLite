package rm.windows;

import rm.types.RPG.Item;
import rm.core.Rectangle;
import rm.objects.Game_Actor;
import rm.types.LunaTea.SkillTypeId;
import rm.types.RPG.Skill;

/**
 * -----------------------------------------------------------------------------
 * Window_SkillList
 *
 * The window for selecting a skill on the skill screen.
 * @class Window_SkillList
 */
@:expose("Window_SkillList")
@:native("Window_SkillList")
extern class Window_SkillList extends Window_Selectable {
 @:native("_actor")
 public var __actor: Game_Actor;
 private var _actor: Game_Actor;
 @:native("_stypeId")
 public var __stypeId: SkillTypeId;
 private var _stypeId: SkillTypeId;
 @:native("_data")
 public var __data: Array<Skill>;
 private var _data: Array<Skill>;

 #if compileMV
 public function new(x: Int, y: Int, witth: Int, height: Int);

 public function initialize(x: Int, y: Int, width: Int, height: Int): Void;
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;

 /**
  * Returns skill at the specified index.
  * @param index
  * @return Null<Skill>
  */
 public function itemAt(index: Int): Null<Skill>;
 #end

 /**
  * Sets the current actor of the skill list window.
  *
  * @param {Game_Actor} actor
  * @memberof Window_SkillList
  */
 public function setActor(actor: Game_Actor): Void;

 /**
  * Sets the skill type id of the skill list window.
  *
  * @param {number} stypeId
  * @memberof Window_SkillList
  */
 public function setStypeId(stypeId: SkillTypeId): Void;

 /**
  * Returns the current skill at the window index
  * loaded from the databse.
  *
  * @returns {RPG.Skill}
  * @memberof Window_SkillList
  */
 public function item(): Skill;

 /**
  * Returns true if the given skill is included.
  *
  * @param {RPG.Skill} item
  * @returns {boolean}
  * @memberof Window_SkillList
  */
 public function includes(item: Skill): Bool;

 /**
  * Returns true if the given skill is enabled.
  *
  * @param {RPG.Skill} item
  * @returns {boolean}
  * @memberof Window_SkillList
  */
 public function isEnabled(item: Skill): Bool;

 /**
  * Creates the item list.
  *
  * @memberof Window_SkillList
  */
 public function makeItemList(): Void;

 public function selectLast(): Void;
 public function costWidth(): Int;
 public function drawSkillCost(skill: Skill, x: Int, y: Int, width: Int): Void;
}
