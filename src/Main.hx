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
    var SceneBaseFn = Fn.setPrProp(Scene_Base, "update", () -> {
      var self:Scene_Base = Fn.self;
      self.create();
      trace("Creating Windows");
    });
  }
}