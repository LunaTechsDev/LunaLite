package rm.windows;

import rm.objects.Game_Actor;

/**
 * -----------------------------------------------------------------------------
 * Window_SkillType
 *
 * The window for selecting a skill type on the skill screen.
 * @class Window_SkillType
 */
@:native("Window_SkillType")
extern class Window_SkillType extends Window_Command {
 /**
  * The current game actor attached to the window.
  *
  * @protected
  * @type {Game_Actor}
  * @memberof Window_SkillType
  */
 private var _actor: Game_Actor;

 /**
  * The current skill window attached to the window.
  *
  * @protected
  * @type {Window_SkillList}
  * @memberof Window_SkillType
  */
 private var _skillWindow: Window_SkillList;

 /**
  * Creates an instance of Window_SkillType.
  * @param  x
  * @param  y
  * @memberof Window_SkillType
  */
 public function new(x: Int, y: Int): Void;

 /**
  * Sets the current actor for the skill type window.
  *
  * @param {Game_Actor} actor
  * @memberof Window_SkillType
  */
 public function setActor(actor: Game_Actor): Void;

 /**
  * Sets the skill window for the current skill type.
  *
  * @param {Window_SkillList} skillWindow
  * @memberof Window_SkillType
  */
 public function setSkillWindow(skillWindow: Window_SkillList): Void;

 /**
  * Selects the last command in the window.
  *
  * @memberof Window_SkillType
  */
 public function selectLast(): Void;
}
