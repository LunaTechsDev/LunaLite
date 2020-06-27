package utils;
import js.Syntax;
import js.lib.Object;

class FnUtils {
  public static inline function jsThis() {
    return Syntax.code("this");
  }

  public static  function setProp<T:{}>(obj:T, propName:String, value:Any):T {
    return Object.defineProperty(obj,propName,{value: value});
  }
}