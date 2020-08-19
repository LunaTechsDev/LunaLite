package rm.objects;

/**
 * The game object class for the timer.
 *
 * @class Game_Timer
 */
@:native("Game_Timer")
extern class Game_Timer {
 private var _frames: Int;
 private var _working: Bool;

 public function new(): Void;

 public function initialize(): Void;

 /**
  * Updates the game timer.
  *
  * @param {boolean} sceneActive
  * @memberof Game_Timer
  */
 public function update(sceneActive: Bool): Void;

 /**
  * Starts the timer with the specified number of frames as count.
  *
  * @param {number} count
  * @memberof Game_Timer
  */
 public function start(count: Int): Void;

 /**
  * Stops the timer.
  *
  * @memberof Game_Timer
  */
 public function stop(): Void;

 /**
  * Returns true if the timer is working and counting down.
  *
  * @returns {boolean}
  * @memberof Game_Timer
  */
 public function isWorking(): Void;

 /**
  * Returns the number of seconds on the timer.
  *
  * @returns {number}
  * @memberof Game_Timer
  */
 public function seconds(): Int;

 /**
  * Handler for when the time expires on the timer.
  *
  * @memberof Game_Timer
  */
 public function onExpire(): Void;
}
