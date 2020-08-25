package rm.windows;

import rm.core.Rectangle;
import rm.objects.Game_Actor;
import rm.types.RPG;

@:expose("Window_Status")
@:native("Window_Status")
#if compileMV
extern class Window_Status extends Window_Selectable {
#else
extern class Window_Status extends Window_StatusBase {
#end
private var _actor: Game_Actor;
private var _stypeId: Int;
private var _data: Array<Skill>;
#if compileMV
public function new(x: Int, y: Int, width: Int, height: Int);
public function initialize(x: Int, y: Int, width: Int, height: Int): Void;

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
#else
public function new(rect: Rectangle);
public function initialize(rect: Rectangle): Void;

/**
 * Returns the Y value for block1.
 * Defaults to 0.
 * @return Int
 */
public function block1Y(): Int;

/**
 * Draws the basic info and exp info as a block.
 * ```js
 * const y = this.block2Y();
 * this.drawActorFace(this._actor, 12, y);
 * this.drawBasicInfo(204, y);
 * this.drawExpInfo(456, y);
 * ```
 */
public function drawBlock2(): Void;

/**
 * Returns the Y value for block2.
 * This is based on the lineHeight.
 * ```js
 * const lineHeight = this.lineHeight();
 * const min = lineHeight;
 * const max = this.innerHeight - lineHeight * 4;
 * return Math.floor((lineHeight * 1.4).clamp(min, max));
 * ```
 * @return Int
 */
public function block2Y(): Int;

/**
 * Draws the basic info such as
 * actor level, icons and guages
 * at the specified x and y coordinates.
 * @param x
 * @param y
 */
public function drawBasicInfo(x: Int, y: Int): Void;

/**
 * Draws the experience info
 * at the specified x and y coordinates.
 * @param x
 * @param y
 */
public function drawExpInfo(x: Int, y: Int): Void;

/**
 * Returns the exp total value as a string otherwise
 * returns "-------".
 * @return String
 */
public function expTotalValue(): String;

/**
 * Returns the exp next value as a string
 * otherise returns "-------".
 * @return String
 */
public function expNextValue(): String;
#end

/**
 * Sets the current actor of the skill list window.
 *
 * @param {Game_Actor} actor
 * @memberof Window_SkillList
 */
public function setActor(actor: Game_Actor): Void;
}
