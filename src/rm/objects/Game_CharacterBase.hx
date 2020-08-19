package rm.objects;

/**
 * The super class of Game Character. It handles basic
 * information such as coordinates, images, and more
 * shared by all characters.
 */
@:native("Game_CharacterBase")
extern class Game_CharacterBase {
 private var _x: Int;
 private var _y: Int;
 private var _realX: Int;
 private var _realY: Int;
 private var _moveSpeed: Int;
 private var _moveFrequency: Int;
 private var _opacity: Int;
 private var _blendMode: Int;
 private var _direction: Int;
 private var _pattern: Int;
 private var _priorityType: Int;
 private var _tileId: Int;
 private var _characterName: String;
 private var _characterIndex: Int;
 private var _isObjectCharacter: Bool;
 private var _walkAnime: Bool;
 private var _stepAnime: Bool;
 private var _directionFix: Bool;
 private var _through: Bool;
 private var _transparent: Bool;
 private var _bushDepth: Int;
 private var _animationId: Int;
 private var _balloonId: Int;
 private var _animationPlaying: Bool;
 private var _balloonPlaying: Bool;
 private var _animationCount: Int;
 private var _stopCount: Int;
 private var _jumpCount: Int;
 private var _jumpPeak: Int;
 private var _movementSuccess: Bool;

 public function new(): Void;
 public function initialize(): Void;

 /** [read-only] */
 public var x: Int;

 /** [read-only] */
 public var y: Int;

 public function initMembers(): Void;
 public function pos(x: Int, y: Int): Bool;
 public function posNt(x: Int, y: Int): Bool;

 /**
  * Returns the move speed of the game character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function moveSpeed(): Int;

 public function setMoveSpeed(moveSpeed: Int): Void;

 /**
  * Returns the move frequency of the character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function moveFrequency(): Int;

 public function setMoveFrequency(moveFrequency: Int): Void;
 public function opacity(): Int;
 public function setOpacity(opacity: Int): Void;

 /**
  * Returns the blend mode of the character;
  * these are represented by Ints.
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function blendMode(): Int;

 /**
  * Sets the blend mode of the character;
  * these are represented by Ints.
  * @param {Int} blendMode
  * @memberof Game_CharacterBase
  */
 public function setBlendMode(blendMode: Int): Void;

 /**
  * Returns true if the character is
  * normal priority; this means you can collide with them.
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isNormalPriority(): Bool;

 public function setPriorityType(priorityType: Int): Void;

 /**
  * Returns true if the character is moving.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isMoving(): Bool;

 /**
  * Returns true if the character is jumping.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isJumping(): Bool;

 /**
  * Returns the jump height of base character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function jumpHeight(): Int;

 /**
  * Returns true if the character is stopping.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isStopping(): Bool;

 public function checkStop(threshold: Int): Bool;

 /**
  * Resets the step count of the character.
  *
  * @memberof Game_CharacterBase
  */
 public function resetStopCount(): Void;

 public function realMoveSpeed(): Int;
 public function distancePerFrame(): Int;

 /**
  * Returns true if the character is dashing.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isDashing(): Bool;

 public function isDebugThrough(): Bool;

 /**
  * Straightens the character.
  *
  * @memberof Game_CharacterBase
  */
 public function straighten(): Void;

 public function reverseDir(d: Int): Int;
 public function canPass(x: Int, y: Int, d: Int): Bool;
 public function canPassDiagonally(x: Int, y: Int, horz: Int, vert: Int): Bool;
 public function isMapPassable(x: Int, y: Int, d: Int): Bool;
 public function isCollidedWithCharacters(x: Int, y: Int): Bool;
 public function isCollidedWithEvents(x: Int, y: Int): Bool;
 public function isCollidedWithVehicles(x: Int, y: Int): Bool;
 public function setPosition(x: Int, y: Int): Void;
 public function copyPosition(character: Game_Player): Void;
 public function locate(x: Int, y: Int): Void;
 public function direction(): Int;

 /**
  * Sets the direction of the character based on numpad
  * directions.
  * @param {Int} d
  * @memberof Game_CharacterBase
  */
 public function setDirection(d: Int): Void;

 /**
  * Returns true if the character is a tile; these
  * are events without character sprites.
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isTile(): Bool;

 /**
  * Returns true if the character is an object character;
  * these are events with character sprites.
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isObjectCharacter(): Bool;

 public function shiftY(): Int;
 public function scrolledX(): Int;
 public function scrolledY(): Int;

 /**
  * Returns the character's scrreen x position.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function screenX(): Int;

 /**
  * Returns the character's screen y position.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function screenY(): Int;

 /**
  * Returns the character's screen z position.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function screenZ(): Int;

 public function isNearTheScreen(): Bool;
 public function update(): Void;
 public function updateStop(): Void;
 public function updateJump(): Void;
 public function updateMove(): Void;
 public function updateAnimation(): Void;
 public function animationWait(): Int;

 /**
  * Updates the character's animation count.
  *
  * @memberof Game_CharacterBase
  */
 public function updateAnimationCount(): Void;

 public function updatePattern(): Void;
 public function maxPattern(): Int;

 /**
  * Returns the pattern of the character; these are the walking
  * patterns.
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function pattern(): Int;

 /**
  * Sets the pattern of the character, given
  * a pattern Int.
  * @param {Int} pattern
  * @memberof Game_CharacterBase
  */
 public function setPattern(pattern: Int): Void;

 public function isOriginalPattern(): Bool;

 /**
  * Resets the pattern of the character.
  *
  * @memberof Game_CharacterBase
  */
 public function resetPattern(): Void;

 public function refreshBushDepth(): Void;
 public function isOnLadder(): Bool;
 public function isOnBush(): Bool;

 /**
  * Returns the terrain tag of the character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function terrainTag(): Int;

 /**
  * Returns the region id of the character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function regionId(): Int;

 /**
  * Increases the character steps.
  *
  * @memberof Game_CharacterBase
  */
 public function increaseSteps(): Void;

 /**
  * Returns the tile id of character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function tileId(): Int;

 public function characterName(): String;
 public function characterIndex(): Int;
 public function setImage(characterName: String, characterIndex: Int): Void;
 public function setTileImage(tileId: Int): Void;
 public function checkEventTriggerTouchFront(d: Int): Void;
 public function checkEventTriggerTouch(x: Int, y: Int): Bool;
 public function isMovementSucceeded(x: Int, y: Int): Bool;
 public function setMovementSuccess(success: Bool): Void;
 public function moveStraight(d: Int): Void;
 public function moveDiagonally(horz: Int, vert: Int): Void;
 public function jump(xPlus: Int, yPlus: Int): Void;
 public function hasWalkAnime(): Bool;
 public function setWalkAnime(walkAnime: Bool): Void;

 /**
  * Returns true if the character has step animation.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function hasStepAnime(): Bool;

 public function setStepAnime(stepAnime: Bool): Void;

 /**
  * Returns true if the character is set to a fixed direction.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isDirectionFixed(): Bool;

 /**
  * Sets the character to be fixed in a specified direction
  * given a Bool value.
  * @param {Bool} directionFix
  * @memberof Game_CharacterBase
  */
 public function setDirectionFix(directionFix: Bool): Void;

 /**
  * Returns true if the character is set to pass through.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isThrough(): Bool;

 public function setThrough(through: Bool): Void;
 public function isTransparent(): Bool;

 /**
  * Returns the bush depth around the character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function bushDepth(): Int;

 public function setTransparent(transparent: Bool): Void;

 /**
  * Requests an animation given the animation id.
  *
  * @param {Int} animationId
  * @memberof Game_CharacterBase
  */
 public function requestAnimation(animationId: Int): Void;

 /**
  * Requests the balloon animation given the balloon id.
  *
  * @param {Int} balloonId
  * @memberof Game_CharacterBase
  */
 public function requestBalloon(balloonId: Int): Void;

 /**
  * Returns the animation id.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function animationId(): Int;

 /**
  * Returns the id of the balloon animation.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public function balloonId(): Int;

 /**
  * Starts the requested animation.
  *
  * @memberof Game_CharacterBase
  */
 public function startAnimation(): Void;

 /**
  * Stars a balloon animation.
  *
  * @memberof Game_CharacterBase
  */
 public function startBalloon(): Void;

 public function isAnimationPlaying(): Bool;

 /**
  * Returns true if a balloon animation is playing.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isBalloonPlaying(): Bool;

 public function endAnimation(): Void;

 /**
  * Ends the balloon animation on the character.
  *
  * @memberof Game_CharacterBase
  */
 public function endBalloon(): Void;
}
