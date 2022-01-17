package blockate.game.keybinds;
import kglog.Logger;
import lime.system.System;
import flixel.FlxG;

/**
 * ...
 * @author SidGames5
 */
class Exit 
{

	public function new() 
	{
		
	}
	
	public static function trigger() {
		Logger.simpleLog("Quitting");
		System.exit(0);
	}

	public static function check():Bool
	{
		var x = false;
		
		if (FlxG.keys.justPressed.ESCAPE) {
			x = true;
			trigger();
		}

		return x;
	}
	
}