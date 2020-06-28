import js.Syntax;
import core.TestScene;
import mz.scenes.Scene_Title;
import mz.scenes.Scene_Base;
import utils.Fn;
import utils.Comment;
import macros.FnMacros;
import macros.MacroTools;

class Main {

  public static function main() {
    Comment.singleLine(MacroTools.generateBuildDate());
    Comment.titleComment("Kiniitta");
    Comment.pluginParams("@author Kino 
    @plugindesc This plugin allows you to use Haxe in your RPGMakerMV code.
    @param haxeVersion");

    var titlePrototype =  Fn.prototype(Scene_Base);   // var testScene = new TestScene();
    var abc = {hello:"Hello World", test:3};
    Fn.setField(abc, "Yes", 3);
    trace(abc);
    var SceneBaseFn = Fn.setPrProp(Scene_Base, "Yes", () -> {
      trace("Hello");
    });

    var result = FnMacros.pipe(
      3 + 3,
      _ + 3,
      2 + _,
      _ + 4
    );
    trace(result);

    Comment.singleLine("Hello World");
    Comment.multiLine(
     "Multiline Haxe Comment
     NiceJob"
    );
    Comment.multiLine("Does this still work in JavaScript?
    I hope it continues to work.");
  }
}