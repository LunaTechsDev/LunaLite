import mz.scenes.Scene_Base;
import js.Syntax;
class Main {

  public static function main() {
    //Haxe Way of overwriting a prototype
    var SceneBase:Dynamic = Scene_Base;
    SceneBase.prototype.initialize = () -> {
      var self = Syntax.code("this");
      self.createWindow = () -> {
        trace("Update Create Window");
      };
      trace("Hello World");
    };
    main();
  }
}