//=============================================================================
// kiniita.js
//=============================================================================

//=============================================================================
//  Contact Information
//=============================================================================
/*
*
* Contact me via twitter: EISKino, or on the rpg maker forums.
* Username on forums: Kino.
*
* Forum Link: http://forums.rpgmakerweb.com/index.php?/profile/75879-kino/
* Old Website Link: http://endlessillusoft.com/
* New Website Link: https://kinocreates.io/ 
* Twitter Link: https://twitter.com/EISKino
* Patreon Link: https://www.patreon.com/EISKino
*
* Hope this plugin helps, and enjoy!
* --Kino
*/

// Generated by Haxe 4.2.0-rc.1+1c018c009

/** JS Lib */
const a = 3;
console.log(a);
;(function ($global) { "use strict";
class Main {
	static main() {
		// Build Date: 2020-07-01 20:00:20 
		//=============================================================================
    // Kiniitta
    //=============================================================================
		/*:
    @author Kino 
    @plugindesc This plugin allows you to use Haxe in your RPGMakerMV code.
    @param haxeVersion
    */
		// This is a test of the watcher 
		let sceneTitleStart = Scene_Base.prototype.start;
		Scene_Base.prototype.start = function() {
			let self = this;
			sceneTitleStart.call(self);
			Window.Haxe = "Version 4.2.0";
			console.log("src/Main.hx:24:","Running Console Log From Haxe Added haxe Version");
		};
	}
}
class haxe_iterators_ArrayIterator {
	constructor(array) {
		this.current = 0;
		this.array = array;
	}
	hasNext() {
		return this.current < this.array.length;
	}
	next() {
		return this.array[this.current++];
	}
}
{
}
Main.main();
})({});

//# sourceMappingURL=kiniita.js.map