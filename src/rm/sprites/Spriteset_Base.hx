package rm.sprites;

import rm.core.ToneFilter;
import rm.core.ToneSprite;
import rm.core.ScreenSprite;
import rm.core.Sprite;

/**
 * -----------------------------------------------------------------------------
 * Spriteset_Base
 *
 * The superdeclare class of Spriteset_Map and Spriteset_Battle.
 */
@:native("Spriteset_Base")
extern class Spriteset_Base extends Sprite {
 private var _tone: Array<Int>;
 private var _baseSprite: Sprite;
 private var _blackScreen: ScreenSprite;
 private var _toneFilter: ToneFilter;
 private var _toneSprite: ToneSprite;
 private var _pictureContainer: Sprite;
 private var _timerSprite: Sprite_Timer;
 private var _flashSprite: ScreenSprite;
 private var _fadeSprite: ScreenSprite;

 /**
  * Creates the lower layer including the base sprites.
  *
  * @memberof Spriteset_Base
  */
 public function createLowerLayer(): Void;

 /**
  * Creates the upper layer including the pictures,
  * timer, and screen sprites.
  * @memberof Spriteset_Base
  */
 public function createUpperLayer(): Void;

 /**
  * Create the base sprite.
  *
  * @memberof Spriteset_Base
  */
 public function createBaseSprite(): Void;

 /**
  * Creates the tone changer sprite.
  *
  * @memberof Spriteset_Base
  */
 public function createToneChanger(): Void;

 /**
  * Creates the WebGL toner.
  *
  * @memberof Spriteset_Base
  */
 public function createWebGLToneChanger(): Void;

 /**
  * Creates the Canvas tone.
  *
  * @memberof Spriteset_Base
  */
 public function createCanvasToneChanger(): Void;

 /**
  * Creates a new sprite picture on the spritesetb ase.
  *
  * @memberof Spriteset_Base
  */
 public function createPictures(): Void;

 /**
  * Creates a new Sprite timer on the spriteset base.
  *
  * @memberof Spriteset_Base
  */
 public function createTimer(): Void;

 /**
  * Creates the screen sprite.
  *
  * @memberof Spriteset_Base
  */
 public function createScreenSprites(): Void;

 /**
  * Updates the screen sprites on the spriteset base.
  *
  * @memberof Spriteset_Base
  */
 public function updateScreenSprites(): Void;

 public function updateToneChanger(): Void;

 /**
  * Updates the WebGL tone changer.
  *
  * @memberof Spriteset_Base
  */
 public function updateWebGLToneChanger(): Void;

 /**
  * Updates the Canvas tone changer.
  *
  * @memberof Spriteset_Base
  */
 public function updateCanvasToneChanger(): Void;

 /**
  * Updates the position of spriteset base.
  *
  * @memberof Spriteset_Base
  */
 public function updatePosition(): Void;
}
