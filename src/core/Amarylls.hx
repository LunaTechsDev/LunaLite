package core;

import haxe.Constraints.Function;
import mz.managers.ImageManager;
import mz.managers.SceneManager;
import pixi.interaction.EventEmitter;
import mz.core.Utils;

final VERSION = '1.0.0';
final MZ_NAME = Utils.RPGMAKER_NAME;
final MZ_VERSION = Utils.RPGMAKER_VERSION;

function createEventEmitter() {
	return new EventEmitter();
}

function createDie(sides:Int):Die {
	return new Die(sides);
}

/**
 * Returns plugin parameters using regular expression matching
 * on plugin description
 * @param regEx
 */
function getParams(regEx:EReg) {}

/**
 * Applies Linear Interpolation to the variable provided
 * @param start
 * @param end
 * @param amount
 * @return {Float}
 */
function lerp(start:Float, end:Float, amount:Float):Float {
	return start + ((end - start) * amount);
}

/**
 * Returns the current SceneManager._scene.
 * @returns {Scene}
 */
inline function currentScene() {
	return SceneManager.curretScene;
}

function isImagePath(path:String) {
	return path.split("/").length > 2 ? true : false;
}

function loadImage(path:String, hue:Int = 0) {
	return isImagePath(path) ? ImageManager.loadNormalBitmap(path + ".png", hue) : null;
}

/**
 * Returns true if the game is running on desktop(nwjs).
 * @returns {boolean}
 */
function isNwjs() {
	return Utils.isNwjs();
}

/**
 * Returns true if the game is running on mobile.
 * @returns{boolean}
 */
function isMobile() {
	return Utils.isMobileDevice();
}

/**
 * Returns true if the game is in test mode.
 * @returns {boolean}
 */
function isTest() {
	return Utils.isOptionValid("test");
}

/**
 * Creates a function that only be run once.
 * @param {Function} f
 * @returns {Function}
 */
function once(f:Function) {
	var count = 0;
	return function() {
		if (count > 0)
			return null;
		else {
			count++;
			return f();
		}
	};
}

/**
 * Repeats the code a set number of times
 * similar to a for loop.
 * @param {number} iterations
 * @param {Function} f
 */
function times(iterations:Int, f:Function) {
	for (i in 0...iterations) {
		f();
	}
}
