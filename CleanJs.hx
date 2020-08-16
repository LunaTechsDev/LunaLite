import sys.io.File;
import sys.FileSystem;
import haxe.macro.Expr;
import haxe.macro.Context;

using StringTools;
using Lambda;

class CleanJs {
 macro static function pipe(exprs: Array<Expr>): Expr {
  var exprs = [for (expr in exprs) macro var _ = $expr];
  exprs.push(macro _);
  return macro $b{exprs};
 }

 macro static function generateBuildDate(): ExprOf<String> {
  var date = Date.now();
  return macro $v{"Build Date: " + date.toString()}
 }

 macro static function generatePluginGamePath(): ExprOf<String> {
  var gamePath = Context.definedValue("gamePath");
  return macro $v{gamePath + "/js/plugins/"}
 }

 public static function main() {
  final attributionStr = File.read("Attribution.txt").readAll().toString();
  final distDir = "dist";
  final madeWith = "Made with Kiniita -- Haxe";
  final allFiles = FileSystem.readDirectory(distDir);
  allFiles.filter((file) -> !file.contains(".map")).iter((file) -> {
   final fileNameStr = '//=============================================================================
// $file
//=============================================================================\n';

   final madeWithStr = '//=============================================================================
// $madeWith
//=============================================================================\n';

   var buildStr = generateBuildDate();
   final buildDate = '//=============================================================================
// $buildStr
//=============================================================================\n';
   final filePath = '$distDir/$file';
   final contents = File.read(filePath).readAll().toString();
   final cleanContents = contents.split("\n").map((lineContent) -> {
    if (lineContent.contains("+=") || lineContent.contains("if(")
     || lineContent.contains("#haxeui") || lineContent.contains("haxe_ui")
     || lineContent.contains("return")) {
     return lineContent;
    } else {
     pipe( // Below Removes Semi Colons Per Lin
      ~/(\*\/);/g.replace(lineContent, "$1"), ~/(==);/g.replace(_, "$1"),
      ~/(\/\/.+\s*);/g.replace(_, "$1"),
      // Below Removes New Line Characters from the output file
      ~/(?<!")\\n(?!")/g.replace(_, "\n"),
      ~/(?<=")\\n(?!")/g.replace(_, "\n"),
      // Below Special Removal Of Characters by appending them with @ symbols
      ~/@"|"@/gi.replace(_, ""), ~/@(.*)@/gi.replace(_, "$1"));
    }
   }).join("\n");

   final newContent = fileNameStr
    + buildDate
    + madeWithStr
    + attributionStr
    + "\n"
    + cleanContents;
   File.write(filePath).writeString(newContent);
   File.write(generatePluginGamePath() + file).writeString(newContent);
   trace("Cleaned Output File: " + filePath);
  });
 }
}
