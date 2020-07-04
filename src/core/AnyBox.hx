package core;

import utils.Fn;

@:forward
@:forwardStatics
abstract TBox<T>(T) {
  public var prototype (get, set):T;
  public var dyn (get, set):Dynamic;
  public inline function setField(fieldName:String, value:Any) {
    Fn.setField(this, fieldName, value);
  }

  private inline function get_dyn():Dynamic {
    return this;
  }

  private inline function set_dyn(obj:T):Dynamic {
    return this;
  }

  public inline function set(f:(dSelf:Dynamic) ->Void) {
    f(this);
  }

  private inline function get_prototype():T {
    return Fn.prototype(this);
  };

  private inline function set_prototype(obj:T):T {
    return Fn.prototype(obj);
  };
}