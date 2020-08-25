package rm.objects;

import rm.types.RPG;

/**
 * The game object for the map. It contains scrolling and passage functions
 * along with the game interpreter.
 */
@:expose("Game_Map")
@:native("Game_Map")
extern class Game_Map {
 @:native("_interpreter")
 public var __interpreter: Game_Interpreter;
 private var _interpreter: Game_Interpreter;
 @:native("_mapId")
 public var __mapId: Int;
 private var _mapId: Int;
 @:native("_tilesetId")
 public var __tilesetId: Int;
 private var _tilesetId: Int;
 @:native("_events")
 public var __events: Array<Game_Event>;
 private var _events: Array<Game_Event>;
 @:native("_commonEvents")
 public var __commonEvents: Array<Game_CommonEvent>;
 private var _commonEvents: Array<Game_CommonEvent>;
 @:native("_vehicles")
 public var __vehicles: Array<Game_Vehicle>;
 private var _vehicles: Array<Game_Vehicle>;
 @:native("_displayX")
 public var __displayX: Int;
 private var _displayX: Int;
 @:native("_displayY")
 public var __displayY: Int;
 private var _displayY: Int;
 @:native("_nameDisplay")
 public var __nameDisplay: Bool;
 private var _nameDisplay: Bool;
 @:native("_scrollDirection")
 public var __scrollDirection: Int;
 private var _scrollDirection: Int;
 @:native("_scrollRest")
 public var __scrollRest: Float;
 private var _scrollRest: Float;
 @:native("_scrollSpeed")
 public var __scrollSpeed: Float;
 private var _scrollSpeed: Float;
 @:native("_parallaxName")
 public var __parallaxName: String;
 private var _parallaxName: String;
 @:native("_parallaxZero")
 public var __parallaxZero: Bool;
 private var _parallaxZero: Bool;
 @:native("_parallaxLoopX")
 public var __parallaxLoopX: Bool;
 private var _parallaxLoopX: Bool;
 @:native("_parallaxLoopY")
 public var __parallaxLoopY: Bool;
 private var _parallaxLoopY: Bool;
 @:native("_parallaxSx")
 public var __parallaxSx: Int;
 private var _parallaxSx: Int;
 @:native("_parallaxSy")
 public var __parallaxSy: Int;
 private var _parallaxSy: Int;
 @:native("_parallaxX")
 public var __parallaxX: Int;
 private var _parallaxX: Int;
 @:native("_parallaxY")
 public var __parallaxY: Int;
 private var _parallaxY: Int;
 @:native("_battleback1Name")
 public var __battleback1Name: String;
 private var _battleback1Name: String;
 @:native("_battleback2Name")
 public var __battleback2Name: String;
 private var _battleback2Name: String;
 @:native("_needsRefresh")
 public var __needsRefresh: Bool;
 private var _needsRefresh: Bool;

 public function new(): Void;
 public function initialize(): Void;

 public function setup(mapId: Int): Void;

 /**
  * Returns true if an event is running.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isEventRunning(): Bool;

 /**
  * Returns tile width.
  *
  * @returns {Int}
  * @memberof Game_Map
  */
 public function tileWidth(): Int;

 /**
  * Returns tile height.
  *
  * @returns {Int}
  * @memberof Game_Map
  */
 public function tileHeight(): Int;

 /**
  * Returns map id.
  *
  * @returns {Int}
  * @memberof Game_Map
  */
 public function mapId(): Int;

 /**
  * Returns the tileset id.
  *
  * @returns {Int}
  * @memberof Game_Map
  */
 public function tilesetId(): Int;

 /**
  * Returns the display x coordinate.
  *
  * @returns {Int}
  * @memberof Game_Map
  */
 public function displayX(): Int;

 /**
  * Returns the display y coordinate.
  *
  * @returns {Int}
  * @memberof Game_Map
  */
 public function displayY(): Int;

 public function parallaxName(): String;

 /**
  * Returns the name of battle back 1.
  *
  * @returns {String}
  * @memberof Game_Map
  */
 public function battleback1Name(): String;

 /**
  * Returns the name of battle back 2.
  *
  * @returns {String}
  * @memberof Game_Map
  */
 public function battleback2Name(): String;

 public function requestRefresh(mapId: Int): Void;

 /**
  * Returns true if the name display is enabled.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isNameDisplayEnabled(): Bool;

 /**
  * Disables name display.
  *
  * @memberof Game_Map
  */
 public function disableNameDisplay(): Void;

 /**
  * Enable name display.
  *
  * @memberof Game_Map
  */
 public function enableNameDisplay(): Void;

 /**
  * Creates the vehicles for the game map.
  *
  * @memberof Game_Map
  */
 public function createVehicles(): Void;

 /**
  * Refreshes the vehicles on the game map.
  *
  * @memberof Game_Map
  */
 public function refereshVehicles(): Void;

 public function vehicles(): Array<Game_Vehicle>;

 /**
  * Returns the game vehicle specified by type.
  *
  * @param {String} type
  * @returns {Game_Vehicle}
  * @memberof Game_Map
  */
 public function vehicle(type: String): Game_Vehicle;

 /**
  * Returns the game boat.
  *
  * @returns {Game_Vehicle}
  * @memberof Game_Map
  */
 public function boat(): Game_Vehicle;

 /**
  * Returns the game ship.
  *
  * @returns {Game_Vehicle}
  * @memberof Game_Map
  */
 public function ship(): Game_Vehicle;

 /**
  * Returns the game airship.
  *
  * @returns {Game_Vehicle}
  * @memberof Game_Map
  */
 public function airship(): Game_Vehicle;

 public function setupEvents(): Void;

 /**
  * Returns all events on the game map.
  *
  * @returns {Array<Game_Event>}
  * @memberof Game_Map
  */
 public function events(): Array<Game_Event>;

 /**
  * Returns an event, given the event id.
  *
  * @param {Int} eventId
  * @returns {Game_Event}
  * @memberof Game_Map
  */
 public function event(eventId: Int): Game_Event;

 /**
  * Erases the event given the event id.
  *
  * @param {Int} eventId
  * @memberof Game_Map
  */
 public function eraseEvent(eventId: Int): Void;

 /**
  * Returns all the parallel running common events.
  *
  * @returns {Array<RPG.CommonEvent>}
  * @memberof Game_Map
  */
 public function parallelCommonEvents(): Array<CommonEvent>;

 public function setupScroll(): Void;

 public function setupParallax(): Void;

 public function setupBattleback(): Void;

 public function setDisplayPos(x: Int, y: Int): Void;

 public function parallaxOx(): Int;

 public function parallaxOy(): Int;

 /**
  * Returns the tilset of the game map.
  *
  * @returns {RPG.Tileset}
  * @memberof Game_Map
  */
 public function tileset(): Tileset;

 /**
  * Returns the tileset flags of the game map.
  *
  * @returns {Array<Int>}
  * @memberof Game_Map
  */
 public function tilesetFlags(): Array<Int>;

 /**
  * Returns the display name of the game map.
  *
  * @returns {String}
  * @memberof Game_Map
  */
 public function displayName(): String;

 /**
  * Returns the map width.
  *
  * @returns {Int}
  * @memberof Game_Map
  */
 public function width(): Int;

 /**
  * Returns the map height.
  *
  * @returns {Int}
  * @memberof Game_Map
  */
 public function height(): Int;

 /**
  * Returns the map data.
  *
  * @returns {Array<Int>}
  * @memberof Game_Map
  */
 public function data(): Array<Int>;

 /**
  * Returns true if the map loops horizontally.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isLoopHorizontal(): Bool;

 /**
  * Returns true if the map loops vertically.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isLoopVertical(): Bool;

 /**
  * Returns true if dash is disabled on the map.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isDashDisabled(): Bool;

 /**
  * Returns the list of possible encounters on the current map.
  *
  * @returns {Array<RPG.Map.Encounter>}
  * @memberof Game_Map
  */
 public function encounterList(): Array<MapEncounter>;

 /**
  * Returns the Int of encounter steps on the map.
  *
  * @returns {Int}
  * @memberof Game_Map
  */
 public function encounterStep(): Int;

 /**
  * Returns true if the map is an over world map.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isOverworld(): Bool;

 /**
  * Returns the screen tile x coordinate.
  *
  * @returns {Int}
  * @memberof Game_Map
  */
 public function screenTileX(): Int;

 /**
  * Returns the screen tile y coordinate.
  *
  * @returns {Int}
  * @memberof Game_Map
  */
 public function screenTileY(): Int;

 public function adjustX(x: Int): Int;

 public function adjustY(y: Int): Int;

 public function roundX(x: Int): Int;

 public function roundY(y: Int): Int;

 public function xWithDirection(x: Int, d: Int): Int;

 public function yWithDirection(y: Int, d: Int): Int;

 public function roundXWithDirection(x: Int, d: Int): Int;

 public function roundYWithDirection(y: Int, d: Int): Int;

 public function deltaX(x1: Int, x2: Int): Int;

 public function deltaY(y1: Int, y2: Int): Int;

 public function distance(x1: Int, y1: Int, x2: Int, y2: Int): Int;

 /**
  * Converts the x coordinate from canvas to map coordinate x.
  *
  * @param {Int} x
  * @returns {Int}
  * @memberof Game_Map
  */
 public function canvasToMapX(x: Int): Int;

 /**
  * Converts the y coordinate from canvas to map y coordinate.
  *
  * @param {Int} y
  * @returns {Int}
  * @memberof Game_Map
  */
 public function canvasToMapY(y: Int): Int;

 /**
  * Auto plays the game map.
  *
  * @memberof Game_Map
  */
 public function autoplay(): Void;

 public function refreshIfNeeded(): Void;

 public function refresh(): Void;

 public function refreshTileEvents(): Void;

 /**
  * Returns the game events at the specified
  * x and y position.
  * @param {Int} x
  * @param {Int} y
  * @returns {Array<Game_Event>}
  * @memberof Game_Map
  */
 public function eventsXy(x: Int, y: Int): Array<Game_Event>;

 public function eventsXyNt(x: Int, y: Int): Array<Game_Event>;

 public function tileEventsXy(x: Int, y: Int): Array<Game_Event>;

 public function eventIdXy(x: Int, y: Int): Int;

 public function scrollDown(distance: Int): Void;

 public function scrollLeft(distance: Int): Void;

 public function scrollRight(distance: Int): Void;

 public function scrollUp(distance: Int): Void;

 /**
  * Returns true if the x and y coordinates are valid.
  *
  * @param {Int} x
  * @param {Int} y
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isValid(x: Int, y: Int): Bool;

 public function checkPassage(x: Int, y: Int, bit: Int): Bool;

 /**
  * Returns the tile id at the specified x, y, and z coordinates.
  *
  * @param {Int} x
  * @param {Int} y
  * @param {Int} z
  * @returns {Int}
  * @memberof Game_Map
  */
 public function tileId(x: Int, y: Int, z: Int): Int;

 public function layeredTiles(x: Int, y: Int): Array<Int>;

 public function allTiles(x: Int, y: Int): Array<Int>;

 public function autotileType(x: Int, y: Int, z: Int): Int;

 public function isPassable(x: Int, y: Int, d: Int): Bool;

 public function isBoatPassable(x: Int, y: Int): Bool;

 public function isShipPassable(x: Int, y: Int): Bool;

 public function isAirshipLandOk(x: Int, y: Int): Bool;

 public function checkLayeredTilesFlags(x: Int, y: Int, bit: Int): Bool;

 /**
  * Returns true if the specified element at the given x and y coordinates
  * is a ladder.
  * @param {Int} x
  * @param {Int} y
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isLadder(x: Int, y: Int): Bool;

 public function isBush(x: Int, y: Int): Bool;

 public function isCounter(x: Int, y: Int): Bool;

 public function isDamageFloor(x: Int, y: Int): Bool;

 public function terrainTag(x: Int, y: Int): Int;

 public function regionId(x: Int, y: Int): Int;

 public function startScroll(direction: Int, distance: Int, speed: Int): Void;

 public function isScrolling(): Bool;

 /**
  * Updates the game map, given that the scene is active.
  *
  * @param {Bool} sceneActive
  * @memberof Game_Map
  */
 public function update(sceneActive: Bool): Void;

 public function updateScroll(): Void;

 public function scrollDistance(): Int;

 public function doScroll(direction: Int, distance: Int): Void;

 /**
  * Updates all events on the map.
  *
  * @memberof Game_Map
  */
 public function updateEvents(): Void;

 /**
  * Updates all game vehicles on the map.
  *
  * @memberof Game_Map
  */
 public function updateVehicles(): Void;

 /**
  * Updates the map parallaxes.
  *
  * @memberof Game_Map
  */
 public function updateParallax(): Void;

 /**
  * Changes them ap tileset, given the tileset id.
  *
  * @param {Int} tilesetId
  * @memberof Game_Map
  */
 public function changeTileset(tilesetId: Int): Void;

 public function changeBattleback(battleback1Name: String,
  battleback2Name: String): Void;

 public function changeParallax(name: String, loopX: Bool, loopY: Bool,
  sx: Int, sy: Int): Void;

 /**
  * Updates the map's game interpreter.
  *
  * @memberof Game_Map
  */
 public function updateInterpreter(): Void;

 /**
  * Unlocks an event on the map given the event id.
  *
  * @param {Int} eventId
  * @memberof Game_Map
  */
 public function unlockEvent(eventId: Int): Void;

 public function setupStartingEvent(): Bool;

 public function setupTestEvent(): Bool;

 public function setupStartingMapEvent(): Bool;

 /**
  * Sets up an auto run common event.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function setupAutorunCommonEvent(): Bool;

 /**
  * Returns true if any event is starting on the map.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isAnyEventStarting(): Bool;
}
