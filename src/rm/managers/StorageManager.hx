package rm.managers;

/**
 * The static class that manages storage of save game data.
 */
@:native("StorageManager")
extern class StorageManager {
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
