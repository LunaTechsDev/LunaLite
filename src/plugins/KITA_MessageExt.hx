package plugins;

import nodes.SpriteIconOsc;
import rm.core.Bitmap;
import nodes.SpriteBust;
import rm.managers.PluginManager;
import utils.Fn;
import utils.Comment;
import rm.windows.Window_Message;
import rm.sprites.Sprite_Base;

using core.StringExtensions;

import macros.MacroTools;

using Std;

var textSpeed: Int = 2;
final img = new Bitmap(128, 128);
final MSGBUST = new SpriteBust(0, 0, img);
final OSCSprite = new SpriteIconOsc(0, 0, img);

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

 //  var KitaWnMsg = Fn.renameClass(Window_Message, KitaWindowMessage);
}

function setTextSpeed(value: Int) {
 textSpeed = value;
}

// class KitaWindowMessage extends Window_Message {
//  public var activeTextSpeed: Int;
//  public var originalTextSpeed: Int;
//  public var msgBust: SpriteBust;
//  public var testSprite: SpriteIconOsc;
//  public function new(x, y, width, height) {
//   super(x, y, width, height);
//   this.originalTextSpeed = textSpeed;
//   this.activeTextSpeed = textSpeed;
//   this.msgBust = MSGBUST;
//   this.testSprite = OSCSprite;
//   img.fillRect(0, 0, 128, 128, "black");
//   this.msgBust.move(0, -128);
//   this.testSprite.move(0, 400);
//   this.addChild(this.testSprite);
//   this.addChild(this.msgBust);
//   this.testSprite.show();
//   this.msgBust.show();
//  }
//  public function updateTextSpeed(value) {
//   this.activeTextSpeed = value;
//  }
//  public override function processEscapeCharacter(code: String,
//    textState: String) {
//   switch (code) {
//    case '$':
//     this._goldWindow.open();
//    case '.':
//     this.startWait(15);
//    case '!':
//     this.startPause();
//    case '>':
//     this._lineShowFast = true;
//    case '<':
//     this._lineShowFast = false;
//    case '^':
//     this._pauseSkip = true;
//    case 'TS':
//     this.updateTextSpeed(this.obtainEscapeParam(textState).int());
//    case _:
//     super.processEscapeCharacter(code, textState);
//   }
//  }
//  public override function processNormalCharacter(textState: String) {
//   super.processNormalCharacter(textState);
//   this.startWait(this.activeTextSpeed);
//  }
//  public override function terminateMessage() {
//   this.activeTextSpeed = this.originalTextSpeed;
//   super.terminateMessage();
//  }
// }
