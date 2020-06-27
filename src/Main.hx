import mz.scenes.Scene_Base;
class Main {

  public static function main() {
    //Haxe Way of overwriting a prototype
    var SceneBase:Dynamic = Scene_Base;
    SceneBase.prototype.initialize = () -> {
      trace("Hello World");
    };
    main();
  }
}