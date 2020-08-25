package rm.objects;

import rm.types.RPG;

@:expose("Game_CommonEvent")
@:native("Game_CommonEvent")
extern class Game_CommonEvent {
 @:native("_commonEventId")
 public var __commonEventId: Int;
 private var _commonEventId: Int;
 @:native("_interpreter")
 public var __interpreter: Game_Interpreter;
 private var _interpreter: Game_Interpreter;

 public function new(commonEventId: Int);

 public function initialize(commonEventId: Int): Void;

 /**
  * Returns the common event information from the database.
  *
  * @returns {CommonEvent}
  * @memberof Game_CommonEvent
  */
 public function event(): CommonEvent;

 /**
  * Returns the common event's list of event commands.
  *
  * @returns {Array<EventCommand>}
  * @memberof Game_CommonEvent
  */
 public function list(): Array<EventCommand>;

 /**
  * Refreshes the common event.
  *
  * @memberof Game_CommonEvent
  */
 public function refresh(): Void;

 /**
  * Returns true if the common event is active.
  *
  * @returns {boolean}
  * @memberof Game_CommonEvent
  */
 public function isActive(): Bool;

 /**
  * Updates the common event.
  *
  * @memberof Game_CommonEvent
  */
 public function update(): Void;
}
