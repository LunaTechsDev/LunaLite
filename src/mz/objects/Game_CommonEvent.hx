package mz.objects;

import mz.types.RPG;

@:native("Game_CommonEvent")
extern class Game_CommonEvent {
 private var _commonEventId:Int;
 private var _interpreter:Game_Interpreter;
 public function new(commonEventId:Int);

 /**
  * Returns the common event information from the database.
  *
  * @returns {CommonEvent}
  * @memberof Game_CommonEvent
  */
 public function event():CommonEvent;

 /**
  * Returns the common event's list of event commands.
  *
  * @returns {Array<EventCommand>}
  * @memberof Game_CommonEvent
  */
 public function list():Array<EventCommand>;

 /**
  * Refreshes the common event.
  *
  * @memberof Game_CommonEvent
  */
 public function refresh():Void;

 /**
  * Returns true if the common event is active.
  *
  * @returns {boolean}
  * @memberof Game_CommonEvent
  */
 public function isActive():Bool;

 /**
  * Updates the common event.
  *
  * @memberof Game_CommonEvent
  */
 public function update():Void;
}
