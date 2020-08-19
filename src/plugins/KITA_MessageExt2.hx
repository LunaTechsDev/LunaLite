package plugins;

import js.Syntax;
import rm.scenes.Scene_Battle;
import rm.scenes.Scene_Base;
import rm.managers.DataManager;
import rm.types.RPG.Weapon;
import rm.core.Bitmap;
import nodes.SpriteBust;
import rm.managers.PluginManager;
import core.AnyBox;
import core.Types.JsFn;
import utils.Fn;
import utils.Comment;
import rm.windows.Window_Message;
import rm.windows.Window_Base;
import rm.sprites.Sprite_Base;
import core.Assets;

using core.StringExtensions;

import macros.MacroTools;

using Std;

var textSpeed: Int = 2;

function main() {
 trace(Sprite_Base);
 Comment.pluginParams("
   @author Kino
   @plugindesc An extension to the core Message Window functionality
   to support Visual Novels <KITA_MessageExt>.

   @param Text Speed 
   @desc The speed at which characters will be rendered
   @default 2
   
   @help
   Version: 1.00
   Version Log:
   Now you can change the text speed at will using escape characters
   inside the window.
   Example: \\TS[30] updates the text speed to super slow 30.
   Note: The [30] will appear in the editor, but not in game.

   Instructions:
   You set your text speed in the plugin menu.
   This is the speed that the characters will be drawn at.

   Contact me via forums; username: Kino.
   Hope this plugin helps and enjoy!
   ");

 var parameters: Any = PluginManager.parameters("KITA_MessageExt");
 textSpeed = Fn.getByArrSyntax(parameters, "Text Speed");
 trace(textSpeed);
 var a = "Test";

 Fn.setPrProp(Window_Message, "setBackgroundTexture", () -> {
  var self = Fn.self;
 });

 final img = new Bitmap(128, 128);
 img.fillRect(0, 0, 128, 128, "black");
 final MSGBUST = new SpriteBust(0, 0, img);

 final winMsgInitialize: JsFn = Fn.proto(Window_Message).dyn.initialize;
 Fn.proto(Window_Message).dyn.initialize = function() {
  var self: TBox<Window_Message> = Fn.self;
  winMsgInitialize.call(self);
  var txtSpeed = textSpeed;
  self.dyn.originalTextSpeed = txtSpeed;
  self.dyn.activeTextSpeed = txtSpeed;
  self.dyn.msgBust = MSGBUST;
  MSGBUST.move(0, -128);
  self.addChild(self.dyn.msgBust);
  MSGBUST.show();
 };

 final _SceneBase = Fn.renameClass(Scene_Base, ABC);

 Fn.proto(Window_Message)
  .dyn.processEscapeCharacter = function(code: String, textState: String) {
  var self: TBox<Window_Message> = Fn.self;
  switch (code) {
   case '$':
    self.dyn._goldWIndow.open();
   case '.':
    self.startWait(15);
   case '!':
    self.startPause();

   case '>':
    self.dyn._lineShowFast = true;

   case '<':
    self.dyn._lineShowFast = false;

   case '^':
    self.dyn._pauseSkip = true;

   case 'TS':
    self.dyn.updateTextSpeed(self.obtainEscapeParam(textState));
   case _:
    var winBaseProcessEscChar: JsFn = Fn.getPrProp(Window_Base,
     "processEscapeCharacter");
    winBaseProcessEscChar.call(self, code, textState);
  }
 };

 Fn.setPrPropVoidFn(Window_Message, "updateTextSpeed", (value) -> {
  var self: Dynamic = Fn.self;
  self.activeTextSpeed = value;
 });

 var WinBaseProcessNormChar: JsFn = Fn.getPrProp(Window_Base,
  "processNormalCharacter");
 var WinMsg: Dynamic = Window_Message;
 Fn.setPrPropVoidFn(Window_Message, "processNormalCharacter", (textState) -> {
  var self: TBox<Window_Message> = Fn.self;
  var txtState: String = textState;
  WinBaseProcessNormChar.call(self, txtState);
  self.startWait(self.dyn.activeTextSpeed);
 });

 var winMessageTerminateMessage: JsFn = Fn.getPrProp(Window_Message,
  "terminateMessage");
 Fn.setPrPropVoidFn(Window_Message, "terminateMessage", (_) -> {
  var self: Dynamic = Fn.self;
  self.activeTextSpeed = self.originalTextSpeed;
  winMessageTerminateMessage.call(self);
 });
}

function setTextSpeed(value: Int) {
 textSpeed = value;
}

@:native("Scene_Base")
class ABC extends Scene_Base {
 public var b: Int;
 public var abc: Int;

 public function new() {
  super();
  this.b = 33;
  this.abc = 3;
 }

 public function testMyChanges() {
  return b + abc;
 }
}
