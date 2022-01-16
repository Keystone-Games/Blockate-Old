package blockate.game.ui.states.menu;

import blockate.game.ui.states.menu.MenuBridge;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import kglog.Logger;

class OptionsMenu extends MenuBridge
{
	public var frame:FlxSprite;
	public var anchor:FlxSprite;
	public var title:FlxText;
	public var backButton:FlxButton;

	public override function create()
	{
		super.create();

		frame = new FlxSprite(0, 0);
		frame.makeGraphic(640, 480, FlxColor.fromString("2f2f2f"));
		frame.screenCenter(XY);
		add(frame);

		anchor = new FlxSprite(0, 0);
		anchor.makeGraphic(1, 1, FlxColor.fromString("2f2f2f"));
		anchor.screenCenter(XY);
		add(anchor);
	}

	public override function update(dt:Float)
	{
		super.update(dt);
	}

	public function new()
	{
		super();
		Logger.simpleLog(OptionsMenu);
	}
}
