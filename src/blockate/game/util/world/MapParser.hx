package blockate.game.util.world;
import blockate.game.util.world.WorldManager;
import haxe.Json;
import kglog.Logger;
import sys.io.File;
using blockate.game.util.JsonWorldBase;

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

	public static function getJsonData(path:String):World
	{
		WorldManager.checkWorlds();

		var content = File.getContent(path);

		var json:World = Json.parse(content);

		return json;
	}

	public static function getBlock(x:Int, y:Int, z:Int, path:String)
	{
		var world = getJsonData(path);

		Logger.simpleLog(world);
		var block = world.map[x][y][z];
		return block;
	}

}
