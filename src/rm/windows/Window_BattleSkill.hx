package rm.windows;

import rm.core.Rectangle;

/**
 * -----------------------------------------------------------------------------
 * Window_BattleSkill
 *
 * The window for selecting a skill to use on the battle screen.
 * @class Window_BattleSkill
 */
extern class Window_BattleSkill extends Window_SkillList {
 #if compileMV
 public function new(x: Int, y: Int, width: Int, height: Int);
 public initialize(x:Int, y:Int, width:Int, height:Int);
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;
 #end
}
