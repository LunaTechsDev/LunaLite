package macros;
import haxe.macro.Expr;

class FnMacros {
  public static macro function pipe(exprs:Array<Expr>) :Expr {
    var exprs = [for (expr in exprs) macro var _ = $expr];
    exprs.push(macro _);
    return macro $b{exprs};
  }
}