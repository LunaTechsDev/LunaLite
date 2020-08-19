package rm.objects;

/**
 *  The game object class for self switches.
 */
@:native("Game_SelfSwitches")
extern class Game_SelfSwitches {
 private var _data: {key: Array<Any>};

 public function new(): Void;
 public function initialize(): Void;

 /**
  * Clears the array of data for the game's self switches.
  *
  * @memberof Game_SelfSwitches
  */
 public function clear(): Void;

 /**
  * Returns the value of the switch at the current key;
  * the value is a boolean (true or false).
  * @param {Array<any>} key
  * @returns {boolean}
  * @memberof Game_SelfSwitches
  */
 public function value(key: Array<Any>): Bool;

 /**
  * Sets the value of the key of the respected self switch.
  *
  * @param {Array<any>} key
  * @param {boolean} value
  * @memberof Game_SelfSwitches
  */
 public function setValue(key: Array<Any>, value: Bool): Void;

 public function onChange(): Void;
}
