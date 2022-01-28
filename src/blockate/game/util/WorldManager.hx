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

	public static function initWorlds()
	{
		var s0p = Path.join([System.applicationStorageDirectory, "slot0.json"]);
		var s1p = Path.join([System.applicationStorageDirectory, "slot1.json"]);
		var s2p = Path.join([System.applicationStorageDirectory, "slot2.json"]);
		var s3p = Path.join([System.applicationStorageDirectory, "slot3.json"]);
		var s4p = Path.join([System.applicationStorageDirectory, "slot4.json"]);
		var s5p = Path.join([System.applicationStorageDirectory, "slot5.json"]);
		var s6p = Path.join([System.applicationStorageDirectory, "slot6.json"]);
		var s7p = Path.join([System.applicationStorageDirectory, "slot7.json"]);

		var template =
		{
			status: "empty",

			player: {
				"username": {
					backpack: {},
					position: {
						x:0,
						y:0,
						z:0
					}
				}
			},

			map: {}
		};
	}

}