package rm.objects;

import rm.types.LunaTea.Direction;
import rm.types.LunaTea.CharacterPattern;
import rm.types.LunaTea.EventTrigger;
import rm.types.LunaTea.MoveType;
import js.html.rtc.PriorityType;
import rm.types.RPG.MoveRoute;
import rm.types.RPG.EventPage;
import rm.types.RPG.Event;
import rm.types.RPG.EventCommand;

/**
 * THe game object class for an event. It contains functionality
 * for event page switching and running parallel process events.
 */
@:expose("Game_Event")
@:native("Game_Event")
extern class Game_Event extends Game_Character {
 @:native("_mapId")
 public var __mapId: Int;
 private var _mapId: Int;
 @:native("_eventId")
 public var __eventId: Int;
 private var _eventId: Int;
 @:native("_moveType")
 public var __moveType: MoveType;
 private var _moveType: MoveType; // Cast this  to an abstract enum
 @:native("_trigger")
 public var __triger: EventTrigger;
 private var _trigger: EventTrigger;
 @:native("_starting")
 public var __starting: Bool;
 private var _starting: Bool;
 @:native("_erased")
 public var __erased: Bool;
 private var _erased: Bool;
 @:native("_pageIndex")
 public var __pageIndex: Int;
 private var _pageIndex: Int;
 @:native("_originalPattern")
 public var __originalPattern: CharacterPattern;
 private var _originalPattern: CharacterPattern;
 @:native("_originalDirection")
 public var __originalDirection: Direction;
 private var _originalDirection: Direction;
 @:native("_prelockDirection")
 public var __prelockDirection: Direction;
 private var _prelockDirection: Direction;
 @:native("_locked")
 public var __locked: Bool;
 private var _locked: Bool;

 public function new(mapId: Int, eventId: Int);
 public function initialize(mapId: Int, eventId: Int): Void;

 public function initMembers(): Void;

 /**
  * Returns the event id of the game event.
  *
  * @returns {Int}
  * @memberof Game_Event
  */
 public function eventId(): Int;

 /**
  * Returns the event database information.
  *
  * @returns {RPG.Event}
  * @memberof Game_Event
  */
 public function event(): Event;

 /**
  * Returns the event page created in the database.
  *
  * @returns {RPG.EventPage}
  * @memberof Game_Event
  */
 public function page(): EventPage;

 /**
  * Returns the list of event commands on the current page of the game event.
  *
  * @returns {Array<RPG.EventCommand>}
  * @memberof Game_Event
  */
 public function list(): Array<EventCommand>;

 public function isCollidedWithCharacters(x: Int, y: Int): Bool;
 public function isCollidedWithEvents(x: Int, y: Int): Bool;

 /**
  * Returns true if the event has collided with the player character
  * at the specified x and y coordinates.
  * @param {Int} x
  * @param {Int} y
  * @returns {Bool}
  * @memberof Game_Event
  */
 public function isCollidedWithPlayerCharacters(x: Int, y: Int): Bool;

 /**
  * Locks the game event.
  *
  * @memberof Game_Event
  */
 public function lock(): Void;

 /**
  * Unlocks the game eveent.
  *
  * @memberof Game_Event
  */
 public function unlock(): Void;

 public function updateStop(): Void;

 /**
  * Updates the self movement of the game event.
  *
  * @memberof Game_Event
  */
 public function updateSelfMovement(): Void;

 public function stopCountThreshold(): Int;
 public function moveTypeRandom(): Void;
 public function moveTypeTowardPlayer(): Void;

 /**
  * Returns true if the game event is near the player.
  *
  * @returns {Bool}
  * @memberof Game_Event
  */
 public function isNearThePlayer(): Bool;

 public function moveTypeCustom(): Void;

 /**
  * Returns true if the event is staring.
  *
  * @returns {Bool}
  * @memberof Game_Event
  */
 public function isStarting(): Bool;

 /**
  * Clears the starting flag.
  *
  * @memberof Game_Event
  */
 public function clearStartingFlag(): Void;

 public function isTriggerIn(triggers: Array<Int>): Bool;

 /**
  * Starts the game event.
  *
  * @memberof Game_Event
  */
 public function start(): Void;

 /**
  * Erases the event.
  *
  * @memberof Game_Event
  */
 public function erase(): Void;

 /**
  * Refreshes the game event.
  *
  * @memberof Game_Event
  */
 public function refresh(): Void;

 /**
  * Finds the proper page index of the game event for
  * event command processing.
  * @returns {Int}
  * @memberof Game_Event
  */
 public function findProperPageIndex(): Int;

 public function meetsConditions(page: EventPage): Bool;

 /**
  * Sets up the event page.
  *
  * @memberof Game_Event
  */
 public function setupPage(): Void;

 /**
  * Clears the page settings of the game event.
  *
  * @memberof Game_Event
  */
 public function clearPageSettings(): Void;

 /**
  * Sets up the event page settings.
  *
  * @memberof Game_Event
  */
 public function setupPageSettings(): Void;

 public function isOriginalPattern(): Bool;

 /**
  * Resets the pattern of the game event.
  *
  * @memberof Game_Event
  */
 public function resetPattern(): Void;

 public function checkEventTriggerAuto(): Void;
 public function update(): Void;
 public function updateParallel(): Void;
 public function locate(x: Int, y: Int): Void;

 /**
  * Forces the game event to move along the specified route.
  *
  * @param {RPG.MoveRoute} moveRoute
  * @memberof Game_Event
  */
 public function forceMoveRoute(moveRoute: MoveRoute): Void;
}
