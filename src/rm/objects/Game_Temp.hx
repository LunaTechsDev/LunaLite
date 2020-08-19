package rm.objects;

/**
 * The game object class for temporary data that is not
 * included in the save data.
 * @class Game_Temp
 */
@:native("Game_Temp")
extern class Game_Temp {
 private var _isPlaytest: Bool;
 private var _commonEventId: Int;
 private var _destinationX: Int;
 private var _destinationY: Int;
 public function new(): Void;

 public function initialize(): Void;

 /**
  * Determines if the game is in Play Test mode.
  *
  * @returns {boolean}
  * @memberof Game_Temp
  */
 public function isPlaytest(): Bool;

 /**
  * Reserves the given commonEventId to be processed later.
  *
  * @param {number} commonEventId
  * @memberof Game_Temp
  */
 public function reserveCommonEvent(commonEventId: Int): Void;

 /**
  * Clears the current reserved common event.
  *
  * @memberof Game_Temp
  */
 public function clearCommonEvent(): Void;

 /**
  * Returns true if a common event has been reserved.
  *
  * @returns {boolean}
  * @memberof Game_Temp
  */
 public function isCommonEventReserved(): Bool;

 /**
  * Returns common event data from the database.
  *
  * @returns {any}
  * @memberof Game_Temp
  */
 public function reservedCommonEvent(): Any;

 /**
  * Sets the destination of the player for movement.
  *
  * @param {number} x
  * @param {number} y
  * @memberof Game_Temp
  */
 public function setDestination(x: Int, y: Int): Void;

 /**
  * Clears the destination of movement for the player.
  *
  * @memberof Game_Temp
  */
 public function clearDestination(): Void;

 /**
  * Determines if the destination for the player to move to is valid.
  *
  * @returns {boolean}
  * @memberof Game_Temp
  */
 public function isDestinationValid(): Bool;

 /**
  * Returns the x coordinate of the destination.
  *
  * @returns {number}
  * @memberof Game_Temp
  */
 public function destinationX(): Int;

 /**
  * Returns the y coordinate of the destination.
  *
  * @returns {number}
  * @memberof Game_Temp
  */
 public function destinationY(): Int;
}
