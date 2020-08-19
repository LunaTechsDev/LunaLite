package rm.managers;

import rm.types.LunaTea.DamageColorType;
import rm.objects.Game_Actor;
import rm.types.LunaTea.Color;
import rm.core.Bitmap;
import rm.abstracts.windows.WindowBase;

#if !compileMV
@:native("ColorManager")
extern class ColorManager {
 private var _windowSkin: Bitmap;

 /**
  * Loads the window skin into ColorManager.
  */
 public static function loadWindowSkin(): Void;

 /**
  * Loads the text color using the window skin color Index.
  * @param windowSkinColorIndex
  * @returns Color
  */
 public static function textColor(windowSkinColorIndex: Int): Color;

 /**
  * Uses the normal color, index 0
  * of the window skin.
  */
 public static function normalColor(): Color;

 /**
  * Uses the system color; index 16 on the window skin.
  * @return Color
  */
 public static function systemColor(): Color;

 /**
  * Uses the crisis color; index 17 on the window skin.
  * @return Color
  */
 public static function crisisColor(): Color;

 /**
  * Uses the death color; index 18 on the window skin.
  * @return Color
  */
 public static function deathColor(): Color;

 /**
  * Uses the  gauge back color; index 19 on the window skin.
  * @return Color
  */
 public static function gaugeBackColor(): Color;

 /**
  * Uses the hp gauge color 1. Index 20 on the window skin.
  * @return Color
  */
 public static function hpGaugeColor1(): Color;

 /**
  * Uses the hp guage color 2. Index 21 on the window skin.
  * @return Color
  */
 public static function hpGaugeColor2(): Color;

 /**
  * Uses the mp gauge color 1. Index 22 on the window skin.
  * @return Color
  */
 public static function mpGaugeColor1(): Color;

 /**
  * Uses the mp gauge color 2. Index 23 on the window skin.
  * @return Color
  */
 public static function mpGaugeColor2(): Color;

 /**
  * Uses the mp cost color. Index 23 on the window skin.
  * @return Color
  */
 public static function mpCostColor(): Color;

 /**
  * Uses the power up color. Index 24 on the window skin.
  * @return Color
  */
 public static function powerUpColor(): Color;

 /**
  * Uses the power down color. Index 25 on the window skin.
  * @return Color
  */
 public static function powerDownColor(): Color;

 /**
  * Uses the ct gauge color 1. Index 26 on the window skin.
  * @return Color
  */
 public static function ctGaugeColor1(): Color;

 /**
  * Uses the ct gauge color 2. Index 27 on the window skin.
  * @return Color
  */
 public static function ctGaugeColor2(): Color;

 /**
  * Uses the tp gauge color 1. Index 28 on the window skin.
  * @return Color
  */
 public static function tpGaugeColor1(): Color;

 /**
  * Uses the tp gauge color 2. Index 29 on the window skin.
  * @return Color
  */
 public static function tpGaugeColor2(): Color;

 /**
  * Uses the tp cost color. Index 29 on the window skin.
  * @return Color
  */
 public static function tpCostColor(): Color;

 /**
  * Uses the pending color.
  * @return Color
  */
 public static function pendingColor(): Color;

 /**
  * Given the actor status the color is different.
  * Alive -> Normal Color
  * Dying -> Crisis Color
  * Dead -> Death Color
  * If it's not an actor, it returns the normal color.
  * @param actor
  * @return Color
  */
 public static function hpColor(actor: Game_Actor): Color;

 /**
  * Based on actor; currently returns normal color.
  * @return Color
  */
 public static function mpColor(): Color; // TODO: Will be taking actor

 /**
  * Based on actor; currently returns normal color.
  * @return Color
  */
 public static function tpColor(): Color; // TODO: Will be taking actor

 /**
  * This returns the text color based on change.
  * change > 0 -> Power Up Color
  * change < 0 -> Power Down Color
  * else -> Normal color.
  * @param change
  * @return Color
  */
 public static function paramChangeTextColor(change: Int): Color;

 /**
  * Returns the color based on Color Type.
  * 0 -> HP Damage Color
  * 1 -> HP Recover Color
  * 2 -> MP Damage Color
  * 3 -> MP Recover Color
  * Number -> Default Color
  * @param colorType
  * @return Color
  */
 public static function damageColor(colorType: DamageColorType): Color;

 /**
  * Returns the color "rgba(0, 0, 0, 0.6)"
  * @return Color
  */
 public static function outlineColor(): Color;

 /**
  * Returns the color "rgba(0, 0, 0, 0.6)"
  * @return Color
  */
 public static function dimColor1(): Color;

 /**
  * Returns the color "rgba(0, 0, 0, 0)"
  * @return Color
  */
 public static function dimColor2(): Color;

 /**
  * Returns the color "rgba(32, 32, 32, 0.5)"
  * @return Color
  */
 public static function itemBackColor1(): Color;

 /**
  * Returns the color "rgba(0, 0, 0, 0.5)"
  * @return Color
  */
 public static function itemBackColor2(): Color;
}
#else
@:native("ColorManager")
@:nullSafety(Strict)
class ColorManager {
 public static var baseWindow: WindowBase = new WindowBase(0, 0, 0, 0);
 public static var windowSkin: Bitmap = baseWindow.windowskin;

