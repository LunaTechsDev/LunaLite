package nodes;

import mz.sprites.Sprite_Base;

class SpriteBust extends Sprite_Base {
  private var _shadowOpacity:Float;
  private var _shadowX:Float;
  private var _shadowY:Float;
  private var _fadeDuration:Int;
  private var _scaleDuration:Int;

  public function new() {
    super();
    this.initialize();
  }

  public function initialize() {
    this._fadeDuration = 0;
    this._shadowOpacity = this.alpha;
    this._shadowX = this.x;
    this._shadowY = this.y;
  }

  public function moveTo(x:Int, ?y:Int) {
    this.x = x;
    this.y = y;
  }

  public function moveBy(x:Int, ?y:Int) {
    this.x+= x;
    this.y +=y;
  }

  public function fadeTo(opacity:Int, duration:Int=30) {
    this._shadowOpacity = opacity;
    this._fadeDuration = duration;

  }

  public function fadeBy(opacity:Int, duration:Int=30) {
    this._shadowOpacity += opacity;
    this._fadeDuration = duration;
  }

  public function scaleTo(x:Int, ?y:Int, ?duration:Int=30) {
    this.scale.set(x, y);
    this._scaleDuration = duration;
  }

  //Add update function to sprite_base
  public function update() {
  }

  public function updateFade() {

  }

}