package utils;
import js.html.Console;

class Log {
  public static function log(message:Array<Dynamic>) {
    Console.log(message);
  }

  public static function warn(message:Array<Dynamic>) {
    Console.warn(message);
  }

  public static function info(message:Array<Dynamic>) {
    Console.info(message);
  }

  public static function error(message:Array<Dynamic>) {
    Console.error(message);
  }
}