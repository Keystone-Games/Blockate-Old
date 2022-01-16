package blockate.game.keybinds;

import flixel.FlxG;

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
		if (FlxG.fullscreen) {
			Reference.FULLSCREEN = false;
			FlxG.fullscreen = false;
		} else {
			Reference.FULLSCREEN = true;
			FlxG.fullscreen = true;
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
