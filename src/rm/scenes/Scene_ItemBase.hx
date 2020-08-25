package rm.scenes;

import rm.core.Rectangle;
import rm.objects.Game_Actor;
import rm.windows.Window_Selectable;
import rm.windows.Window_MenuActor;
import rm.windows.Window_Base;

/**
 * Super class of all public function item(skill, items, etc) screen scenes.
 * Super class of Scene_Item & Scene_Skill.
 */
@:expose("Scene_ItemBase")
@:native("Scene_ItemBase")
extern class Scene_ItemBase extends Scene_Base {
 private var _actorWindow: Window_MenuActor;
 private var _itemWindow: Window_Selectable;

 #if !compileMV
 public function actorWindowRect(): Rectangle;
 #end

 /**
  * Creates the actor window within the base item scene.
  *
  * @memberof Scene_ItemBase
  */
 public function createActorWindow(): Void;

 /**
  * Returns the item attached to the item window within the base item scene.
  *
  * @returns {*}
  * @memberof Scene_ItemBase
  */
 public function item(): Any;

 /**
  * Returns the current game actor.
  *
  * @returns {Game_Actor}
  * @memberof Scene_ItemBase
  */
 public function user(): Game_Actor;

 /**
  * Returns true if the cursor is left.
  *
  * @returns {boolean}
  * @memberof Scene_ItemBase
  */
 public function isCursorLeft(): Bool;

 /**
  * Shows the sub window.
  *
  * @param {Window_Base} window
  * @memberof Scene_ItemBase
  */
 public function showSubWindow(window: Window_Base): Void;

 /**
  * Hides the sub window.
  *
  * @param {Window_Base} window
  * @memberof Scene_ItemBase
  */
 public function hideSubWindow(window: Window_Base): Void;

 public function onActorOk(): Void;
 public function onActorCancel(): Void;
 public function determineItem(): Void;

 /**
  * Uses the current item.
  *
  * @memberof Scene_ItemBase
  */
 public function useItem(): Void;

 /**
  * Activates the item window.
  *
  * @memberof Scene_ItemBase
  */
 public function activateItemWindow(): Void;

 public function itemTargetActors(): Game_Actor;

 /**
  * Returns true if the user (game actor) can use the item.
  *
  * @returns {boolean}
  * @memberof Scene_ItemBase
  */
 public function canUse(): Bool;

 /**
  * Returns true if the item effects are valid on the public function target(the user).
  *
  * @returns {boolean}
  * @memberof Scene_ItemBase
  */
 public function isItemEffectsValid(): Bool;

 public function applyItem(): Void;

 /**
  * Checks the common event set on the item.
  *
  * @memberof Scene_ItemBase
  */
 public function checkCommonEvent(): Void;
}
