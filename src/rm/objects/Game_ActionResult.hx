package rm.objects;

import rm.types.RPG.State;
import rm.types.LunaTea.StateId;
import rm.types.LunaTea.BuffId;

/**
 * -----------------------------------------------------------------------------
 * Game_ActionResult
 *
 * The game object declare class for a result of a battle action. For convinience, all
 * member variables in this declare class are public.
 * @class Game_ActionResult
 */
@:expose("Game_ActionResult")
@:native("Game_ActionResult")
extern class Game_ActionResult {
 public var used: Bool;
 public var missed: Bool;
 public var evaded: Bool;
 public var physical: Bool;
 public var drain: Bool;
 public var critical: Bool;
 public var success: Bool;
 public var hpAffected: Bool;
 public var hpDamage: Int;
 public var mpDamage: Int;
 public var tpDamage: Int;
 public var addedStates: Array<StateId>;
 public var removedStates: Array<StateId>;
 public var addedBuffs: Array<StateId>;
 public var addedDebuffs: Array<BuffId>;
 public var removedBuffs: Array<BuffId>; // TODO: Enum States and Buffs into Enums

 public function new(): Void;
 public function initialize(): Void;

 /**
  * Clears the game action result.
  *
  * @memberof Game_ActionResult
  */
 public function clear(): Void;

 /**
  * Returns the added states from the action result.
  *
  * @returns {Array<RPG.State>}
  * @memberof Game_ActionResult
  */
 public function addedStateObjects(): Array<State>;

 /**
  * Returns the removes states from the result.
  *
  * @returns {Array<RPG.State>}
  * @memberof Game_ActionResult
  */
 public function removedStateObjects(): Array<State>;

 public function isStatusAffected(): Bool;

 /**
  * Returns true if the action result is a hit.
  *
  * @returns {Bool}
  * @memberof Game_ActionResult
  */
 public function isHit(): Bool;

 public function isStateAdded(stateId: StateId): Bool;
 public function pushAddedState(stateId: StateId): Void;
 public function isStateRemoved(stateId: StateId): Bool;
 public function pushRemovedState(stateId: StateId): Void;

 /**
  * Returns true if the a buff is added to the specified param
  * from the action result.
  * @param {number} paramId
  * @returns {Bool}
  * @memberof Game_ActionResult
  */
 public function isBuffAdded(paramId: BuffId): Bool;

 public function pushAddedBuff(paramId: BuffId): Void;
 public function isDebuffAdded(paramId: BuffId): Bool;
 public function pushAddedDebuff(paramId: BuffId): Void;
 public function isBuffRemoved(paramId: BuffId): Bool;
 public function pushRemovedBuff(paramId: BuffId): Void;
}
