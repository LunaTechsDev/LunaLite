package utils;

import js.html.Console;
import haxe.macro.Type.ClassType;
import js.Syntax;
import js.lib.Object;
import core.AnyBox.TBox;
import Type;

typedef Self = String;

class Fn {
 public static var self(get, null): Any;

 /**
  * Alias for JS console log.
  */
 public static var JsLog = Console.log;

 /**
  * Allows you to acces Js syntax  Code functionality
  * for embedding and more.
  */
 public static var Js = Syntax;

 public static function jsThis() {
  return js.Lib.nativeThis;
 }

 /**
  * Wrapper for JavaScript this
  */
 private static inline function get_self() {
  return Syntax.code("this");
 }

 /**
  * Runs a JavaScript evaluation expression.
  * @param evaluation
  */
 public static inline function eval(evaluation: String) {
  return js.Lib.eval(evaluation);
 }

 /**
  * Embeds a JavaScript evaluation into the output program.
  * @param evaluation
  */
 public static inline function embedEval(evaluation: String) {
  return Syntax.code("eval({0})", evaluation);
 }

 @:keep
 public static inline function proto<T>(obj: Class<T>): TBox<T> {
  return Syntax.field(obj, "prototype");
 }

 public static inline function setPrProp(obj: Any, fieldName: String,
   value: Any) {
  Syntax.code("{0}.@{1}@ = {2}", proto(obj), (fieldName), value);
 }

 public static inline function setPrPropVoidFn(obj: Any, fieldName: String,
   value: (Any) -> Void) {
  Syntax.code("{0}.@{1}@ = {2}", proto(obj), (fieldName), value);
 }

 public static inline function getPrProp(obj: Any, fieldName: String): Any {
  return Syntax.code("{0}.@{1}@", proto(obj), (fieldName));
 }

 @:analyzer(local_dce)
 public static inline function setField(obj: Any, fieldName: String,
   value: Any) {
  return Syntax.code("{0} = {1}", Syntax.field(obj, fieldName), value);
 }

 /**
  * Gets an element using an array syntax.
  * @param obj
  * @param fieldName
  */
 public static inline function getByArrSyntax(obj: Any, fieldName: String) {
  return Syntax.code("{0}[{1}]", obj, fieldName);
 }

 /**
  * Used to overwrite classes in RPGMakerMV with another class to alias and update
  * functionality.
  * @param obj
  * @param propName
  * @param value
  * @return T
  */
 public static inline function renameClass<T>(originalObj: Any,
   overrideObj: T): T {
  return Syntax.code("{0} = {1}", originalObj, overrideObj);
 }

 /**
  * Invokes the standard JavaScript defineProperty functionality to the value
  * @param obj
  * @param propName
  * @param value
  * @return T
  */
 public static function setProp<T: {}>(obj: T, propName: String,
   value: Any): T {
  return Object.defineProperty(obj, propName, {value: value});
 }

 public static inline function setProtoProp(obj, propName, value) {
  return Syntax.code("{0}.prototype.@{1}@ = {2}", obj, propName, value);
 }

 public static inline function instanceof(v: Dynamic, cl): Bool {
  return Syntax.instanceof(v, cl);
 }

 public static inline function typeof(v: Dynamic): String {
  return Syntax.typeof(v);
 }

 public static inline function log(data: Array<Dynamic>) {
  Console.log(data);
 }
}
