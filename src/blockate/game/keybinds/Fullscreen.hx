package blockate.game.keybinds;

import flixel.FlxG;
import kglog.Logger;

/**
 * ...
 * @author ...
 */
class Fullscreen
{
	public function new()
	{
		
	}

	public static function trigger() {
		Logger.simpleLog("Toggle fullscreen");
		
		if (FlxG.fullscreen) {
			Reference.FULLSCREEN = false;
			FlxG.fullscreen = false;
			Logger.simpleLog("Fullscreen is now off");
		} else {
			Reference.FULLSCREEN = true;
			FlxG.fullscreen = true;
			Logger.simpleLog("Fullscreen is now on");
		}
	}

	public static function check():Bool
	{
		var x = false;
		
		if (FlxG.keys.justPressed.F11) {
			x = true;
			trigger();
		}

		return x;
	}
}
