package mz.managers;

import mz.core.CacheMap;
import mz.core.Bitmap;

/**
 * Static class that manages images. Loading the images
 * and create bitmap objects.
 */
@:native("ImageManager")
extern class ImageManager {

  public static var cache:CacheMap;

  public static function loadFace(filename: String, ?hue: Int): Bitmap;
  /**
   * Loads a Bitmap object from the 'img/parallaxes/' folder
   * and returns it.
   * @param {string} filename 
   * @param {number} [hue] 
   * @returns {Bitmap} 
   * @memberof ImageManagerStatic
   */
   public static function loadParallax(filename: String, ?hue: Int): Bitmap;
    /**
     * Loads a Bitmap object from the 'img/pictures/' folder
     * and returns it.
     * @param {string} filename 
     * @param {number} [hue] 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
     public static function loadPicture(filename: String, ?hue: Int): Bitmap;

     /**
     * Loads a Bitmap object from the 'img/animations/' folder
     * and returns it.
     * @param {string} filename 
     * @param {number} [hue] 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadAnimation(filename: String, ?hue: Int): Bitmap;
    /**
     * Loads a Bitmap object from the 'img/battlebacks1/' folder
     *  and returns it.
     * @param {string} filename 
     * @param {number} [hue] 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadBattleback1(filename: String, ?hue: Int): Bitmap;
    /**
     * Loads a Bitmap object from the 'img/battlebacks2/' folder
     * and returns it.
     * @param {string} filename 
     * @param {number} [hue] 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadBattleback2(filename: String, ?hue: Int): Bitmap;
    /**
     * Loads a Bitmap object from the 'img/enemies/' folder
     * and returns it.
     * @param {string} filename 
     * @param {number} [hue] 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadEnemy(filename: String, ?hue: Int): Bitmap;
    /**
     * Loads a Bitmap object from the 'img/characters/' folder
     * and returns it.
     * @param {string} filename 
     * @param {number} [hue] 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadCharacter(filename: String, ?hue: Int): Bitmap;

    public static function loadSvActor(filename: String, ?hue: Int): Bitmap;
    /**
     * Loads a Bitmap object from the 'img/sv_enemies/' folder
     * and returns it.
     * @param {string} filename 
     * @param {number} [hue] 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadSvEnemy(filename: String, ?hue: Int): Bitmap;
    /**
     * Loads a Bitmap object from 'img/system/' folder
     * and returns it.
     * @param {string} filename 
     * @param {number} [hue] 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadSystem(filename: String, ?hue: Int): Bitmap;
    /**
     * Loads a Bitmap object from the 'img/tilesets/' folder
     * and returns it.
     * @param {string} filename 
     * @param {number} [hue] 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadTileset(filename: String, ?hue: Int): Bitmap;
    /**
     * Loads a Bitmap object from the 'img/titles1/' folder
     * and returns it.
     * @param {string} filename 
     * @param {number} [hue] 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadTitle1(filename: String, ?hue: Int): Bitmap;
    /**
     * Loads a Bitmap object from the 'img/titles2/' folder
     * and returns it.
     * @param {string} filename 
     * @param {number} [hue] 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadTitle2(filename: String, ?hue: Int): Bitmap;
    /**
     * Loads a Bitmap object from any folder and returns it.
     * 
     * @param {string} folder 
     * @param {string} filename 
     * @param {number} hue 
     * @param {boolean} smooth 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadBitmap(folder: String, filename: String, hue: Int, smooth: Bool): Bitmap;
    /**
     * Loads an empty Bitmap object and returns it.
     * 
     * @param {string} path 
     * @param {number} hue 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadEmptyBitmap(path: String, hue: Int): Bitmap;
    /**
     * Loads a Bitmap object given a path
     * and returns it.
     * @param {string} path 
     * @param {number} hue 
     * @returns {Bitmap} 
     * @memberof ImageManagerStatic
     */
    public static function loadNormalBitmap(path: String, hue: Int): Bitmap;
    /**
     * Clears the image cache in RPGMakerMV.
     * 
     * @memberof ImageManagerStatic
     */
    public static function clear(): Void;
    /**
     * Returns true if the image cache
     * is ready.
     * @returns {boolean} 
     * @memberof ImageManagerStatic
     */
    public static function isReady(): Bool;
    /**
     * Returns true if the given filename
     * is an object character. Must contain
     * a  '!' in the file name to be an
     * object character.
     * @param {string} filename 
     * @returns {boolean} 
     * @memberof ImageManagerStatic
     */
    public static function isObjectCharacter(filename: String): Bool;
    /**
     * Returns true if the given filename is
     * a large character. Must contain a '$'
     * in the file name to be a large character.
     * @param {string} filename 
     * @returns {boolean} 
     * @memberof ImageManagerStatic
     */
    public static function isBigCharacter(filename: String): Bool;
    public static function isZeroParallax(filename: String): Bool;
}