package utils;

import js.Syntax;

using Lambda;

class Comment {
 public static inline function title(title: String) {
  return Syntax.code("
//=============================================================================
// @{0}@
//=============================================================================
      ", title);
 }

 public static inline function singleLine(message: String) {
  return Syntax.code("// @{0}@ ", (message));
 }

 public static inline function multiLine(message: String) {
  return Syntax.code("/*
    @{0}@
    */", (message));
 }

 public static inline function pluginParams(params: String) {
  return Syntax.code("/*:
     @{0}@
   */", (params));
 }
}
