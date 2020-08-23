package rm.managers;

import rm.types.RM.AudioParameters;
import rm.windows.Window_BattleLog;
import rm.types.RM.BattleRewards;
import rm.windows.Window_BattleStatus;
import rm.sprites.Spriteset_Battle;
import rm.objects.Game_Actor;
import rm.objects.Game_Action;
import rm.objects.Game_Battler;
import rm.types.LunaTea.BattleResult;

/**
 * Manages the game battles to process all of the
 * events that happen within.
 */
@:native("BattleManager")
extern class BattleManager {
 @:native("_phase")
 public var __phase: String;
 private var _phase: String;

 @:native("_canEscape")
 public var __canEscape: Bool;
 private var _canEscape: Bool;

 @:native("_canLose")
 public var __canLose: Bool;
 private var _canLose: Bool;

 @:native("_battleTest")
 public var __battleTest: Bool;
 private var _battleTest: Bool;

 @:native("_eventCallback")
 public var __eventCallback: () -> Void;
 private var _eventCallback: () -> Void;

 @:native("_preemptive")
 public var __preemptive: Bool;
 private var _preemptive: Bool;

 @:native("_surprise")
 public var __surprise: Bool;
 private var _surprise: Bool;

 @:native("_actorIndex")
 public var __actorIndex: Int;
 private var _actorIndex: Int;

 @:native("_actionForceBattler")
 public var __actionForcedBattler: Game_Battler;
 private var _actionForcedBattler: Game_Battler;

 @:native("_mapBgm")
 public var __mapBgm: AudioParameters;
 private var _mapBgm: AudioParameters;

 @:native("_mapBgs")
 public var __mapBgs: AudioParameters;
 private var _mapBgs: AudioParameters;

 @:native("_actionBattlers")
 public var __actionBattlers: Array<Game_Battler>;
 private var _actionBattlers: Array<Game_Battler>;

 @:native("_subject")
 public var __subject: Game_Battler;
 private var _subject: Game_Battler;

 @:native("_action")
 public var __action: Game_Action;
 private var _action: Game_Action;

 @:native("_targets")
 public var __targets: Array<Game_Battler>;
 private var _targets: Array<Game_Battler>;

 @:native("_logWindow")
 public var __logWindow: Window_BattleLog;
 private var _logWindow: Window_BattleLog;

 @:native("_statusWindow")
 public var __statusWindow: Window_BattleStatus;
 private var _statusWindow: Window_BattleStatus;

 @:native("_spriteset")
 public var __spriteset: Spriteset_Battle;
 private var _spriteset: Spriteset_Battle;

 @:native("_escapeRatio")
 public var __escapeRatio: Float;
 private var _escapeRatio: Float;

 @:native("_escaped")
 public var __escaped: Bool;
 private var _escaped: Bool;

 @:native("_rewards")
 public var __rewards: BattleRewards;
 private var _rewards: BattleRewards;

 public function setup(troopId: Int, canEscape: Bool, canLose: Bool): Void;

 public function initMembers(): Void;

 public function isBattleTest(): Bool;

 public function setBattleTest(battleTest: Bool): Void;

 public function setEventCallback(callback: () -> Void): Void;

 public function setLogWindow(logWindow: Window_BattleLog): Void;

 public function setStatusWindow(statusWindow: Window_BattleStatus): Void;

 public function setSpriteset(spriteset: Spriteset_Battle): Void;

 public function onEncounter(): Void;

 public function ratePreemptive(): Float;

 public function rateSurprise(): Float;

 public function saveBgmAndBgs(): Void;

 public function playBattleBgm(): Void;

 public function playVictoryMe(): Void;

 public function playDefeatMe(): Void;

 public function replayBgmAndBgs(): Void;

 public function makeEscapeRatio(): Void;

 public function update(): Void;

 public function updateEvent(): Bool;

 public function updateEventMain(): Bool;

 public function isBusy(): Bool;

 public function isInputting(): Bool;

 public function isInTurn(): Bool;

 public function isTurnEnd(): Bool;

 public function isAborting(): Bool;

 public function isBattleEnd(): Bool;

 public function canEscape(): Bool;

 public function canLose(): Bool;

 public function isEscaped(): Bool;
 public function actor(): Game_Actor;

 public function clearActor(): Void;

 public function changeActor(newActorIndex: Int,
  lastActorActionState: String): Void;

 public function startBattle(): Void;

 public function displayStartMessages(): Void;

 public function startInput(): Void;

 public function inputtingAction(): Game_Action;

 public function selectNextCommand(): Void;

 public function selectPreviousCommand(): Void;

 public function refreshStatus(): Void;

 public function startTurn(): Void;

 public function updateTurn(): Void;

 public function processTurn(): Void;

 public function endTurn(): Void;

 public function updateTurnEnd(): Void;

 public function getNextSubject(): Game_Battler;

 public function allBattleMembers(): Array<Game_Battler>;

 public function makeActionOrders(): Void;

 public function startAction(): Void;

 public function updateAction(): Void;

 public function endAction(): Void;

 public function invokeAction(): Void;

 public function invokeNormalAction(): Void;

 public function invokeCounterAttack(): Void;

 public function invokeMagicReflection(): Void;

 public function applySubstitute(target: Game_Battler): Game_Battler;

 public function checkSubstitute(target: Game_Battler): Bool;

 public function isActionForced(): Bool;

 public function forceAction(battler: Game_Battler): Void;

 public function processForcedAction(): Void;

 public function abort(): Void;

 public function checkBattleEnd(): Bool;

 public function checkAbort(): Bool;

 public function processVictory(): Void;

 public function processEscape(): Bool;

 public function processAbort(): Void;

 public function processDefeat(): Void;

 public function endBattle(result: BattleResult): Void;

 public function updateBattleEnd(): Void;

 public function makeRewards(): Void;

 public function displayVictoryMessage(): Void;

 public function displayDefeatMessage(): Void;

 public function displayEscapeSuccessMessage(): Void;

 public function displayEscapeFailureMessage(): Void;

 public function displayRewards(): Void;

 public function displayExp(): Void;

 public function displayGold(): Void;

 public function displayDropItems(): Void;

 public function gainRewards(): Void;

 public function gainExp(): Void;

 public function gainGold(): Void;

 public function gainDropItems(): Void;
}
