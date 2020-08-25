package rm.objects;

import rm.types.RPG.EventCommand;
import haxe.extern.EitherType;
import js.lib.Object;

typedef Branch = {
 var Indent: EitherType<Int, Bool>;
}

// {[indent: Int]: Int | Bool}

/**
 * -----------------------------------------------------------------------------
 * Game_Interpreter
 *
 * The interpreter for running event commands.
 * @class Game_Interpreter
 */
@:expose("Game_Interpreter")
@:native("Game_Interpreter")
extern class Game_Interpreter {
 private var _depth: Int;
 private var _branch: Object; // Branch
 private var _params: Array<Any>;
 private var _indent: Int;
 private var _frameCount: Int;
 private var _freezeChecker: Int;
 private var _mapId: Int;
 private var _eventId: Int;
 private var _list: Array<EventCommand>;
 private var _index: Int;
 private var _waitCount: Int;
 private var _waitMode: String;
 private var _comments: String;
 private var _character: Game_Event;
 private var _childInterpreter: Game_Interpreter;

 public function new(depth: Int);
 public function checkOverflow(): Void;

 /**
  * Clears the interpreter.
  *
  * @memberof Game_Interpreter
  */
 public function clear(): Void;

 /**
  * Sets up the interpreter with the list of event commands, and the given
  * event Id.
  *
  * @param {Array<RPG.EventCommand>} list
  * @param {Int} eventId
  * @memberof Game_Interpreter
  */
 public function setup(list: Array<EventCommand>, eventId: Int): Void;

 /**
  * Returns the currrent eventId.
  *
  * @returns {Int}
  * @memberof Game_Interpreter
  */
 public function eventId(): Int;

 /**
  * Returns true if the event is on the current map.
  *
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public function isOnCurrentMap(): Bool;

 /**
  * Returns true after setting up the reserved common event.
  *
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public function setupReservedCommonEvent(): Bool;

 /**
  * Returns true if the interpreter is running.
  *
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public function isRunning(): Bool;

 public function update(): Void;

 /**
  * Updates the child game interpreter.
  *
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public function updateChild(): Bool;

 /**
  * Updates the wait of the game interpreter.
  *
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public function updateWait(): Bool;

 public function updateWaitCount(): Bool;
 public function updateWaitMode(): Bool;

 /**
  * Sets the wait mode of the interpreter.
  *
  * @param {String} waitMode
  * @memberof Game_Interpreter
  */
 public function setWaitMode(waitMode: String): Void;

 /**
  * sets a specified wait duration for the interpreter.
  *
  * @param {Int} duration
  * @memberof Game_Interpreter
  */
 public function wait(duration: Int): Void;

 public function fadeSpeed(): Int;

 /**
  * Executes the event command;
  * returns true or false based on execution.
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public function executeCommand(): Bool;

 /**
  * Checks if the interpreter has frozen.
  *
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public function checkFreeze(): Bool;

 /**
  * Terminates the game interpreter.
  *
  * @memberof Game_Interpreter
  */
 public function terminate(): Void;

 /**
  * Skips a conditional branch on the interpreter.
  *
  * @memberof Game_Interpreter
  */
 public function skipBranch(): Void;

 /**
  * Returns the current event command.
  *
  * @returns {RPG.EventCommand}
  * @memberof Game_Interpreter
  */
 public function currentCommand(): EventCommand;

 /**
  * Returns the next event code.
  *
  * @returns {Int}
  * @memberof Game_Interpreter
  */
 public function nextEventCode(): Int;

 public function iterateActorId(param: Int,
  callback: (actor: Game_Actor) -> Void): Void;
 public function iterateActorEx(param1: Int, param2: Int,
  callback: (actor: Game_Actor) -> Void): Void;
 public function iterateActorIndex(param: Int,
  callback: (actor: Game_Actor) -> Void): Void;
 public function iterateEnemyIndex(param: Int,
  callback: (enemt: Game_Enemy) -> Void): Void;
 public function iterateBattler(param1: Int, param2: Int,
  callback: (battler: Game_Battler) -> Void): Void;
 public function character(param: Int): Game_Character;
 public function operateValue(operation: Int, operandType: Int,
  operand: Int): Int;
 public function changeHp(target: Int, value: Int, allowDeath: Bool): Void;

 /**
  * Show Text
  */
 public function command101(): Bool;

 /**
  * Show Choices
  */
 public function command102(): Bool;

 public function setupChoices(params: Array<Any>): Void;

 /**
  * When [**]
  */
 public function command402(): Bool;

 /**
  * When Cancel
  */
 public function command403(): Bool;

 /**
  * Input Number
  */
 public function command103(): Bool;

 /**
  *
  * @param params
  */
 public function setupNumInput(params: Array<Int>): Void;

 /**
  * Select Item
  */
 public function command104(): Bool;

 public function setupItemChoice(params: Array<Int>): Void;

 /**
  * Show Scrolling Text
  */
 public function command105(): Bool;

 /**
  * Comment
  */
 public function command108(): Bool;

 /**
  * Conditional Branch
  */
 public function command111(): Bool;

 /**
  * Else
  */
 public function command411(): Bool;

 /**
  * Loop
  */
 public function command112(): Bool;

 /**
  * Repeat Above
  */
 public function command413(): Bool;

 /**
  * Break Loop
  */
 public function command113(): Bool;

 /**
  * Exit Event Processing
  */
 public function command115(): Bool;

 /**
  * Common Event
  */
 public function command117(): Bool;

 public function setupChild(list: Array<EventCommand>, eventId: Int): Void;

 /**
  * Label
  */
 public function command118(): Bool;

 /**
  * Jump to Label
  */
 public function command119(): Bool;

 public function jumpTo(index: Int): Void;

 /**
  * Control Switches
  */
 public function command121(): Bool;

 /**
  * Control Variables
  */
 public function command122(): Bool;

 public function gameDataOperand(type: Int, param1: Int, param2: Int): Int;
 public function operateVariable(variableId: Int, operationType: Int,
  value: Int): Void;

 /**
  * Control Self Switch
  */
 public function command123(): Bool;

 /**
  * Control Timer
  */
 public function command124(): Bool;

 /**
  * Change Gold
  */
 public function command125(): Bool;

 /**
  * Change Items
  */
 public function command126(): Bool;

 /**
  * Change Weapons
  */
 public function command127(): Bool;

 /**
  * Change Armors
  */
 public function command128(): Bool;

 /**
  * Change Party Member
  */
 public function command129(): Bool;

 /**
  * Change Battle BGM
  */
 public function command132(): Bool;

 /**
  * Change Victory ME
  */
 public function command133(): Bool;

 /**
  * Change Save Access
  */
 public function command134(): Bool;

 /**
  * Change Menu Access
  */
 public function command135(): Bool;

 /**
  * Change Encounter Disable
  */
 public function command136(): Bool;

 /**
  * Change Formation Access
  */
 public function command137(): Bool;

 /**
  * Change Window Color
  */
 public function command138(): Bool;

 /**
  * Change Defeat ME
  */
 public function command139(): Bool;

 /**
  * Change Vehicle BGM
  */
 public function command140(): Bool;

 /**
  * Transfer Player
  */
 public function command201(): Bool;

 /**
  * Set Vehicle Location
  */
 public function command202(): Bool;

 /**
  * Set Event Location
  */
 public function command203(): Bool;

 /**
  * Scroll Map
  */
 public function command204(): Bool;

 /**
  * Set Movement Route
  */
 public function command205(): Bool;

 /**
  * Getting On and Off Vehicles
  */
 public function command206(): Bool;

 /**
  * Change Transparency
  */
 public function command211(): Bool;

 /**
  * Show Animation
  */
 public function command212(): Bool;

 /**
  * Show Balloon Icon
  */
 public function command213(): Bool;

 /**
  * Erase Event
  */
 public function command214(): Bool;

 /**
  * Change Player Followers
  */
 public function command216(): Bool;

 /**
  * Gather Followers
  */
 public function command217(): Bool;

 /**
  * Fadeout Screen
  */
 public function command221(): Bool;

 /**
  * Fadein Screen
  */
 public function command222(): Bool;

 /**
  * Tint Screen
  */
 public function command223(): Bool;

 /**
  * Flash Screen
  */
 public function command224(): Bool;

 /**
  * Shake Screen
  */
 public function command225(): Bool;

 /**
  * Wait
  */
 public function command230(): Bool;

 /**
  * Show Picture
  */
 public function command231(): Bool;

 /**
  * Move Picture
  */
 public function command232(): Bool;

 /**
  * Rotate Picture
  */
 public function command233(): Bool;

 /**
  * Tint Picture
  */
 public function command234(): Bool;

 /**
  * Erase Picture
  */
 public function command235(): Bool;

 /**
  * Set Weather Effect
  */
 public function command236(): Bool;

 /**
  * Play BGM
  */
 public function command241(): Bool;

 /**
  * Fadeout BGM
  */
 public function command242(): Bool;

 /**
  * Save BGM
  */
 public function command243(): Bool;

 /**
  * Resume BGM
  */
 public function command244(): Bool;

 /**
  * Play BGS
  */
 public function command245(): Bool;

 /**
  * Fadeout BGS
  */
 public function command246(): Bool;

 /**
  * Play ME
  */
 public function command249(): Bool;

 /**
  * Play SE
  */
 public function command250(): Bool;

 /**
  * Stop SE
  */
 public function command251(): Bool;

 /**
  * Play Movie
  */
 public function command261(): Bool;

 public function videoFileExt(): String;

 /**
  * Change Map Name Display
  */
 public function command281(): Bool;

 /**
  * Change Tileset
  */
 public function command282(): Bool;

 /**
  * Change Battle Back
  */
 public function command283(): Bool;

 /**
  * Change Parallax
  */
 public function command284(): Bool;

 /**
  * Get Location Info
  */
 public function command285(): Bool;

 /**
  * Battle Processing
  */
 public function command301(): Bool;

 /**
  * If Win
  */
 public function command601(): Bool;

 /**
  * If Escape
  */
 public function command602(): Bool;

 /**
  * If Lose
  */
 public function command603(): Bool;

 /**
  * Shop Processing
  */
 public function command302(): Bool;

 /**
  * Name Input Processing
  */
 public function command303(): Bool;

 /**
  * Change HP
  */
 public function command311(): Bool;

 /**
  * Change MP
  */
 public function command312(): Bool;

 /**
  * Change TP
  */
 public function command326(): Bool;

 /**
  * Change State
  */
 public function command313(): Bool;

 /**
  * Recover All
  */
 public function command314(): Bool;

 /**
  * Change EXP
  */
 public function command315(): Bool;

 /**
  * Change Level
  */
 public function command316(): Bool;

 /**
  * Change Parameter
  */
 public function command317(): Bool;

 /**
  * Change Skill
  */
 public function command318(): Bool;

 /**
  * Change Equipment
  */
 public function command319(): Bool;

 /**
  * Change Name
  */
 public function command320(): Bool;

 /**
  * Change Class
  */
 public function command321(): Bool;

 /**
  * Change Actor Images
  */
 public function command322(): Bool;

 /**
  * Change Vehicle Image
  */
 public function command323(): Bool;

 /**
  * Change Nickname
  */
 public function command324(): Bool;

 /**
  * Change Profile
  */
 public function command325(): Bool;

 /**
  * Change Enemy HP
  */
 public function command331(): Bool;

 /**
  * Change Enemy MP
  */
 public function command332(): Bool;

 /**
  * Change Enemy TP
  */
 public function command342(): Bool;

 /**
  * Change Enemy State
  */
 public function command333(): Bool;

 /**
  * Enemy Recover All
  */
 public function command334(): Bool;

 /**
  * Enemy Appear
  */
 public function command335(): Bool;

 /**
  * Enemy Transform
  */
 public function command336(): Bool;

 /**
  * Show Battle Animation
  */
 public function command337(): Bool;

 /**
  * Force Action
  */
 public function command339(): Bool;

 /**
  * Abort Battle
  */
 public function command340(): Bool;

 /**
  * Open Menu Screen
  */
 public function command351(): Bool;

 /**
  * Open Save Screen
  */
 public function command352(): Bool;

 /**
  * Game Over
  */
 public function command353(): Bool;

 /**
  * Return to Title Screen
  */
 public function command354(): Bool;

 /**
  * Script
  */
 public function command355(): Bool;

 /**
  * Plugin Command
  */
 public function command356(): Bool;

 // TODO: Updated for MZ - need to change
 public function pluginCommand(command: String, args: Array<String>): Void;
}
