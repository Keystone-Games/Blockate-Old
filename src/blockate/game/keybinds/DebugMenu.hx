package blockate.game.keybinds;

import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class DebugMenu
{
	public function new()
	{
		
	}

	public static function trigger() {
		
	}

	public static function check():Bool
	{
		var x = false;
		
		if (FlxG.keys.justPressed.F3) {
			x = true;
			trigger();
		}

		return x;
	}
}
