package blockate.util;

import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class Button
{
	public static function create(?fSizeX:Int = 32, ?fSizeY:Int = 9, ?fColor:FlxColor = FlxColor.WHITE, ?fText:String = "Button", ?fTextSize:Int = 8,
			?fPosX:Int = 0, ?fPosY:Int = 0)
	{
		return {
			bBorder: new FlxSprite().makeGraphic(fSizeX, fSizeY, fColor),
			bText: new FlxText(0, 0, 0, fText).setFormat(null, fTextSize, fColor, CENTER)
		};
	}
}
