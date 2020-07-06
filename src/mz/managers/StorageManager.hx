package mz.managers;

/**
 * The static class that manages storage of save game data.
 */
@:native("StorageManager")
extern class StorageManager {
	public function save(savefileId:Int, json:String):Void;
	public function load(savefileId:Int):String;
	public function exists(savefileId:Int):Bool;
	public function remove(savefileId:Int):Void;
	public function backup(savefileId:Int):Void;
	public function backupExists(savefileId:Int):Bool;
	public function cleanBackup(savefileId:Int):Bool;
	public function restoreBackup(savefileId:Int):Void;
	public function isLocalMode():Bool;
	public function saveToLocalFile(savefileId:Int, json:String):Void;
	public function loadFromLocalFile(savefileId:Int):String;
	public function loadFromLocalBackupFile(savefileId:Int):String;
	public function localFileBackupExists(savefileId:Int):Bool;
	public function localFileExists(savefileId:Int):Bool;
	public function removeLocalFile(savefileId:Int):Void;
	public function saveToWebStorage(savefileId:Int, json:String):Void;
	public function loadFromWebStorage(savefileId:Int):String;
	public function loadFromWebStorageBackup(savefileId:Int):String;
	public function webStorageBackupExists(savefileId:Int):Bool;
	public function webStorageExists(savefileId:Int):Bool;
	public function removeWebStorage(savefileId:Int):Void;
	public function localFileDirectoryPath():String;
	public function localFilePath(savefileId:Int):String;
	public function webStorageKey(savefileId:Int):String;
}
