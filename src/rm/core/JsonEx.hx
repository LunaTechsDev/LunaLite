package rm.core;

// TODO: Will have to add an abstract for keeping the Json String Close to It's Original Type

/**
 * The static class that handles JSON with object information.
 *
 * @class JsonEx
 */
@:expose("JsonEx")
@:native("JsonEx")
extern class JsonEx {
 /**
  * The maximum depth of objects.
  *
  * @static
  * @property maxDepth
  * @type Number
  * @default 100
  */
 public var maxDepth: Int;

 /**
  * Makes a deep copy of the specified object.
  *
  * @static
  * @method makeDeepCopy
  * @param {Object} object The object to be copied
  * @return {Object} The copied object
  */
 public static function makeDeepCopy(object: Any): Any;

 /**
  * Converts an object to a JSON string with object information.
  *
  * @static
  * @method stringify
  * @param {Object} object The object to be converted
  * @return {String} The JSON string
  */
 public static function stringify(object: Any): String;

 /**
  * Parses a JSON string and reconstructs the corresponding object.
  *
  * @static
  * @method parse
  * @param {String} json The JSON string
  * @return {Object} The reconstructed object
  */
 public static function parse(json: String): Any;

 /**
  * @static
  * @method _encode
  * @param {Object} value
  * @param {Number} depth
  * @return {Object}
  * @private
  */
 private static function _encode(value: Any, depth: Int): Any;

 /**
  * @static
  * @method _decode
  * @param {Object} value
  * @return {Object}
  * @private
  */
 private static function _decode(value: Any): Any;

 /**
  * @static
  * @method _getConstructorName
  * @param {Object} value
  * @return {String}
  * @private
  */
 private static function _getConstructorName(value: Any): String;

 /**
  * @static
  * @method _resetPrototype
  * @param {Object} value
  * @param {Object} prototype
  * @return {Object}
  * @private
  */
 private static function _resetPrototype(value: Any, prototype: Any): Any;
}
