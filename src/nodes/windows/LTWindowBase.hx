package nodes.windows;

import rm.types.RM.TextStateLT;
import haxe.DynamicAccess;
import core.Math;
import rm.core.Rectangle;
import rm.windows.Window_Base;
import rm.managers.ColorManager;

@:native("LTWindowBase")
class LTWindowBase extends Window_Base {
 public var innerWidthLT(get, null): Int;
 public var innerHeightLT(get, null): Int;

 public function new(x: Int, y: Int, width: Int, height: Int) {
  #if compileMV
  super(x, y, width, height);
  #else
  var rect = new Rectangle(x, y, width, height);
  super(rect);
  #end
 }

 /**
  * Changes the color based on the color index.
  * Backport to MV.
  * @param colorIndex
  */
 public function processColorChangeLT(colorIndex: Int) {
  #if compileMV
  this.changeTextColor(ColorManager.textColor(colorIndex));
  #else
  this.processColorChange(colorIndex);
  #end
 }

 public function drawTextExLT(text: String, x: Int, y: Int, ?width: Int): Int {
  #if compileMV
  return super.drawTextEx(text, x, y);
  #else
  return super.drawTextEx(text, x, y, width);
  #end
 }

 public function textSizeExLT(text) {
  #if compileMV
  this.resetFontSettings();
  final textState = this.createTextStateLT(text, 0, 0, 0);
  this.processAllTextLT(textState);
  return {width: textState.outputWidth, height: textState.outputHeight};
  #else
  return this.textSizeEx(text);
  #end
 }

 public function createTextStateLT(text: String, x: Int, y: Int,
   width: Int): TextStateLT {
  var rtl = false; // TODO: Replace with utils Arabic
  final textState: DynamicAccess<Dynamic> = {};
  textState["text"] = this.convertEscapeCharacters(text);
  textState["index"] = 0;
  textState["x"] = rtl ? x + width : x;
  textState["y"] = y;
  textState["width"] = width;
  textState["height"] = this.calcTextHeight(cast textState, false);
  textState["startX"] = textState["x"];
  textState["startY"] = textState["y"];
  textState["rtl"] = rtl;
  textState["buffer"] = this.createTextBufferLT(rtl);
  textState["drawing"] = true;
  textState["outputWidth"] = 0;
  textState["outputHeight"] = 0;
  return cast textState;
 }

 public function createTextBufferLT(rtl: Bool) {
  #if compileMV
  return return rtl ? "\u202B" : "";
  #else
  return this.createTextBuffer(rtl);
  #end
 }

 /**
  * Improves text processing for MV
  * while using default MZ text processing.
  * ProcessAllText doesn't happen in MV
  * @param textState
  */
 public function processAllTextLT(textState: TextStateLT) {
  #if compileMV
  while (textState.index < textState.text.length) {
   this.processCharacterLT(textState);
  }
  #else
  this.processAllText(textState);
  #end
 }

 public function processCharacterLT(textState: TextStateLT) {
  #if compileMV
  final c: String = textState.text.charAt(textState.index++);
  if (c.charCodeAt(0) < 0x20) {
   this.flushTextStateLT(textState);
   this.processControlCharacterLT(textState, c);
  }
  #else
  return this.processCharacter(textState);
  #end
 }

 public function flushTextStateLT(textState: TextStateLT) {
  #if compileMV
  final text = textState.buffer;
  final rtl = textState.rtl;
  final width = this.textWidth(text);
  final height = textState.height;
  final x = rtl ? textState.x - width : textState.x;
  final y = textState.y;
  if (textState.drawing) {
   this.contents.drawText(text, x, y, width, height);
  }
  textState.x += rtl ? -width : width;
  textState.buffer = this.createTextBufferLT(rtl);
  final outputWidth = Math.abs(textState.x - textState.startX);
  if (textState.outputWidth < outputWidth) {
   textState.outputWidth = cast outputWidth;
  }
  textState.outputHeight = y - textState.startY + height;
  #else
  this.flushTextState(textState);
  #end
 }

 public function processControlCharacterLT(textState: TextStateLT,
   character: String) {
  #if compileMV
  switch (character) {
   case "\n":
    this.processNewLine(textState);
   case "\x1b":
    final code = this.obtainEscapeCode(textState);
    this.processEscapeCharacter(code, textState);
  }
  #else
  this.processControlCharacter(textState, character);
  #end
 }

 public function destroyContentsLT() {
  #if compileMV
  this.contents.baseTexture.destroy();
  this.contents.baseTexture = null;
  this.contents.canvas.width = 0;
  this.contents.canvas.height = 0;
  this.contents.canvas = null;
  // MZ also destroys the back sprite
  #else
  super.destroyContents();
  #end
 }

 public function maxFontSizeInLineLT(line: String): Int {
  #if compileMV
  /*
   let maxFontSize = this.contents.fontSize;
   const regExp = /\x1b({|}|FS)(\[(\d+)])?/gi;
   for (;;) {
       const array = regExp.exec(line);
       if (!array) {
           break;
       }
       const code = String(array[1]).toUpperCase();
       if (code === "{") {
           this.makeFontBigger();
       } else if (code === "}") {
           this.makeFontSmaller();
       } else if (code === "FS") {
           this.contents.fontSize = parseInt(array[3]);
       }
       if (this.contents.fontSize > maxFontSize) {
           maxFontSize = this.contents.fontSize;
       }
   }
   return maxFontSize;
   */
  return 0;
  #else
  return this.maxFontSizeInLine(line);
  #end
 }

 private function get_innerWidthLT(): Int {
  return cast Math.max(0, this._width - this._padding * 2);
 }

 private function get_innerHeightLT(): Int {
  return cast Math.max(0, this._height - this._padding * 2);
 }
}
