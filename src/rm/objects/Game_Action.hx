package rm.objects;

import rm.types.RPG.EnemyAction;
import rm.types.RPG.UsableItem;
import rm.types.RPG.Effect;

/**
 * Game_Action
 * The game object class representing a battle action.
 * @class Game_Action
 */
@:native("Game_Action")
extern class Game_Action {
 public static var EFFECT_RECOVER_HP: Int;
 public static var EFFECT_RECOVER_MP: Int;
 public static var EFFECT_GAIN_TP: Int;
 public static var EFFECT_ADD_STATE: Int;
 public static var EFFECT_REMOVE_STATE: Int;
 public static var EFFECT_ADD_BUFF: Int;
 public static var EFFECT_ADD_DEBUFF: Int;
 public static var EFFECT_REMOVE_BUFF: Int;
 public static var EFFECT_REMOVE_DEBUFF: Int;
 public static var EFFECT_SPECIAL: Int;
 public static var EFFECT_GROW: Int;
 public static var EFFECT_LEARN_SKILL: Int;
 public static var EFFECT_COMMON_EVENT: Int;
 public static var SPECIAL_EFFECT_ESCAPE: Int;
 public static var HITTYPE_CERTAIN: Int;
 public static var HITTYPE_PHYSICAL: Int;
 public static var HITTYPE_MAGICAL: Int;
 private var _subjectActorId: Int;
 private var _subjectEnemyIndex: Int;
 private var _targetIndex: Int;
 private var _forcing: Bool;
 private var _item: Game_Item;
 public function new(subject: Game_Battler, forcing: Bool): Void;
 public function clear(): Void;
 public function setSubject(subject: Game_Battler): Void;
 public function subject(): Game_Battler;
 public function friendsUnit(): Game_Unit;
 public function opponentsUnit(): Game_Unit;

 public function setEnemyAction(action: EnemyAction): Void;

 public function setAttack(): Void;

 public function setGuard(): Void;

 public function setSkill(skillId: Int): Void;

 public function setItem(itemId: Int): Void;

 public function setItemObject(object: UsableItem): Void;

 public function setTarget(targetIndex: Int): Void;

 public function item(): UsableItem;

 public function isSkill(): Bool;

 public function isItem(): Bool;

 public function numRepeats(): Int;

 public function checkItemScope(list: Array<Int>): Bool;

 public function isForOpponent(): Bool;

 public function isForFriend(): Bool;

 public function isForDeadFriend(): Bool;

 public function isForUser(): Bool;

 public function isForOne(): Bool;

 public function isForRandom(): Bool;

 public function isForAll(): Bool;

 public function needsSelection(): Int;

 public function numTargets(): Int;

 public function checkDamageType(list: Array<Int>): Bool;

 public function isHpEffect(): Bool;

 public function isMpEffect(): Bool;

 public function isDamage(): Bool;

 public function isRecover(): Bool;

 public function isDrain(): Bool;

 public function isHpRecover(): Bool;

 public function isMpRecover(): Bool;

 public function isCertainHit(): Bool;

 public function isPhysical(): Bool;

 public function isMagical(): Bool;

 public function isAttack(): Bool;
 public function isGuard(): Bool;

 public function isMagicSkill(): Bool;

 public function decideRandomTarget(): Void;

 public function setConfusion(): Void;

 public function prepare(): Void;

 public function isValid(): Bool;

 public function speed(): Float;

 public function makeTargets(): Array<Game_Battler>;

 public function repeatTargets(targets: Array<Game_Battler>): Array<Game_Battler>;

 public function confusionTarget(): Game_Battler;

 public function targetsForOpponents(): Array<Game_Battler>;

 public function targetsForFriends(): Array<Game_Battler>;

 public function evaluate(): Float;

 public function itemTargetCandidates(): Array<Game_Battler>;

 public function evaluateWithTarget(target: Game_Battler): Float;

 public function testApply(target: Game_Battler): Bool;

 public function hasItemAnyValidEffects(target: Game_Battler): Bool;

 public function testItemEffect(target: Game_Battler, effect: Effect): Bool;

 public function itemCnt(target: Game_Battler): Float;

 public function itemMrf(target: Game_Battler): Float;

 public function itemHit(target: Game_Battler): Float;

 public function itemEva(target: Game_Battler): Float;

 public function itemCri(target: Game_Battler): Float;

 public function apply(target: Game_Battler): Void;

 public function makeDamageValue(target: Game_Battler, critical: Bool): Float;

 public function evalDamageFormula(target: Game_Battler): Float;

 public function calcElementRate(target: Game_Battler): Float;

 public function elementsMaxRate(target: Game_Battler,
  elements: Array<Int>): Float;

 public function applyCritical(damage: Int): Float;

 public function applyVariance(damage: Int, variance: Float): Float;

 public function applyGuard(damage: Int, target: Game_Battler): Float;

 public function executeDamage(target: Game_Battler, value: Int): Void;

 public function executeHpDamage(target: Game_Battler, value: Int): Void;

 public function executeMpDamage(target: Game_Battler, value: Int): Void;

 public function gainDrainedHp(value: Int): Void;

 public function gainDrainedMp(value: Int): Void;
 public function applyItemEffect(target: Game_Battler, effect: Effect): Void;

 public function itemEffectRecoverHp(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectRecoverMp(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectGainTp(target: Game_Battler, effect: Effect): Void;

 public function itemEffectAddState(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectAddAttackState(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectAddNormalState(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectRemoveState(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectAddBuff(target: Game_Battler, effect: Effect): Void;

 public function itemEffectAddDebuff(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectRemoveBuff(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectRemoveDebuff(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectSpecial(target: Game_Battler, effect: Effect): Void;

 public function itemEffectGrow(target: Game_Battler, effect: Effect): Void;

 public function itemEffectLearnSkill(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectCommonEvent(target: Game_Battler,
  effect: Effect): Void;

 public function makeSuccess(target: Game_Battler): Void;

 public function applyItemUserEffect(target: Game_Battler): Void;

 public function lukEffectRate(target: Game_Battler): Float;
 public function applyGlobal(): Void;
}
