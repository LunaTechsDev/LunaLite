package rm.sprites;

import rm.types.LunaTea.BalloonId;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Balloon
 *
 * The sprite for displaying a balloon icon.
 */
@:native("Sprite_Balloon")
extern class Sprite_Balloon extends Sprite_Base {
 private var _balloonId: BalloonId; // TODO: Create Balloon ID abstract
 private var _duration: Int;

 public function initMembers(): Void;

 public function loadBitmap(): Void;

 public function setup(balloonId: BalloonId): Void;

 /**
  * Updates the balloon sprite.
  *
  * @memberof Sprite_Balloon
  */
 public function update(): Void;

 /**
  * Updates the balloon sprite frame.
  *
  * @memberof Sprite_Balloon
  */
 public function updateFrame(): Void;

 /**
  * Returns the speed of the balloon animation.
  *
  * @returns {number}
  * @memberof Sprite_Balloon
  */
 public function speed(): Int;

 /**
  * Returns the wait time.
  *
  * @returns {number}
  * @memberof Sprite_Balloon
  */
 public function waitTime(): Int;

 /**
  * Returns the frame index of the balloon animation.
  *
  * @returns {number}
  * @memberof Sprite_Balloon
  */
 public function frameIndex(): Int;

 /**
  * Returns true if the balloon animation is playing.
  *
  * @returns {boolean}
  * @memberof Sprite_Balloon
  */
 public function isPlaying(): Bool;
}
