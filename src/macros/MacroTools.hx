package macros;

import haxe.macro.Expr;
import haxe.macro.Compiler;
import haxe.macro.PositionTools;
import haxe.macro.Context;
import sys.io.File;
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

 macro public static function debug(args: Array<Expr>): Expr {
  var mode: String = Context.definedValue("mode");
  return switch (mode) {
   case "dev":
    macro trace($v{args});
   case "prod":
    macro null;
   case _:
    macro null;
  };
 }
}
