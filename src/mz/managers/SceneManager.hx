package mz.managers;

import js.html.Event;
import js.html.KeyboardEvent;
import mz.core.Bitmap;
import mz.scenes.Scene_Base;

/**
 * Manages the scenes of the game.
 */
@:native("SceneManager")
extern class SceneManager {
	private var _scene:Any;
	private var _nextScene:Any;
	private var _stack:Array<Any>;
	private var _screenWidth:Int;
	private var _screenHeight:Int;
	private var _backgroundBitmap:Bitmap;

	/**
	 * Convenience variable for getting the current scene.
	 */
	@:native("_scene")
	public var curretScene:Any;

	public function preferableRendererType():String;
	public function shouldUseCanvasRenderer():Bool;

	public function initialize():Void;
	public function initGraphics():Void;
	public function initAudio():Void;
	public function initInput():Void;
	public function initNwjs():Void;
	public function update():Void;
	public function terminate():Void;
	public function tickStart():Void;
	public function tickEnd():Void;
	public function changeScene():Void;
	public function updateScene():Void;
	public function renderScene():Void;
	public function onSceneCreate():Void;
	public function onSceneStart():Void;
	public function onSceneLoading():Void;

	public function onError(e:Event):Void;
	public function onKeyDown(event:KeyboardEvent):Void;
	public function catchException(e:Event):Void;

	public function isSceneChanging():Bool;
	public function isCurrentSceneBusy():Bool;
	public function isCurrentSceneStarted():Bool;
	public function isNextScene(sceneClass:Any):Bool;
	public function isPreviousScene(sceneClass:Any):Bool;

  /**
   * Goes to the scene passed in.
   * @param sceneClass 
   */
  public function goto(sceneClass:Any):Void;
  /**
   * Pushes the scene passed in to the scene stack.
   * Immediately goes to the scene passed in.
   * @param sceneClass 
   */
  public function push(sceneClass:Any):Void;
	/**
	 * Pops the current scene from the stack.
	 */
  public function pop():Void;
	/**
	 * Exits the current scene.
	 */
	public function exit():Void;
  public function clearStack():Void;
	/**
	 * Stops the current scene.
	 */
	public function stop():Void;
	public function prepareNextScene():Void;
	public function snap():Bitmap;
	public function snapForBackground():Void;
	public function backgroundBitmap():Bitmap;
	public function updateManagers(ticks:Float, delta:Float):Void;
}
