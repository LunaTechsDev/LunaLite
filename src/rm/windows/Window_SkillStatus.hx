package rm.windows;

import rm.objects.Game_Actor;

/**
 * -----------------------------------------------------------------------------
 * Window_SkillStatus
 *
 * The window for displaying the skill user's status on the skill screen.
 * @class Window_SkillStatus
 */
@:expose("Window_SkillStatus")
@:native("Window_SkillStatus")
extern class Window_SkillStatus extends Window_Base {
 /**
  * The current game actor attached to the window.
  * @protected
  * @type {Game_Actor}
  * @memberof Window_SkillStatus
  */
 private var _actor: Game_Actor;

 /**
  * Creates an instance of Window_SkillStatus.
  * @param x
  * @param y
  * @param width
  * @param height
  * @memberof Window_SkillStatus
  */
 public function new(x: Int, y: Int, width: Int, height: Int): Void;

 /**
  * Sets the current actor for the window.
  *
  * @param {Game_Actor} actor
  * @memberof Window_SkillStatus
  */
 public function setActor(actor: Game_Actor): Void;

 /**
  * Refreshes the window contents.
  *
  * @memberof Window_SkillStatus
  */
 public function refresh(): Void;
}
