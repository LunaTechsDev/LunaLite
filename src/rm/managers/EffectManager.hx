package rm.managers;

import haxe.DynamicAccess;

// TODO: Figure out structure of Effect from Effekseer
typedef Effect = Any;

#if !compileMV
@:expose("EffectManager")
@:native("EffectManager")
extern class EffectManager {
 @:native("_cache")
 public static var __cache: Dynamic<Dynamic>;
 private static var _cache: DynamicAccess<Dynamic>;
 @:native("_errorUrls")
 public static var __erorUrls: Array<Dynamic>;
 private static var _errorUrls: Array<Dynamic>;

 /**
  * Load the Effect from a file.
  * @param fileName
  * @return Effect
  */
 public static function load(fileName: String): Effect;

 /**
  * Starts loading  the Effect from URL
  * @param url
  * @return Effect
  */
 public static function startLoading(url: String): Effect;

 /**
  * Clears the cache and releases the Effect from
  * Graphics.
  */
 public static function clear(): Void;

 // TODO: Still needs to be implemented.

 /**
  * Not Implemented
  */
 public static function onLoad(): Void;

 /**
  * Makes a url to an Effekseer file.
  * @param fileName
  * @return String
  */
 public static function makeUrl(fileName: String): String;

 /**
  * Checks the error in the errorUrls.
  */
 public static function checkErrors(): Void;

 /**
  * Throws the loading error.
  * @param url
  */
 public static function throwLoadError(url: String): Void;

 /**
  * Returns true if the EffectManager is ready.
  * @return Bool
  */
 public static function isReady(): Bool;
}
#else
#end
