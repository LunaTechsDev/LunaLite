import sys.io.File;
import sys.FileSystem;
import haxe.macro.Expr;
import haxe.macro.Context;

using StringTools;
using Lambda;

macro function pipe(exprs:Array<Expr>):Expr {
 var exprs = [for (expr in exprs) macro var _ = $expr];
 exprs.push(macro _);
 return macro $b{exprs};
}

macro function generateBuildDate():ExprOf<String> {
 var date = Date.now();
 return macro $v{"Build Date: " + date.toString()}
}

macro function generatePluginGamePath():ExprOf<String> {
 var gamePath = Context.definedValue("gamePath");
 return macro $v{gamePath + "/js/plugins/"}
}

function main() {
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
  final cleanContents = pipe(~/(\*\/);/g.replace(contents, "$1"), ~/(==);/g.replace(_, "$1"), ~/(\/\/.+\s*);/g.replace(_, "$1"));
  final newContent = fileNameStr + buildDate + madeWithStr + attributionStr + "\n" + cleanContents;
  File.write(filePath).writeString(newContent);
  File.write(generatePluginGamePath() + file).writeString(newContent);
  trace("Cleaned Output File: " + filePath);
 });
}