 /**
  * Loads the window skin into ColorManager.
  */ public static function loadWindowSkin(): Void {
  // Do nothing in MV
 }

 /**
  * Loads the text color using the window skin color Index.
  * @param windowSkinColorIndex
  */
 public static function textColor(windowSkinColorIndex: Int): Color {
  return baseWindow.textColor(windowSkinColorIndex);
 }

 /**
  * Uses the normal color, index 0
  * of the window skin.
  */
 public static function normalColor(): Color {
  return baseWindow.normalColor();
 };

 /**
  * Uses the system color; index 16 on the window skin.
  * @return Color
  */
 public static function systemColor(): Color {
  return baseWindow.systemColor();
 };

 /**
  * Uses the crisis color; index 17 on the window skin.
  * @return Color
  */
 public static function crisisColor(): Color {
  return baseWindow.crisisColor();
 };

 /**
  * Uses the death color; index 18 on the window skin.
  * @return Color
  */
 public static function deathColor(): Color {
  return baseWindow.deathColor();
 };

 /**
  * Uses the  gauge back color; index 19 on the window skin.
  * @return Color
  */
 public static function gaugeBackColor(): Color {
  return baseWindow.gaugeBackColor();
 };

 /**
  * Uses the hp gauge color 1. Index 20 on the window skin.
  * @return Color
  */
 public static function hpGaugeColor1(): Color {
  return baseWindow.hpGaugeColor1();
 };

 /**
  * Uses the hp guage color 2. Index 21 on the window skin.
  * @return Color
  */
 public static function hpGaugeColor2(): Color {
  return baseWindow.hpGaugeColor2();
 };

 /**
  * Uses the mp gauge color 1. Index 22 on the window skin.
  * @return Color
  */
 public static function mpGaugeColor1(): Color {
  return baseWindow.mpGaugeColor1();
 };

 /**
  * Uses the mp gauge color 2. Index 23 on the window skin.
  * @return Color
  */
 public static function mpGaugeColor2(): Color {
  return baseWindow.mpGaugeColor2();
 };

 /**
  * Uses the mp cost color. Index 23 on the window skin.
  * @return Color
  */
 public static function mpCostColor(): Color {
  return baseWindow.mpCostColor();
 };

 /**
  * Uses the power up color. Index 24 on the window skin.
  * @return Color
  */
 public static function powerUpColor(): Color {
  return baseWindow.powerUpColor();
 };

 /**
  * Uses the power down color. Index 25 on the window skin.
  * @return Color
  */
 public static function powerDownColor(): Color {
  return baseWindow.powerDownColor();
 };

