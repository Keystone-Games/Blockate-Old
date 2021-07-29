package blockate.util;

import flixel.FlxBasic;
import flixel.FlxG;
import flixel.input.mouse.FlxMouse;

class OnClick
{
	public static function check(object:FlxBasic, after)
	{
		if (FlxG.mouse.overlaps(object) && FlxG.mouse.justPressed)
		{
			after();
		}
	}
}
