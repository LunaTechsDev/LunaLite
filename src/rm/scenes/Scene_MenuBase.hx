package rm.scenes;

import rm.sprites.Sprite_Button;
import rm.core.Rectangle;
import rm.core.Sprite;
import rm.windows.Window_Help;
import rm.objects.Game_Actor;

/**
 * The super class of all menu-type scenes
 */
@:native("Scene_MenuBase")
extern class Scene_MenuBase extends Scene_Base {
 /**
  * The current actor selected in the base menu scene.
  *
  * @protected
  * @type {Game_Actor}
  * @memberof Scene_MenuBase
  */
 private var _actor: Game_Actor;

 /**
  * The background sprite used to display the scene background.
  *
  * @protected
  * @type {Sprite}
  * @memberof Scene_MenuBase
  */
 private var _backgroundSprite: Sprite;

 /**
  * The help window attached to the base menu scene.
  *
  * @protected
  * @type {Window_Help}
  * @memberof Scene_MenuBase
  */
 private var _helpWindow: Window_Help;

 /**
  * Returns the current game actor.
  *
  * @returns {Game_Actor}
  * @memberof Scene_MenuBase
  */
 public function actor(): Game_Actor;
 
 #if !compileMV
 @:native("_cancelButton")
 public var __cancelButton: Sprite_Button;
 private var _cancelButton: Sprite_Button;

 @:native("_pageupButton")
 public var __pageupButton: Sprite_Button;
 private var _pageupButton: Sprite_Button;

 @:native("_pagedownButton")
 public var __pagedownButton: Sprite_Button;
 private var _pagedownButton: Sprite_Button;

 public function helpAreaTop(): Void;
 public function helpAreaBottom(): Void;
 public function helpAreaHeight(): Void;
 public function mainAreaTop(): Void;
 public function mainAreaBottom(): Void;
 public function mainAreaHeight(): Void;
 public function helpWindowRect(): Rectangle;
 public function createButtons(): Void;
 public function needsCancelButton(): Bool;
 public function createCancelButton(): Void;
 public function needsPageButtons(): Bool;
 public function createPageButtons(): Void;
 public function updatePageButtons(): Void;
 public function arePageButtonsEnabled(): Bool;
 #end

 /**
  * Updates the current actor.
  *
  * @memberof Scene_MenuBase
  */
 public function updateActor(): Void;

 /**
  * Creates the background of the base menu scene.
  *
  * @memberof Scene_MenuBase
  */
 public function createBackground(): Void;

 /**
  * Sets the background opacity of the base menu scene background.
  *
  * @param {number} opacity
  * @memberof Scene_MenuBase
  */
 public function setBackgroundOpacity(opacity: Int): Void;

 /**
  * Creates the help window.
  *
  * @memberof Scene_MenuBase
  */
 public function createHelpWindow(): Void;

 /**
  * Moves to the next actor in the party.
  *
  * @memberof Scene_MenuBase
  */
 public function nextActor(): Void;

 /**
  * Moves to the previous actor in the party.
  *
  * @memberof Scene_MenuBase
  */
 public function previousActor(): Void;

 public function onActorChange(): Void;
}
