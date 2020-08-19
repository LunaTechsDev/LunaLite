package rm.scenes;

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
