package mz.managers;

import js.html.Event;
import mz.types.MZ;

/**
 * Static class that manages plugins
 */
@:native("PluginManager")
extern class PluginManager {
  private static var _path:String;
  private static var _scripts:Array<String>;
  private static var _errorUrls:Array<String>;

  public static function setup(plugins: Array<PluginSettings>):Void;

  public static function checkErrors():Void;

  /**
   * Returns all of the plugin parameters for an RPGMakerMZ
   * plugin in a JSON Like String Format.
   * Should typedef this for ease of parsing.
   * @param name 
   * @return Any
   */
  public static function parameters(name:String):Any;

  /**
   * Uses internally by the Plugin Manager to load
   * the plugin scripts.
   * @param name 
   */
  public static function loadScript(name:String):Void;
  public static function onError(e:Event):Void;
}