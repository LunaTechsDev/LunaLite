package plugins;

import core.AnyBox;
import core.Types.JsFn;
import utils.Fn;
import utils.Comment;
import macros.MacroTools;
import mz.windows.Window_Message;
import mz.windows.Window_Base;

var textSpeed:Int=5;

function main() {
 Comment.title(MacroTools.generateBuildDate());
 Comment.pluginParams("
   @author Kino
   @plugindesc An extension to the core Message Window functionality
   to support Visual Novels <KITA_MessageExt>."
 );

 Fn.setPrProp(Window_Message, "setBackgroundTexture", () -> {
   var self = Fn.self;
 });

 final winMsgInitialize:JsFn = Fn.proto(Window_Message).dyn.initialize; 
 Fn.proto(Window_Message).dyn.initialize = function() {
  var self:TBox<Window_Message> = Fn.self;
  winMsgInitialize.call(self);
  var txtSpeed = textSpeed;
  self.dyn.originalTextSpeed = txtSpeed;
  self.dyn.activeTextSpeed = txtSpeed;
 };

//  Fn.prototype(Window_Message)

 Fn.proto(Window_Message).dyn.processEscapeCharacter = function(code:String, textState:String) {
   var self: TBox<Window_Message> = Fn.self;
   switch(code) {
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
      var winBaseProcessEscChar:JsFn = Fn.getPrProp(Window_Base, "processEscapeCharacter");
      winBaseProcessEscChar.call(self, code, textState);
   }
 };

 Fn.setPrPropVoidFn(Window_Message, "updateTextSpeed",(value) -> {
  var self:Dynamic = Fn.self;
  self.activeTextSpeed = value;
});

var WinBaseProcessNormChar:JsFn = Fn.getPrProp(Window_Base, "processNormalCharacter");
var WinMsg:Dynamic = Window_Message;
Fn.setPrPropVoidFn(Window_Message, "processNormalCharacter", (textState) -> {
  var self:TBox<Window_Message> = Fn.self;
  var txtState:String = textState;
  WinBaseProcessNormChar.call(self, txtState);
  self.startWait(self.dyn.activeTextSpeed);
});

 var winMessageTerminateMessage:JsFn = Fn.getPrProp(Window_Message, "terminateMessage");
 Fn.setPrPropVoidFn(Window_Message, "terminateMessage", (_) -> {
   var self:Dynamic = Fn.self;
   self.activeTextSpeed = self.originalTextSpeed;
   winMessageTerminateMessage.call(self);
 });

}

function setTextSpeed(value:Int) {
  textSpeed = value;
}