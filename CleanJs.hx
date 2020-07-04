import sys.io.File;
import sys.FileSystem;
import haxe.macro.Expr;
using StringTools;
using Lambda;

macro function pipe(exprs:Array<Expr>) :Expr {
  var exprs = [for (expr in exprs) macro var _ = $expr];
  exprs.push(macro _);
  return macro $b{exprs};
}

macro function generateBuildDate (): ExprOf<String> {
  var date = Date.now();
  return macro $v{"Build Date: " + date.toString()}
}

function main() {
  final attributionStr = File.read("Attribution.txt")
    .readAll().toString();
  final distDir = "dist";
  final allFiles = FileSystem.readDirectory(distDir);
  allFiles
  .filter((file) -> !file.contains(".map"))
  .iter((file) -> {
    final fileNameStr = 
'//=============================================================================
// $file
//=============================================================================\n';

    var buildStr = generateBuildDate();
    final buildDate =
'//=============================================================================
// $buildStr
//=============================================================================\n';
    final filePath = '$distDir/$file';
    final contents = File.read(filePath).readAll().toString();
    final cleanContents = pipe(
      ~/(\*\/);/g.replace(contents,"$1"),
      ~/(==);/g.replace(_, "$1"),
      ~/(\/\/.+\s*);/g.replace(_, "$1")
    );
    final newContent = fileNameStr + buildDate + attributionStr + "\n" + cleanContents;
    File.write(filePath).writeString(newContent);
    trace("Cleaned Output File: " + filePath);
  });
}