package rm.managers;

import haxe.Json;
import js.lib.Promise;

/**
 * The static class that manages storage of save game data.
 */
@:expose("StorageManager")
@:native("StorageManager")
extern class StorageManager {
 // @todo make type for zip
 #if !compileMV
 public static function saveObject(saveName: String,
  object: Dynamic): Promise<Any>;
 public static function loadObject(object: Dynamic): Promise<Any>;
 public static function objectToJson(object: Dynamic): Promise<Any>;
 public static function jsonToObject(json: Json): Promise<Any>;
 public static function jsonToZip(json: Json): Promise<Any>;
 public static function zipToJson(zip: Any): Promise<Any>; // TODO: Find proper zip type for this
 public static function saveZip(saveName: String, zip: Dynamic): Promise<Any>;
 public static function loadZip(saveName: String, zip: Dynamic): Promise<Any>;
 public static function saveToForage(saveName: String): Promise<Any>;
 public static function loadFromForage(saveName: String): Promise<Any>;
 public static function forageExists(saveName: String): Bool;
 public static function removeForage(saveName: String): Promise<Any>;
 public static function updateForageKeys(): Promise<Any>;
 public static function forageKeysUpdated(): Bool;
 public static function fsMkdir(path: String): Void;
 public static function fsRename(oldPath: String, newPath: String): Void;
 public static function fsUnlink(path: String): Void;
 public static function fsReadFile(path: String): Void;
 public static function fsWriteFile(path: String, data: Any): Void;
 public static function fileDirectoryPath(): String;
 public static function filePath(): String;
 public static function forageKey(): String;
 public static function forageTestKey(): String;
 #end
 public static function save(savefileId: Int, json: String): Void;
 public static function load(savefileId: Int): String;
 public static function exists(savefileId: Int): Bool;
 public static function remove(savefileId: Int): Void;
 public static function backup(savefileId: Int): Void;
 public static function backupExists(savefileId: Int): Bool;
 public static function cleanBackup(savefileId: Int): Bool;
 public static function restoreBackup(savefileId: Int): Void;
 public static function isLocalMode(): Bool;
 public static function saveToLocalFile(savefileId: Int, json: String): Void;
 public static function loadFromLocalFile(savefileId: Int): String;
 public static function loadFromLocalBackupFile(savefileId: Int): String;
 public static function localFileBackupExists(savefileId: Int): Bool;
 public static function localFileExists(savefileId: Int): Bool;
 public static function removeLocalFile(savefileId: Int): Void;
 public static function saveToWebStorage(savefileId: Int, json: String): Void;
 public static function loadFromWebStorage(savefileId: Int): String;
 public static function loadFromWebStorageBackup(savefileId: Int): String;
 public static function webStorageBackupExists(savefileId: Int): Bool;
 public static function webStorageExists(savefileId: Int): Bool;
 public static function removeWebStorage(savefileId: Int): Void;
 public static function localFileDirectoryPath(): String;
 public static function localFilePath(savefileId: Int): String;
 public static function webStorageKey(savefileId: Int): String;
}
