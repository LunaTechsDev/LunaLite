package mz.scenes;

import mz.windows.Window_BattleItem;
import mz.windows.Window_PartyCommand;
import mz.windows.Window_BattleStatus;
import mz.windows.Window_Message;
import mz.windows.Window_Help;
import mz.windows.Window_BattleSkill;
import mz.windows.Window_BattleEnemy;
import mz.windows.Window_ScrollText;
import mz.windows.Window_BattleLog;
import mz.windows.Window_BattleActor;
import mz.windows.Window_ActorCommand;
import mz.sprites.Spriteset_Battle;

/**
 * Scene class of the battle screen.
 */
@:native("Scene_Battle")
extern class Scene_Battle extends Scene_Base {
 private var _spriteset: Spriteset_Battle;
 private var _statusWindow: Window_BattleStatus;
 private var _partyCommandWindow: Window_PartyCommand;
 private var _actorCommandWindow: Window_ActorCommand;
 private var _skillWindow: Window_BattleSkill;
 private var _itemWindow: Window_BattleItem;
 private var _actorWindow: Window_BattleActor;
 private var _enemyWindow: Window_BattleEnemy;
 private var _logWindow: Window_BattleLog;
 private var _helpWindow: Window_Help;
 private var _messageWindow: Window_Message;
 private var _scrollTextWindow: Window_ScrollText;
 public function updateBattleProcess(): Void;
 public function isAnyInputWindowActive(): Bool;
 public function changeInputWindow(): Void;

 /**
  * Stops the battle scene.
  *
  * @memberof Scene_Battle
  */
 public function stop(): Void;

 /**
  * Returns true if the battle needs a slow fade out.
  *
  * @returns {boolean}
  * @memberof Scene_Battle
  */
 public function needsSlowFadeOut(): Bool;

 /**
  * Updates the status window on the battle scene.
  *
  * @memberof Scene_Battle
  */
 public function updateStatusWindow(): Void;

 /**
  * Updates the position of the battle scene windows.
  *
  * @memberof Scene_Battle
  */
 public function updateWindowPositions(): Void;

 /**
  * Creates all the display objects including:
  * the spritesheet, window layer, windows, and more.
  *
  * @memberof Scene_Battle
  */
 public function createDisplayObjects(): Void;

 /**
  * Creates the spriteset within
  * the battle scene. This includes
  * sprites for actors, enemies, etc.
  * @memberof Scene_Battle
  */
 public function createSpriteset(): Void;

 /**
  * Creates all the windows within the
  * battle scene.
  * @memberof Scene_Battle
  */
 public function createAllWindows(): Void;

 /**
  * Creates the log window.
  *
  * @memberof Scene_Battle
  */
 public function createLogWindow(): Void;

 public function createStatusWindow(): Void;
 public function createPartyCommandWindow(): Void;

 /**
  * Creates the actor command window.
  *
  * @memberof Scene_Battle
  */
 public function createActorCommandWindow(): Void;

 /**
  * Creates the help window.
  *
  * @memberof Scene_Battle
  */
 public function createHelpWindow(): Void;

 /**
  * Creates the skill window.
  *
  * @memberof Scene_Battle
  */
 public function createSkillWindow(): Void;

 /**
  * Creates the item window.
  *
  * @memberof Scene_Battle
  */
 public function createItemWindow(): Void;

 /**
  * Creates the actor window.
  *
  * @memberof Scene_Battle
  */
 public function createActorWindow(): Void;

 /**
  * Creates the enemy window.
  *
  * @memberof Scene_Battle
  */
 public function createEnemyWindow(): Void;

 /**
  * Creates the message window on the battle scene.
  *
  * @memberof Scene_Battle
  */
 public function createMessageWindow(): Void;

 /**
  * Creates the scroll text window.
  *
  * @memberof Scene_Battle
  */
 public function createScrollTextWindow(): Void;

 public function refreshStatus(): Void;

 public function startPartyCommandSelection(): Void;

 /**
  * Handler for the fight command on battle start..
  *
  * @memberof Scene_Battle
  */
 public function commandFight(): Void;

 /**
  * Handler for the escape command on battle start.
  *
  * @memberof Scene_Battle
  */
 public function commandEscape(): Void;

 public function startActorCommandSelection(): Void;

 /**
  * Handler for the attack command.
  *
  * @memberof Scene_Battle
  */
 public function commandAttack(): Void;

 /**
  *
  * Handler for the skill command.
  *
  * @memberof Scene_Battle
  */
 public function commandSkill(): Void;

 /**
  * Handler for the guard command.
  *
  * @memberof Scene_Battle
  */
 public function commandGuard(): Void;

 /**
  * Handler for the item command.
  *
  * @memberof Scene_Battle
  */
 public function commandItem(): Void;

 /**
  * Selects the next command in the battle scene.
  *
  * @memberof Scene_Battle
  */
 public function selectNextCommand(): Void;

 /**
  * Selects the previous command in the battle scene.
  *
  * @memberof Scene_Battle
  */
 public function selectPreviousCommand(): Void;

 public function selectActorSelection(): Void;
 public function onActorOk(): Void;
 public function onActorCancel(): Void;
 public function selectEnemySelection(): Void;

 /**
  * Handler for when an enemy is selected.
  *
  * @memberof Scene_Battle
  */
 public function onEnemyOk(): Void;

 public function onEnemyCancel(): Void;

 /**
  * Handler for when a skill is selected.
  *
  * @memberof Scene_Battle
  */
 public function onSkillOk(): Void;

 public function onSkillCancel(): Void;
 public function onItemOk(): Void;
 public function onItemCancel(): Void;
 public function onSelectAction(): Void;
 public function endCommandSelection(): Void;
}
