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

	public static function checkAll()
	{
		Fullscreen.check();
	}
	
	public static function checkBasic()
	{
		Fullscreen.check();
		Exit.check();
	}
	
	public static function checkMenuSpecific()
	{
	}

	public static function checkAllR()
	{
		return
		{
			fs : Fullscreen.check()
		};
	}
}