 /**
  * Uses the ct gauge color 1. Index 26 on the window skin.
  * @return Color
  */
 public static function ctGaugeColor1(): Color {
  return baseWindow.textColor(26);
 };

 /**
  * Uses the ct gauge color 2. Index 27 on the window skin.
  * @return Color
  */
 public static function ctGaugeColor2(): Color {
  return baseWindow.textColor(27);
 };

 /**
  * Uses the tp gauge color 1. Index 28 on the window skin.
  * @return Color
  */
 public static function tpGaugeColor1(): Color {
  return baseWindow.tpGaugeColor1();
 };

 /**
  * Uses the tp gauge color 2. Index 29 on the window skin.
  * @return Color
  */
 public static function tpGaugeColor2(): Color {
  return baseWindow.tpGaugeColor2();
 };

 /**
  * Uses the tp cost color. Index 29 on the window skin.
  * @return Color
  */
 public static function tpCostColor(): Color {
  return baseWindow.tpCostColor();
 };

 /**
  * Uses the pending color.
  * @return Color
  */
 public static function pendingColor(): Color {
  return baseWindow.pendingColor();
 };

 /**
  * Given the actor status the color is different.
  * Alive -> Normal Color
  * Dying -> Crisis Color
  * Dead -> Death Color
  * If it's not an actor, it returns the normal color.
  * @param actor
  * @return Color
  */
 public static function hpColor(actor: Game_Actor): Color {
  return baseWindow.hpColor(actor);
 }

 /**
  * Based on actor; currently returns normal color.
  * @return Color
  */
 public static function mpColor(?actor: Game_Actor): Color {
  return baseWindow.mpColor(actor);
 } // TODO: Will be taking actor

 /**
  * Based on actor; currently returns normal color.
  * @return Color
  */
 public static function tpColor(?actor: Game_Actor): Color {
  return baseWindow.tpColor(actor);
 } // TODO: Will be taking actor

 /**
  * This returns the text color based on change.
  * change > 0 -> Power Up Color
  * change < 0 -> Power Down Color
  * else -> Normal color.
  * @param change
  * @return Color
  */
 public static function paramChangeTextColor(change: Int): Color {
  return baseWindow.paramchangeTextColor(change);
 };

 /**
  * Returns the color based on Color Type.
  * 0 -> HP Damage Color
  * 1 -> HP Recover Color
  * 2 -> MP Damage Color
  * 3 -> MP Recover Color
  * Number -> Default Color
  * @param colorType
  * @return Color
  */
 public static function damageColor(colorType: DamageColorType): Color {
  switch (colorType) {
   case 0: // HP damage
    return "#ffffff";
   case 1: // HP recover
    return "#b9ffb5";
   case 2: // MP damage
    return "#ffff90";
   case 3: // MP recover
    return "#80b0ff";
   default:
    return "#808080";
  }
 };

 /**
  * Returns the color "rgba(0, 0, 0, 0.6)"
  * @return Color
  */
 public static function outlineColor(): Color {
  return "rgba(0, 0, 0, 0.6)";
 }

 /**
  * Returns the color "rgba(0, 0, 0, 0.6)"
  * @return Color
  */
 public static function dimColor1(): Color {
  return baseWindow.dimColor1();
 }

 /**
  * Returns the color "rgba(0, 0, 0, 0)"
  * @return Color
  */
 public static function dimColor2(): Color {
  return baseWindow.dimColor2();
 }

 /**
  * Returns the color "rgba(32, 32, 32, 0.5)"
  * @return Color
  */
 public static function itemBackColor1(): Color {
  return "rgba(32, 32, 32, 0.5)";
 }

 /**
  * Returns the color "rgba(0, 0, 0, 0.5)"
  * @return Color
  */
 public static function itemBackColor2(): Color {
  return "rgba(0, 0, 0, 0.5)";
 }
}
#end
