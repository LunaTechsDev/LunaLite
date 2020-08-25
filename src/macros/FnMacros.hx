package macros;

import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.TypeTools;

class FnMacros {
 public static macro function pipe(exprs: Array<Expr>): Expr {
  var exprs = [for (expr in exprs) macro var _ = $expr];
  exprs.push(macro _);
  return macro $b{exprs};
 }

 public static macro function destruct(entity: Expr,
   fieldNames: Array<ExprOf<String>>): Expr {
  var pos = Context.currentPos();
  var localVars = Context.getLocalVars();
  var classFields = Context.getLocalClass().get().fields;

  var fields: Array<Expr> = [];

  var tentity = Context.typeof(entity);
  switch (TypeTools.follow(tentity)) {
   case TAnonymous(_.get() => tr):
    for (field in tr.fields) {
     var name = field.name;
     var value = field.expr();

     var tmp = macro $v{value};

     fields.push(macro var $name = $tmp);
     localVars.set(name, field.type);
     classFields.get().push(field);
     //  localVars.clear();
    }
   case _:
    return Context.error("Object type expected instead of"
     + tentity.getName(), pos); // Do nothing
  }

  // for (element in entity) {
  //  trace(element);
  //  if (fieldNames.contains(element)) {
  //   var fieldNameValue = macro entity.$element;
  //   fields.push(macro var element = entity.$element);
  //  }
  // };

  fields.push(macro var hello = 3);
  return macro $b{fields};
 }
}
