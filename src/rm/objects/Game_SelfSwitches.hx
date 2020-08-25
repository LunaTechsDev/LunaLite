package rm.objects;

import haxe.DynamicAccess;

/**
 *  The game object class for self switches.
 */
@:expose("Game_SelfSwitches")
@:native("Game_SelfSwitches")
extern class Game_SelfSwitches {
 /**
  * {key: Array<Any>}
  */
 @:native("_data")
 public var __data: DynamicAccess<Dynamic>;

 /**
  * {key: Array<Any>}
  */
 private var _data: DynamicAccess<Dynamic>;

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
