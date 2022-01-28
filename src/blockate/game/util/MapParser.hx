package blockate.game.util;
import haxe.Json;
import kglog.Logger;
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

	public static function getJsonData(path:String):{}
	{
		var content = File.getContent(path);

		var json = Json.parse(content);

		return json;
	}

	public static function getBlock(x:Int, y:Int, z:Int, path:String)
	{
		var world = getJsonData(path);

		Logger.simpleLog(world);
		var block = world["map"][x][y][z];
		return block;
	}

}
