package rm.windows;

import rm.objects.Game_Actor;
import rm.core.Rectangle;

#if compileMV
/**
 * -----------------------------------------------------------------------------
 * Window_BattleStatus
 *
 * The window for displaying the status of party members on the battle screen.
 * @class Window_BattleStatus
 */
@:expose("Window_BattleStatus")
@:native("Window_BattleStatus")
extern class Window_BattleStatus extends Window_Selectable {
 public function new();

 /**
  * Returns the window width.
  *
  * @returns {number}
  * @memberof Window_BattleStatus
  */
 public function windowWidth(): Int;

 /**
  * Returns the window height.
  *
  * @returns {number}
  * @memberof Window_BattleStatus
  */
 public function windowHeight(): Int;

 /**
  * Returns the number of visible rows.
  *
  * @returns {number}
  * @memberof Window_BattleStatus
  */
 public function numVisibleRows(): Int;

 public function basicAreaRect(index: Int): Rectangle;

 /**
  * returns a rectangle for the gauges in the gauge area.
  *
  * @param {number} index
  * @returns {Rectangle}
  * @memberof Window_BattleStatus
  */
 public function gaugeAreaRect(index: Int): Rectangle;

 /**
  * Returns the width of the guage area.
  *
  * @returns {number}
  * @memberof Window_BattleStatus
  */
 public function gaugeAreaWidth(): Int;

 /**
  * Draws the basic area for actors within the battle status window.
  *
  * @param {Rectangle} rect
  * @param {Game_Actor} actor
  * @memberof Window_BattleStatus
  */
 public function drawBasicArea(rect: Rectangle, actor: Game_Actor): Void;

 /**
  * Draws the gauge area for the actors within the battle status window.
  *
  * @param {Rectangle} rect
  * @param {Game_Actor} actor
  * @memberof Window_BattleStatus
  */
 public function drawGaugeArea(rect: Rectangle, actor: Game_Actor): Void;

 /**
  * Draws the gauges in the basic area with tp included.
  *
  * @param {Rectangle} rect
  * @param {Game_Actor} actor
  * @memberof Window_BattleStatus
  */
 public function drawGaugeAreaWithTp(rect: Rectangle, actor: Game_Actor): Void;

 /**
  * Draws the gauges in the basic area without tp included.
  *
  * @param {Rectangle} rect
  * @param {Game_Actor} actor
  * @memberof Window_BattleStatus
  */
 public function drawGaugeAreaWithoutTp(rect: Rectangle,
  actor: Game_Actor): Void;
}
#else

/**
 * -----------------------------------------------------------------------------
 * Window_BattleStatus
 *
 * The window for displaying the status of party members on the battle screen.
 * @class Window_BattleStatus
 */
@:expose("Window_BattleStatus")
@:native("Window_BattleStatus")
extern class Window_BattleStatus extends Window_StatusBase {
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;
}
#end
