package rm.managers;

import rm.types.RPG.BaseItem;

/**
 * Manages the game data: saving, loading, meta data,
 * and map information.
 */
@:native("DataManager")
extern class DataManager {
 private static var _globalId: String;
 private static var _lastAccessedId: Int;
 private static var _errorUrl: Any;

 /**
  * Database Files are a JSON like Object
  */
 private static var _databaseFiles: Array<Any>;

 public static function loadDatabase(): Void;
 public static function loadDataFile(name: String, src: String): Void;
 public static function isDatabaseLoaded(): Bool;
 public static function loadMapData(mapId: Int): Void;
 public static function makeEmptyMap(): Void;
 public static function isMapLoaded(): Bool;
 public static function onLoad(object: Any): Void;

 /**
  * Extracts Meta Data. A Json Like Object
  * @param data
  */
 public static function extractMetaData(data: Any): Void;

 public static function checkError(): Void;
 public static function isBattleTest(): Bool;
 public static function isEventTest(): Bool;

 /**
  * Returns a Bool value given an item.
  * Item being a database object representing a skill.
  * @static
  * @param {object} item
  * @returns {Bool}
  * @memberof DataManager
  */
 public static function isSkill(item: BaseItem): Bool;

 /**
  * Returns a Bool value given an item.
  * Item must be a database item to be true.
  * @static
  * @param {object} item
  * @returns {Bool}
  * @memberof DataManager
  */
 public static function isItem(item: BaseItem): Bool;

 /**
  * Returns a Bool value given an item.
  * Item must be a database weapon to be true.
  * @static
  * @param {object} item
  * @returns {Bool}
  * @memberof DataManager
  */
 public static function isWeapon(item: BaseItem): Bool;

 /**
  * Returns a Bool value given an item.
  * Item must be a database armor to be true.
  * @static
  * @param {object} item
  * @returns {Bool}
  * @memberof DataManager
  */
 public static function isArmor(item: BaseItem): Bool;

 public static function createGameObjects(): Void;
 public static function setupNewGame(): Void;
 public static function setupBattleTest(): Void;
 public static function setupEventTest(): Void;
 public static function loadGlobalInfo(): Void;

 /**
  * JSON like object
  * @param info
  */
 public static function saveGlobalInfo(info: Any): Void;

 /**
  * Returns a Bool value given a savefileId.
  * If the savefileId exists; the value will be true.
  * @static
  * @param {number} savefileId
  * @returns {Bool}
  * @memberof DataManager
  */
 public static function isThisGameFile(savefileId: Int): Bool;

 public static function isAnySavefileExists(): Bool;
 public static function latestSavefileId(): Int;
 public static function loadAllSavefileImages(): Void;

 /**
  * JSON Like Object for save file images
  */
 public static function loadSavefileImages(info: Any): Void;

 /**
  * Returns the maximum number of save files
  * allocated in the game.
  * @static
  * @returns {number}
  * @memberof DataManager
  */
 public static function maxSavefiles(): Int;

 /**
  * Saves the RPGMakerMV game given a savefileId.
  * Returns true if successful.
  * @static
  * @param {number} savefileId
  * @returns {Bool}
  * @memberof DataManager
  */
 public static function saveGame(savefileId: Int): Bool;

 public static function loadGame(savefileId: Int): Bool;

 /**
  * Returns the last accessed save fileId upon
  * saving or loading the game.
  * @static
  * @returns {number}
  * @memberof DataManager
  */
 public static function lastAccessedSavefileId(): Int;

 public static function saveGameWithoutRescue(savefileId: Int): Bool;
 public static function loadGameWithoutRescue(savefileId: Int): Bool;
 public static function selectSavefileForNewGame(): Void;

 /**
  * Creates a new save file on the global
  * save file information containing important
  * data such as play time, characters, timestamp.
  * @static
  * @memberof DataManager
  */
 public static function makeSavefileInfo(): Void;

 /**
  * Creates the save file contents when saving your game.
  * Good for aliasing when you want to add more data
  * to the game's save contents.
  * @static
  * @returns {object}
  * @memberof DataManager
  */
 public static function makeSaveContents(): Any;

 /**
  * Extracts the save file contents into the game's
  * variables. An excellent method to alias when you
  * wish to extend the game's save contents for a plugin.
  * @static
  * @param {object} contents
  * @memberof DataManager
  */
 public static function extractSaveContents(contents: Any): Void;
}
