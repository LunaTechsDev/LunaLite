package rm.sprites;

import rm.types.LunaTea.CharacterPattern;
import rm.core.Bitmap;
import rm.objects.Game_Character;
import rm.core.Sprite;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Character
 *
 * The sprite for displaying a character.
 */
@:expose("Sprite_Character")
@:native("Sprite_Character")
extern class Sprite_Character extends Sprite_Base {
 /**
  * The Game_Character object assigned
  * to the sprite.
  * @private var
  * @type {Game_Character}
  * @memberof Sprite_Character
  */
 private var _character: Game_Character;

 private var _balloonDuration: Int;
 private var _tilesetId: Int;
 private var _upperBody: Int;
 private var _lowerBody: Sprite;
 private var _bushDepth: Int;

 /**
  * The current balloon sprite
  * assigned to the sprite.
  * @private var
  * @type {Sprite_Balloon}
  * @memberof Sprite_Character
  */
 private var _balloonSprite: Sprite_Balloon;

 /**
  * Creates an instance of Sprite_Character.
  * @param {Game_Character} character
  * @memberof Sprite_Character
  */
 public function new(character: Game_Character): Void;

 public function initialize(character: Game_Character): Void;

 public function initMembers(): Void;

 /**
  * Sets the current Game_Character object
  * attached to the sprite.
  * @param {Game_Character} character
  * @memberof Sprite_Character
  */
 public function setCharacter(character: Game_Character): Void;

 /**
  * Returns true if the Game_Character object
  * tileId is greater than 0.
  * @returns {Bool}
  * @memberof Sprite_Character
  */
 public function isTile(): Bool;

 public function tilesetBitmap(tileId: Int): Bitmap;

 /**
  * Updates the bitmap of the sprite character.
  *
  * @memberof Sprite_Character
  */
 public function updateBitmap(): Void;

 /**
  * Returns true if the sprite character image has changed.
  *
  * @returns {Bool}
  * @memberof Sprite_Character
  */
 public function isImageChanged(): Bool;

 public function setTileBitmap(): Void;

 /**
  * Sets the sprite character bitmap.
  *
  * @memberof Sprite_Character
  */
 public function setCharacterBitmap(): Void;

 /**
  * Updates the sprite character frame.
  *
  * @memberof Sprite_Character
  */
 public function updateFrame(): Void;

 /**
  * Updates the sprite character tile frame.
  *
  * @memberof Sprite_Character
  */
 public function updateTileFrame(): Void;

 /**
  * Updates the sprite character -- character frame.
  *
  * @memberof Sprite_Character
  */
 public function updateCharacterFrame(): Void;

 public function characterBlockX(): Int;
 public function characterBlockY(): Int;

 /**
  * Returns the character x pattern.
  *
  * @returns {number}
  * @memberof Sprite_Character
  */
 public function characterPatternX(): CharacterPattern;

 /**
  * Returns the character y pattern.
  *
  * @returns {number}
  * @memberof Sprite_Character
  */
 public function characterPatternY(): CharacterPattern;

 /**
  * Returns the pattern width.
  *
  * @returns {number}
  * @memberof Sprite_Character
  */
 public function patternWidth(): Int;

 /**
  * Returns the pattern height.
  *
  * @returns {number}
  * @memberof Sprite_Character
  */
 public function patternHeight(): Int;

 public function updateHalfBodySprites(): Void;
 public function createHalfBodySprites(): Void;

 /**
  * Updates the position of the sprite character.
  *
  * @memberof Sprite_Character
  */
 public function updatePosition(): Void;

 public function updateAnimation(): Void;
 public function updateOther(): Void;
 public function setupAnimation(): Void;

 /**
  * Sets up the Game_Character object
  * balloon sprite, and calls the startBalloon method.
  * @memberof Sprite_Character
  */
 public function setupBalloon(): Void;

 /**
  * Starts the balloon sprite on the
  * Game_Character object.
  * @memberof Sprite_Character
  */
 public function startBalloon(): Void;

 /**
  * Processes the balloon sprite, calls
  * the endBaloon method if the balloon sprite is done playing.
  * @memberof Sprite_Character
  */
 public function updateBalloon(): Void;

 /**
      * Ends the balloon sprite, removing it from
      * the Game_Character object sprite.
  * @memberof Sprite_Character
  */
 public function endBalloon(): Void;

 /**
    * Returns true if a balloon animation
    * is playing on the character.
  * @returns {Bool}
  * @memberof Sprite_Character
  */
 public function isBalloonPlaying(): Bool;
}
