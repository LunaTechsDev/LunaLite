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

function main() {
  final distDir = "dist";
  final allFiles = FileSystem.readDirectory(distDir);
  allFiles
  .filter((file) -> !file.contains(".map"))
  .iter((file) -> {
    final filePath = '$distDir/$file';
    final contents = File.read(filePath).readAll().toString();
    final cleanContents = pipe(
      ~/(\*\/);/g.replace(contents,"$1"),
      ~/(==);/g.replace(_, "$1"),
      ~/(\/\/.+\s*);/g.replace(_, "$1")
    );
    File.write(filePath).writeString(cleanContents);
    trace("Cleaned Output File: " + filePath);
  });
}