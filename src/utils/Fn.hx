package utils;
import haxe.macro.Type.ClassType;
import js.Syntax;
import js.lib.Object;
import Type;

typedef Self=String;

class Fn {

  public static var self(get, null):Any;
  /**
   * Wrapper for JavaScript this
   */
  private static inline function get_self() {
    return Syntax.code("this");
  }

  public static inline function prototype<T>(obj:T):T {
    return Syntax.field(obj, "prototype");
  }

  public static inline function setPrProp(obj, fieldName:String, value:Any) {
    return Syntax.code("{0}.{1} = {2}", prototype(obj), Syntax.plainCode(fieldName), value);
  }

  public static inline function getPrProp(obj, fieldName:String):Any {
    return Syntax.code("{0}.{1}", prototype(obj), Syntax.plainCode(fieldName));
  }

  @:analyzer(local_dce)
  public static inline function setField(obj, fieldName:String, value:Any) {
    return Syntax.code("{0} = {1}",Syntax.field(obj, fieldName), value);
  }

  /**
   * Invokes the standard JavaScript defineProperty functionality to the value
   * @param obj 
   * @param propName 
   * @param value 
   * @return T
   */
  public static  function setProp<T:{}>(obj:T, propName:String, value:Any):T {
    return Object.defineProperty(obj,propName,{value: value});
  }

  public static inline function setProtoProp(obj, propName, value) {
		return Syntax.code("{0}.prototype[{1}] = {2}", obj, propName, value);
	}
}