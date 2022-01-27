package blockate.game.util;
import haxe.Json;
import sys.io.File;

/**
 * ...
 * @author SidGames5
 */
class MapParser
{

	public function new()
	{

	}

	public static function getStringData(path:String):String
	{
		return File.getContent(path);
	}

	public static function getJsonData(path:String):String
	{
		var content = File.getContent(path);

		var json = Json.parse(content);

		return json;
	}
	
	public static function getBlock(x:Int, y:Int, path:String) {}

}
