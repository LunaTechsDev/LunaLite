package core;

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
function getParams(regEx: EReg) {

}
