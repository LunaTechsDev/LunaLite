package utils;

import haxe.DynamicAccess;
import rm.core.JsonEx;
import js.lib.Object;
import js.Syntax;

class Parse {
 /**
  * Function for parsing parameters from JSON in MV/MZ
  */
 public static function parseParameters(parameters: String): Any {
  var obj: DynamicAccess<Dynamic>;
  try {
   obj = JsonEx.parse(parameters);
  } catch (e) {
   trace(e);
   return parameters;
  }
  trace(Syntax.typeof(obj));
  if (isObject(obj)) {
   for (key in Object.keys(cast obj)) {
    //  var dynamicObj: DynamicAccess<Dynamic> = obj;
    obj[key] = parseParameters(obj[key]);
    if (obj[key] == "") {
     obj[key] = null;
    }
   }
  }
  return obj;
 }

 public static function isObject(entity: Dynamic) {
  return Syntax.typeof(entity) == "Object";
 }
}
