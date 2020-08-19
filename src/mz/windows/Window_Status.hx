package mz.windows;

import mz.objects.Game_Actor;
import mz.types.RPG;

@:native("Window_Status")
extern class Window_Status extends Window_Selectable {
 private var _actor: Game_Actor;
 private var _stypeId: Int;
 private var _data: Array<Skill>;

 public function new(x: Int, y: Int, width: Int, height: Int);

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
 public function setStypeId(stypeId: Int): Void;

 /**
  * Returns the current skill from the databse.
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
