package rm.sprites;

import rm.objects.Game_Actor;
import rm.core.Sprite;
import rm.types.LunaTea.CharacterPattern;
import rm.types.rm.Motion;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Actor
 *
 * The sprite for displaying an actor.
 */
@:native("Sprite_Actor")
extern class Sprite_Actor extends Sprite_Battler {
 public static var MOTIONS: {
  walk: Motion,
  wait: Motion,
  chant: Motion,
  guard: Motion,
  damage: Motion,
  evade: Motion,
  thrust: Motion,
  swing: Motion,
  missile: Motion,
  skill: Motion,
  spell: Motion,
  item: Motion,
  escape: Motion,
  victory: Motion,
  dying: Motion,
  abnormal: Motion,
  sleep: Motion,
  dead: Motion,
 };
 private var _battlerName: String;
 private var _motion: Motion;
 private var _motionCount: Int;
 private var _pattern: CharacterPattern;
 private var _mainSprite: Sprite_Base;
 private var _shadowSprite: Sprite;
 private var _weaponSprite: Sprite_Weapon;
 private var _stateSprite: Sprite_StateOverlay;
 private var _actor: Game_Actor;

 /**
  * Creates an instance of Sprite_Actor; can be passed
  * a battler on creation.
  * @param {Game_Actor} [battler]
  * @memberof Sprite_Actor
  */
 public function new(?battler: Game_Actor): Void;

 public function initialize(?battler: Game_Actor): Void;

 /**
  * Creates the main sprite of the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public function createMainSprite(): Void;

 /**
  * Creates the shadow sprite of the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public function createShadowSprite(): Void;

 /**
  * Sets the weapon sprite of the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public function createWeaponSprite(): Void;

 /**
  * Creates the state sprite of the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public function createStateSprite(): Void;

 /**
  * Sets the battler of the sprite actor.
  *
  * @param {Game_Actor} battler
  * @memberof Sprite_Actor
  */
 public function setBattler(battler: Game_Actor): Void;

 /**
  * Moves the sprite actor to the start position.
  *
  * @memberof Sprite_Actor
  */
 public function moveToStartPosition(): Void;

 public function setActorHome(index: Int): Void;

 public function updateShadow(): Void;

 /**
  * Sets up motion on the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public function setupMotion(): Void;

 /**
  * Sets up weapon animation on the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public function setupWeaponAnimation(): Void;

 /**
  * Starts the motion given the specified motion
  * type.
  * @param {string} motionType
  * @memberof Sprite_Actor
  */
 public function startMotion(motionType: String): Void;

 public function updateTargetPosition(): Void;

 /**
  * Updates the sprite actor's movement.
  *
  * @memberof Sprite_Actor
  */
 public function updateMove(): Void;

 /**
  * Updates the sprite actor's motion.
  *
  * @memberof Sprite_Actor
  */
 public function updateMotion(): Void;

 public function updateMotionCount(): Void;

 /**
  * Returns the speed of the motion for the sprite actor.
  *
  * @returns {Int}
  * @memberof Sprite_Actor
  */
 public function motionSpeed(): Int;

 /**
  * Refreshes the motion of the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public function refreshMotion(): Void;

 /**
  * Starts the entry motion of the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public function startEntryMotion(): Void;

 /**
  * Has the sprite actor step forward.
  *
  * @memberof Sprite_Actor
  */
 public function stepForward(): Void;

 /**
  * Has the sprite actor step back.
  *
  * @memberof Sprite_Actor
  */
 public function stepBack(): Void;

 /**
  * Has the sprite actor retreat.
  *
  * @memberof Sprite_Actor
  */
 public function retreat(): Void;

 public function damageOffsetX(): Int;
 public function damageOffsetY(): Int;
}
