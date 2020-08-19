package rm.managers;

/**
 * Static class that plays sound effects defined in the database.
 */
@:native("SoundManager")
extern class SoundManager {
 public static function preloadImportantSounds(): Void;
 public static function loadSystemSound(n: Int): Void;
 public static function playSystemSound(n: Int): Void;
 public static function playCursor(): Void;
 public static function playOk(): Void;
 public static function playCancel(): Void;
 public static function playBuzzer(): Void;
 public static function playEquip(): Void;
 public static function playSave(): Void;
 public static function playLoad(): Void;
 public static function playBattleStart(): Void;
 public static function playEscape(): Void;
 public static function playEnemyAttack(): Void;
 public static function playEnemyDamage(): Void;
 public static function playEnemyCollapse(): Void;
 public static function playBossCollapse1(): Void;
 public static function playBossCollapse2(): Void;
 public static function playActorDamage(): Void;
 public static function playActorCollapse(): Void;
 public static function playRecovery(): Void;
 public static function playMiss(): Void;
 public static function playEvasion(): Void;
 public static function playMagicEvasion(): Void;
 public static function playReflection(): Void;
 public static function playShop(): Void;
 public static function playUseItem(): Void;
 public static function playUseSkill(): Void;
}
