package rm.windows;

import rm.types.RPG.UsableItem;
import rm.types.RM.BattleLogMethod;
import rm.sprites.Spriteset_Battle;
import rm.objects.Game_Action;
import rm.core.Rectangle;
import rm.objects.Game_Battler;
import rm.types.LunaTea.BuffId;

/**
 * -----------------------------------------------------------------------------
 * Window_BattleLog
 *
 * The window for displaying battle progress. No frame is displayed, but it is
 * handled as a window for convenience.
 * @class Window_BattleLog
 */
@:expose("Window_BattleLog")
@:native("Window_BattleLog")
extern class Window_BattleLog extends Window_Base {
 private var _lines: Array<String>;
 private var _methods: Array<BattleLogMethod>;
 private var _waitCount: Int;
 private var _waitMode: String;
 private var _baseLineStack: Array<Int>;
 private var _spriteset: Spriteset_Battle;
 #if compileMV
 public function new();
 public function initialize(): Void;
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;
 #end
 public function setSpriteset(spriteset: Spriteset_Battle): Void;
 public function windowWidth(): Int;
 public function windowHeight(): Int;
 public function maxLines(): Int;
 public function createBackBitmap(): Void;
 public function createBackSprite(): Void;
 public function numLines(): Int;
 public function messageSpeed(): Int;
 public function isBusy(): Bool;
 public function updateWait(): Bool;
 public function updateWaitCount(): Bool;
 public function updateWaitMode(): Bool;
 public function setWaitMode(waitMode: String): Void;
 public function callNextMethod(): Void;
 public function isFastForward(): Bool;
 public function push(methodName: String, args: Array<Dynamic>): Void;
 public function clear(): Void;
 public function wait(): Void;
 public function waitForEffect(): Void;
 public function waitForMovement(): Void;
 public function addText(text: String): Void;
 public function pushBaseLine(): Void;
 public function popBaseLine(): Void;
 public function waitForNewLine(): Void;
 public function popupDamage(target: Game_Battler): Void;
 public function performActionStart(subject: Game_Battler,
  action: Game_Action): Void;
 public function performAction(subject: Game_Battler,
  action: Game_Action): Void;
 public function performActionEnd(subject: Game_Battler): Void;
 public function performDamage(target: Game_Battler): Void;
 public function performMiss(target: Game_Battler): Void;
 public function performRecovery(target: Game_Battler): Void;
 public function performEvasion(target: Game_Battler): Void;
 public function performMagicEvasion(target: Game_Battler): Void;
 public function performCounter(target: Game_Battler): Void;
 public function performReflection(target: Game_Battler): Void;
 public function performSubstitute(substitute: Game_Battler,
  target: Game_Battler): Void;
 public function performCollapse(target: Game_Battler): Void;
 public function showAnimation(subject: Game_Battler, targets: Game_Battler,
  animationId: Int): Void;
 public function showAttackAnimation(subject: Game_Battler,
  targets: Game_Battler): Void;
 public function showActorAttackAnimation(subject: Game_Battler,
  targets: Game_Battler): Void;
 public function showEnemyAttackAnimation(subject: Game_Battler,
  targets: Game_Battler): Void;
 public function showNormalAnimation(targets: Game_Battler, animationId: Int,
  mirror: Bool): Void;
 public function animationBaseDelay(): Int;
 public function animationNextDelay(): Int;
 public function drawBackground(): Void;
 public function backRect(): Rectangle;
 public function backColor(): String;
 public function backPaintOpacity(): Int;
 public function drawLineText(index: Int): Void;
 public function startTurn(): Void;
 public function startAction(subject: Game_Battler, action: Game_Action,
  targets: Array<Game_Battler>): Void;
 public function endAction(subject: Game_Battler): Void;
 public function displayCurrentState(subject: Game_Battler): Void;
 public function displayRegeneration(subject: Game_Battler): Void;
 public function displayAction(subject: Game_Battler, item: UsableItem): Void;
 public function displayCounter(target: Game_Battler): Void;
 public function displayReflection(target: Game_Battler): Void;
 public function displaySubstitute(substitute: Game_Battler,
  target: Game_Battler): Void;
 public function displayActionResults(subject: Game_Battler,
  targt: Game_Battler): Void;
 public function displayFailure(target: Game_Battler): Void;
 public function displayCritical(target: Game_Battler): Void;
 public function displayDamage(target: Game_Battler): Void;
 public function displayMiss(target: Game_Battler): Void;
 public function displayEvasion(target: Game_Battler): Void;
 public function displayHpDamage(target: Game_Battler): Void;
 public function displayMpDamage(target: Game_Battler): Void;
 public function displayTpDamage(target: Game_Battler): Void;
 public function displayAffectedStatus(target: Game_Battler): Void;
 public function displayAutoAffectedStatus(target: Game_Battler): Void;
 public function displayChangedStates(target: Game_Battler): Void;
 public function displayAddedStates(target: Game_Battler): Void;
 public function displayRemovedStates(target: Game_Battler): Void;
 public function displayChangedBuffs(target: Game_Battler): Void;
 public function displayBuffs(target: Game_Battler, buffs: Array<BuffId>,
  fmt: String): Void;
 public function makeHpDamageText(target: Game_Battler): Void;
 public function makeMpDamageText(target: Game_Battler): String;
 public function makeTpDamageText(target: Game_Battler): String;
}
