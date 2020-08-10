package macros;

import haxe.macro.Expr;
import haxe.macro.Compiler;
import haxe.macro.Context;
import haxe.macro.TypeTools;
import sys.FileSystem;

using StringTools;
using Lambda;

/**
 * Tool Level Macros for Kiniitta
 */
class MacroTools {
 macro public static function generateBuildDate(): ExprOf<String> {
  var date = Date.now();
  return macro $v{"Build Date: " + date.toString()}
 }

 macro public static function getSourceOutput(): ExprOf<String> {
  var output = Compiler.getOutput();
  // Clean Output and remove extra semicolons
  trace($v{"Compiled File To -> " + output});
  return macro $v{output};
 }

 macro public static function includeJsLib(path: String) {
  return switch (FileSystem.exists(path)) {
   case true:
    Compiler.includeFile(path, "top");
   case false:
    return macro throw "Fail to find file";
  }
 }

 macro public static function defineIfNull(value: Expr, def: Expr): Expr {
  return macro @:pos(Context.currentPos()) {
   if ($value == null)
    $value = $def;
   $value;
  }
 }

 macro public static function debug(args: Array<Expr>): Expr {
  var mode: String = Context.definedValue("mode");
  var result: Array<Expr> = [];
  var argValues: Array<Dynamic> = [];
  for (arg in args) {
   var value: Dynamic;
   var exprType = arg.expr;
   switch (exprType) {
    case EField(expr, field):
     trace(expr, field);
     var fieldExprType = expr.expr;
     switch (fieldExprType) {
      case EConst(constant):
       switch (constant) {
        case CInt(val) | CFloat(val) | CString(val, _) | CRegexp(val, _):
         value = val;
        case CIdent(val):
         value = $v{$i{val + "." + field}};
       }
      case _:
       value = $v{expr};
     }

    case EConst(cnst):
     switch (cnst) {
      case CInt(val) | CFloat(val) | CString(val, _) | CRegexp(val, _):
       value = val;
      case CIdent(val):
       value = $v{arg};
     }
    case _:
     value = $v{arg};
     trace(arg);
   }

   //  trace(value);
   argValues.push(value);
  }

  return switch (mode) {
   case "dev":
    result = [for (val in argValues) macro trace($v{val})];
    macro $b{result};
   case "prod":
    macro $b{result};
   case _:
    macro $b{result};
  };
 }
}
