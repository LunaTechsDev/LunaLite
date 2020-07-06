package core;

import mz.managers.SceneManager;
using StringTools;

/**
 * Returns a capitalized version of the string.
 * @param {string} string
 * @returns {string}
 */
inline function capitalize(string:String):String {
	return string.charAt(0).toUpperCase() + string.substr(1);
}

/**
 * Returns a version of the string with all words capitalized.
 * @param {string} string
 * @returns {string}
 */
inline function title(string:String):String {
	return ~/\s/g.split(string).map(word -> capitalize(word)).join(" ");
}

/**
 * Returns the word count of a string.
 * @param {string} string
 * @returns {number}
 */
inline function wordCount(string:String):Int {
	var trimmedString = string.trim();
	return ~/\s+/ig.split(trimmedString).length;
}

/**
 * Replaces double backslashes with escape codes
 * to recreate escape sequences.
 * @param {string} string
 */
inline function x1breplace(string:String):String {
	return ~/\\\\/ig.replace(string, "\x1b");
}

inline function x1breplace2(string:String):String {
	return ~/\\/ig.replace(string, "\x1b");
}

/**
 * Returns the string spaced evenly.
 * @param {string} string
 * @returns {string}
 */
inline function monoSpace(string:String):String {
	return ~/\s{2,}/gi.replace(string, " ");
}

    /**
     * Returns the current SceneManager._scene.
     * @returns {Scene}
     */
     inline function currentScene() {
      return SceneManager.curretScene;
    }

// inline function toBinary(number: Int) {
//   return Std.string(number).
// }
