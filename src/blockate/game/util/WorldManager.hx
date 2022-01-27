package blockate.game.util;
import blockate.game.ui.states.world.PlayStateSinglePlayer;
import flixel.FlxG;
import haxe.io.Path;
import kglog.Logger;
import lime.system.System;

/**
 * ...
 * @author SidGames5
 */
class WorldManager
{

	public function new()
	{

	}

	public static function loadSlot(slot:Int)
	{
		Logger.simpleLog("Loading world slot " + slot);

		var file = "slot" + slot;
		var extension = ".json";
		var ffn = file + extension;
		var path = Path.join([System.applicationStorageDirectory, ffn]);

		FlxG.switchState(new PlayStateSinglePlayer(path));
	}

}