package rm.windows;

import rm.objects.Game_Actor;

/**
 * -----------------------------------------------------------------------------
 * Window_ActorCommand
 *
 * The window for selecting an actor's action on the battle screen.
 * @class Window_ActorCommand
 */
 @:native("Window_ActorCommand")
 extern class Window_ActorCommand extends Window_Command {
  private var _actor: Game_Actor;

  public function new();

  /**
   * Adds the attack command to the actor command window.
   * 
   * @memberof Window_ActorCommand
   */
  public function addAttackCommand(): Void;
  /**
   * Adds the skill command to the actor command window.
   * 
   * @memberof Window_ActorCommand
   */
  public function addSkillCommands(): Void;
  /**
   * Adds the guard command to the actor command window.
   * 
   * @memberof Window_ActorCommand
   */
  public function addGuardCommand(): Void;
  /**
   * Adds the item command to the actor command window.
   * 
   * @memberof Window_ActorCommand
   */
  public function addItemCommand(): Void;
  /**
   * Sets up the actor command window with a specified actor.
   * 
   * @param {Game_Actor} actor 
   * @memberof Window_ActorCommand
   */
  public function setup(actor: Game_Actor): Void;
  public function selectLast(): Void;
}