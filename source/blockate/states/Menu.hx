package blockate.states;

import blockate.util.Button;
import blockate.util.OnClick;
import flixel.FlxBasic;
import flixel.FlxG;
import flixel.FlxState;
import flixel.input.mouse.FlxMouse;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class Menu extends FlxState
{
	private static var title_text:FlxText;

	public var worlds_button:FlxText;

	public override function create()
	{
		super.create();

		var title_text = new FlxText(0, 0, 0, "Blockate").setFormat("EightBitDragon", 64, FlxColor.GREEN, CENTER);
		title_text.screenCenter(X);
		add(title_text);

		worlds_button = new FlxText(0, 0, 0, "Worlds", 0, false).setFormat("EightBitDragon", 32, FlxColor.GREEN, CENTER);
		worlds_button.screenCenter(XY);
		add(worlds_button);
	}

	public override function update(dt:Float)
	{
		super.update(dt);

		OnClick.check(worlds_button, function()
		{
			FlxG.switchState(new Play());
		});
	}
}
