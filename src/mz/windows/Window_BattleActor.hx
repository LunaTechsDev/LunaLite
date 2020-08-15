package mz.windows;

import mz.objects.Game_Actor;

/**
 * -----------------------------------------------------------------------------
 * Window_BattleActor
 *
 * The window for selecting a target actor on the battle screen.
 * @class Window_BattleActor
 */
@:native("Window_BattleActor")
extern class Window_BattleActor extends Window_BattleStatus {
 public function new(x: Int, y: Int): Void;

 /**
  * Selects an actor within the battle actor window.
  *
  * @param {number} index
  * @memberof Window_BattleActor
  */
 public function select(index: Int): Void;

 /**
  * Returns the current selected actor.
  *
  * @returns {Game_Actor}
  * @memberof Window_BattleActor
  */
 public function actor(): Game_Actor;
}
