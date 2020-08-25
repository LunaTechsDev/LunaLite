package rm.objects;

import rm.types.LunaTea.AnimationId;
import rm.types.RM.BattlerAnimation;
import rm.types.LunaTea.ActionState;
import rm.types.LunaTea.SkillId;
import rm.types.RPG.UsableItem;
import rm.types.LunaTea.ParameterId;
import rm.types.LunaTea.StateId;
import rm.types.LunaTea.WeaponImageId;
import rm.types.LunaTea.MotionType;

@:expose("Game_Battler")
@:native("Game_Battler")
extern class Game_Battler extends Game_BattlerBase {
 private var _actions: Array<Game_Action>;
 private var _speed: Int;
 private var _result: Game_ActionResult;
 private var _actionState: String;
 private var _lastTargetIndex: Int;
 private var _animations: Array<BattlerAnimation>;
 private var _damagePopup: Bool;
 private var _effectType: String;
 private var _motionType: MotionType;
 private var _weaponImageId: Int;
 private var _motionRefresh: Bool;
 private var _selected: Bool;

 /**
  * Returns the name of the battler.
  *
  * @returns {String}
  * @memberof Game_Battler
  */
 public function name(): String;

 /**
  * Returns the battler name of the battler;
  * the battler name is associated with the file used as the battler graphic.
  * @returns {String}
  * @memberof Game_Battler
  */
 public function battlerName(): String;

 /**
  * Returns the index of the battler.
  *
  * @returns {number}
  * @memberof Game_Battler
  */
 public function index(): Int;

 /**
  * Returns the unit of the battler; this is either the
  * game party or game troop.
  * @returns {Game_Unit}
  * @memberof Game_Battler
  */
 public function friendsUnit(): Game_Unit;

 /**
  * Returns the opponents unit; this is either
  * game party or game troop.
  * @returns {Game_Unit}
  * @memberof Game_Battler
  */
 public function opponentsUnit(): Game_Unit;

 /**
  * Clears animations from the battler.
  *
  * @memberof Game_Battler
  */
 public function clearAnimations(): Void;

 /**
  * Clear damage pop up from the battler.
  *
  * @memberof Game_Battler
  */
 public function clearDamagePopup(): Void;

 /**
  * Clear weapon animation from the battler.
  *
  * @memberof Game_Battler
  */
 public function clearWeaponAnimation(): Void;

 /**
  * Clears effect from the battler.
  *
  * @memberof Game_Battler
  */
 public function clearEffect(): Void;

 /**
  * Clears motion from the battler.
  *
  * @memberof Game_Battler
  */
 public function clearMotion(): Void;

 public function requestEffect(effectType: String): Void;

 /**
  * Request the specified motion on the game battler.
  *
  * @param {String} motionType
  * @memberof Game_Battler
  */
 public function requestMotion(motionType: String): Void;

 public function requestMotionRefresh(): Void;
 public function select(): Void;
 public function deselect(): Void;
 public function isAnimationRequested(): Bool;
 public function isDamagePopupRequested(): Bool;
 public function isEffectRequested(): Bool;

 /**
  * Returns true if a motion is requested.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public function isMotionRequested(): Bool;

 /**
  * Returns true if a weapon animation is requested.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public function isWeaponAnimationRequested(): Bool;

 public function isMotionRefreshRequested(): Bool;
 public function isSelected(): Bool;

 /**
  * Returns the effect type of the battler.
  *
  * @returns {String}
  * @memberof Game_Battler
  */
 public function effectType(): String;

 /**
  * Returns the motion type of the battler.
  *
  * @returns {String}
  * @memberof Game_Battler
  */
 public function motionType(): String;

 /**
  * Returns the weapon image id.
  *
  * @returns {number}
  * @memberof Game_Battler
  */
 public function weaponImageId(): WeaponImageId;

 /**
  * Shifts the battler animation.
  *
  * @returns {BattlerAnimation}
  * @memberof Game_Battler
  */
 public function shiftAnimation(): BattlerAnimation;

 /**
  * Starts the specified animation, given the animation id on the
  * battler.
  * @param {number} animationId
  * @param {Bool} mirror
  * @param {number} delay
  * @memberof Game_Battler
  */
 public function startAnimation(animationId: AnimationId, mirror: Bool,
  delay: Int): Void;

 /**
  * Starts a damage pop up on the battler.
  *
  * @memberof Game_Battler
  */
 public function startDamagePopup(): Void;

 /**
  * Starts the weapon animation on te battler given a weapon id.
  *
  * @param {number} weaponImageId
  * @memberof Game_Battler
  */
 public function startWeaponAnimation(weaponImageId: WeaponImageId): Void;

 public function action(index: Int): Game_Action;

 /**
  * Sets the action at the specified index for the battler.
  *
  * @param {number} index
  * @param {Game_Action} action
  * @memberof Game_Battler
  */
 public function setAction(index: Int, action: Game_Action): Void;

 /**
  * Returns the number of battler actions.
  *
  * @returns {number}
  * @memberof Game_Battler
  */
 public function numActions(): Int;

 /**
  * Clears the battler actions.
  *
  * @memberof Game_Battler
  */
 public function clearActions(): Void;

 /**
  * Returns the battler action result.
  *
  * @returns {Game_ActionResult}
  * @memberof Game_Battler
  */
 public function result(): Game_ActionResult;

 /**
  * Clears the battler action result.
  *
  * @memberof Game_Battler
  */
 public function clearResult(): Void;

 /**
  * Refreshes the battler.
  *
  * @memberof Game_Battler
  */
 public function refresh(): Void;

 /**
  * Adds a state to the battler given the specified
  * state id.
  * @param {number} stateId
  * @memberof Game_Battler
  */
 public function addState(stateId: StateId): Void;

 /**
  * Returns true if the specified state given the state id
  * is addable.
  * @param {number} stateId
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public function isStateAddable(stateId: StateId): Bool;

 /**
  * Returns true if the specified state given the state id
  * restricts.
  *
  * @param {number} stateId
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public function isStateRestrict(stateId: StateId): Bool;

 /**
  * Handler for when theb attler is restricted.
  *
  * @memberof Game_Battler
  */
 public function onRestrict(): Void;

 /**
  * Removes the specified state given the state id.
  *
  * @param {number} stateId
  * @memberof Game_Battler
  */
 public function removeState(stateId: StateId): Void;

 /**
  * Has the battler escape from battle; plays a sound on escaping.
  *
  * @memberof Game_Battler
  */
 public function escape(): Void;

 /**
  * Adds a buff to the battler for the specified number of turns
  * on the selected parameter.
  * @param {number} paramId
  * @param {number} turns
  * @memberof Game_Battler
  */
 public function addBuff(paramId: ParameterId, turns: Int): Void;

 /**
  * Adds a debuff to the battler for the specified number of turns
  * on the selected parameter.
  * @param {number} paramId
  * @param {number} turns
  * @memberof Game_Battler
  */
 public function addDebuff(paramId: ParameterId, turns: Int): Void;

 public function removeBuff(paramId: ParameterId): Void;
 public function removeBattleStates(): Void;

 /**
  * Removes all buffs from the battler.
  *
  * @memberof Game_Battler
  */
 public function removeAllBuffs(): Void;

 public function removeStatesAuto(timing: Int): Void;
 public function removeBuffsAuto(): Void;
 public function removeStatesByDamage(): Void;

 /**
  * Creates the number of times for
  * an action.
  * @returns {number}
  * @memberof Game_Battler
  */
 public function makeActionTimes(): Int;

 /**
  * Creates the actions for the battler.
  *
  * @memberof Game_Battler
  */
 public function makeActions(): Void;

 /**
  * Returns the speed of the battler.
  *
  * @returns {number}
  * @memberof Game_Battler
  */
 public function speed(): Int;

 /**
  * Calculates the speed of the battler.
  *
  * @memberof Game_Battler
  */
 public function makeSpeed(): Void;

 /**
  * Returns the current action of the battler.
  *
  * @returns {Game_Action}
  * @memberof Game_Battler
  */
 public function currentAction(): Game_Action;

 /**
  * Removes the current battler action.
  *
  * @memberof Game_Battler
  */
 public function removeCurrentAction(): Void;

 /**
  * Sets the last target based on the target passed in.
  * @param target
  */
 public function setLastTarget(target: Game_Battler): Void;

 public function forceAction(skillId: SkillId, targetIndex: Int): Void;

 /**
  * Has theb attler use the given item.
  *
  * @param {RPG.UsableItem} item
  * @memberof Game_Battler
  */
 public function useItem(item: UsableItem): Void;

 /**
  * Has the battler consume the given item.
  *
  * @param {RPG.UsableItem} item
  * @memberof Game_Battler
  */
 public function consumeItem(item: UsableItem): Void;

 /**
  * Adds the specified amount of hp to the battler.
  *
  * @param {number} value
  * @memberof Game_Battler
  */
 public function gainHp(value: Int): Void;

 /**
  * Adds the specified amount of mp to the battler.
  *
  * @param {number} value
  * @memberof Game_Battler
  */
 public function gainMp(value: Int): Void;

 /**
  * Adds the specified amount of tp to the battler.
  *
  * @param {number} value
  * @memberof Game_Battler
  */
 public function gainTp(value: Int): Void;

 /**
  * Adds a specified amount of tp to the battler silently.
  *
  * @param {number} value
  * @memberof Game_Battler
  */
 public function gainSilentTp(value: Int): Void;

 /**
  * Initializes the battler's tp; tp is random.
  *
  * @memberof Game_Battler
  */
 public function initTp(): Void;

 /**
  * Clears the battler's tp.
  *
  * @memberof Game_Battler
  */
 public function clearTp(): Void;

 public function chargeTpByDamage(damageRate: Float): Void;

 /**
  * Has the battler regenerate hp based on their hp regen.
  *
  * @memberof Game_Battler
  */
 public function regenerateHp(): Void;

 public function maxSlipDamage(): Int;

 /**
  * Has the battler regenerate mp based on their mp regen.
  *
  * @memberof Game_Battler
  */
 public function regenerateMp(): Void;

 /**
  * Has the battler regenerate tp based on their tp regen.
  *
  * @memberof Game_Battler
  */
 public function regenerateTp(): Void;

 /**
  * Has the battler regenerate all resources based on
  * their respective regeneration stats.
  * @memberof Game_Battler
  */
 public function regenerateAll(): Void;

 /**
  * Handler for when battle has started.
  *
  * @memberof Game_Battler
  */
 public function onBattleStart(): Void;

 /**
  * Handler for when all actions end
  */
 public function onAllActionsEnd(): Void;

 /**
  * Handler for when turn ends
  */
 public function onTurnEnd(): Void;

 /**
  * Handler for when battle ends
  */
 public function onBattleEnd(): Void;

 /**
  * Handler for when damage is done
  * @param value
  */
 public function onDamage(value: Int): Void;

 /**
  * Sets the action state
  * @param actionState
  */
 public function setActionState(actionState: ActionState): Void;

 public function isUndecided(): Bool;

 /**
  * Returns true if the battler is inputting commands in battle.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public function isInputting(): Bool;

 /**
  * Returns true if the battler is waiting in battle.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public function isWaiting(): Bool;

 /**
  * Returns true if the battler is performing an action in battle.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public function isActing(): Bool;

 /**
  * Returns true if the battler is chanting in combat.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public function isChanting(): Bool;

 /**
  * Returns true if the battler is waiting to guard.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public function isGuardWaiting(): Bool;

 /**
  * Perform action start motion, given the specified game action.
  *
  * @param {Game_Action} action
  * @memberof Game_Battler
  */
 public function performActionStart(action: Game_Action): Void;

 /**
  * Perform given action motion.
  *
  * @param {Game_Action} action
  * @memberof Game_Battler
  */
 public function performAction(action: Game_Action): Void;

 /**
  * Perform action end motion.
  *
  * @memberof Game_Battler
  */
 public function performActionEnd(): Void;

 /**
  * Perform damage motion.
  *
  * @memberof Game_Battler
  */
 public function performDamage(): Void;

 /**
  * Perform miss motion.
  *
  * @memberof Game_Battler
  */
 public function performMiss(): Void;

 /**
  * Perform recovery motion.
  *
  * @memberof Game_Battler
  */
 public function performRecovery(): Void;

 /**
  * Perform evasion motion.
  *
  * @memberof Game_Battler
  */
 public function performEvasion(): Void;

 /**
  * Perform magic evasion motion.
  *
  * @memberof Game_Battler
  */
 public function performMagicEvasion(): Void;

 /**
  * Perform counter motion.
  *
  * @memberof Game_Battler
  */
 public function performCounter(): Void;

 /**
  * Performs the reflect motion.
  *
  * @memberof Game_Battler
  */
 public function performReflection(): Void;

 /**
  * Perform substitute motion with the specified game battler.
  *
  * @param {Game_Battler} target
  * @memberof Game_Battler
  */
 public function performSubstitute(target: Game_Battler): Void;

 /**
  * Performs the collapse motion.
  *
  * @memberof Game_Battler
  */
 public function performCollapse(): Void;
}
