package rm.sprites;

import rm.core.Bitmap;
import rm.core.Sprite;
import rm.core.ScreenSprite;
import rm.types.RPG.Animation;
import rm.types.RPG.AnimationTiming;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Animation
 *
 * The sprite for displaying an animation.
 */
@:native("Sprite_Animation")
extern class Sprite_Animation extends Sprite {
 // TODO: Handle these in Haxe
 private static var _checker1: {
  key: Animation
 };
 // TODO: Handle these in Haxe
 private static var _checker2: {
  key: Animation
 };
 private var _target: Sprite_Base;

 private var _animation: Animation;

 private var _mirror: Bool;

 private var _delay: Int;

 private var _rate_: Float; // TODO: Not sure if intentionaL?

 private var _duration: Int;

 private var _flashColor: Array<Int>;

 private var _flashDuration: Int;

 private var _screenFlashDuration: Int;

 private var _hidingDuration: Int;

 private var _bitmap1: Bitmap;

 private var _bitmap2: Bitmap;

 private var _cellSprites: Array<Sprite>;

 private var _screenFlashSprite: ScreenSprite;

 private var _duplicated: Bool;

 private var _reduceArtifacts: Bool;

 public function initMembers(): Void;
 public function setup(target: Sprite_Base, animation: Animation,
  mirror: Bool, delay: Int): Void;

 /**
  * Removes the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public function remove(): Void;

 public function setupRate(): Void;

 public function setupDuration(): Void;

 /**
  * Updates the flash animation of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public function updateFlash(): Void;

 public function updateScreenFlash(): Void;

 /**
  * Returns the absolute x position of the sprite animation.
  *
  * @returns {number}
  * @memberof Sprite_Animation
  */
 public function absoluteX(): Float;

 /**
  * Returns the absolute y position of the sprite aniamtion.
  *
  * @returns {number}
  * @memberof Sprite_Animation
  */
 public function absoluteY(): Float;

 /**
  * Updates the hiding of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public function updateHiding(): Void;

 /**
  * Returns true if the sprite animation is playing.
  *
  * @returns {boolean}
  * @memberof Sprite_Animation
  */
 public function isPlaying(): Bool;

 /**
  * Loads the bitmaps of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public function loadBitmaps(): Void;

 /**
  * Returns true if the sprite animation is ready.
  *
  * @returns {boolean}
  * @memberof Sprite_Animation
  */
 public function isReady(): Bool;

 /**
  * Create the sprites of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public function createSprites(): Void;

 /**
  * Create the cell sprites of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public function createCellSprites(): Void;

 /**
  * Create the screen flash sprite of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public function createScreenFlashSprite(): Void;

 /**
  * Updates the main loop of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public function updateMain(): Void;

 /**
  * Updates the position of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public function updatePosition(): Void;

 /**
  * Updates the frame of the sprite aniamtion.
  *
  * @memberof Sprite_Animation
  */
 public function updateFrame(): Void;

 /**
  * Returns the current frame index of the sprite aniamtion.
  *
  * @returns {number}
  * @memberof Sprite_Animation
  */
 public function currentFrameIndex(): Int;

 public function updateAllCellSprites(frame: Array<Array<Int>>): Void;
 public function updateCellSprite(sprite: Sprite, cell: Array<Int>): Void;
 public function processTimingData(timing: AnimationTiming): Void;
 public function startFlash(color: Array<Int>, duration: Int): Void;
 public function startScreenFlash(color: Array<Int>, duration: Int): Void;

 /**
  * Starts hiding the sprite animation.
  *
  * @param {number} duration The duration of the hide.
  * @memberof Sprite_Animation
  */
 public function startHiding(duration: Int): Void;
}
