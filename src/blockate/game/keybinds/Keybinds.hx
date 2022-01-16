package blockate.game.keybinds;

/**
 * ...
 * @author ...
 */
class Keybinds
{
	public function new() {}

	public static function trigger()
	{
		Fullscreen.trigger();
	}

	public static function check()
	{
		Fullscreen.check();
	}

	public static function checkR()
	{
		return
		{
			fs : Fullscreen.check()
		};
	}
}
