package rm.windows;

import rm.core.Rectangle;
import rm.objects.Game_Enemy;

/**
 * -----------------------------------------------------------------------------
 * Window_BattleEnemy
 *
 * The window for selecting a target enemy on the battle screen.
 * @class Window_BattleEnemy
 */
extern class Window_BattleEnemy extends Window_Selectable {
 private var _enemies: Array<Game_Enemy>;

 #if compileMV
 public function new(x: Int, y: Int);
 public function initialize(x: Int, y: Int): Void;
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;
 #end

 /**
  * Returns the window width.
  *
  * @returns {number}
  * @memberof Window_BattleEnemy
  */
 public function windowWidth(): Int;

 /**
  * Returns the window height.
  *
  * @returns {number}
  * @memberof Window_BattleEnemy
  */
 public function windowHeight(): Int;

 /**
  * Returns the number of visible rows.
  *
  * @returns {number}
  * @memberof Window_BattleEnemy
  */
 public function numVisibleRows(): Int;

 /**
  * Returns the current enemy.
  *
  * @returns {Game_Enemy}
  * @memberof Window_BattleEnemy
  */
 public function enemy(): Game_Enemy;

 /**
  * Returns the current index selected.
  *
  * @returns {number}
  * @memberof Window_BattleEnemy
  */
 public function enemyIndex(): Int;

 /**
  * Selects a specified enemy using the index.
  *
  * @param {number} index
  * @memberof Window_BattleEnemy
  */
 public function select(index: Int): Void;
}
