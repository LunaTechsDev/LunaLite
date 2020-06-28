package macros;
import haxe.macro.Expr;
import haxe.macro.Compiler;

/**
 * Tool Level Macros for Kiniitta
 */
class MacroTools {
  macro public static function generateBuildDate (): ExprOf<String> {
    var date = Date.now();
    return macro $v{"Build Date: " + date.toString()}
  }

  macro public static function getSourceOutput() : ExprOf<String> {
    var output = Compiler.getOutput();
    //Clean Output and remove extra semicolons
    trace($v{"Compiled File To -> " + output});
    return macro $v{output};
  }
}