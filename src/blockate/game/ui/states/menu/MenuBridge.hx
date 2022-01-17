package blockate.game.ui.states.menu;

import blockate.game.ui.states.world.WorldList;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.ui.FlxButton;
import kglog.Logger;
import lime.system.System;

class MenuBridge extends KFBaseState
{
	public var worldListButton:FlxSprite;
	public var optionsMenuButton:FlxSprite;
	public var exitButton:FlxSprite;

	public override function create()
	{
		super.create();
		
		worldListButton = new FlxSprite(0, 0, Resources.worlds__png);
		worldListButton.screenCenter(XY);
		worldListButton.scale.set(2, 2);
		add(worldListButton);
		
		optionsMenuButton = new FlxSprite(0, 0, Resources.options__png);
		optionsMenuButton.screenCenter(XY);
		optionsMenuButton.scale.set(2, 2);
		add(optionsMenuButton);

		exitButton = new FlxSprite(0, 0, Resources.exit__png);
		exitButton.screenCenter(XY);
		exitButton.scale.set(2, 2);
		add(exitButton);

		worldListButton.y = worldListButton.y - (2 * worldListButton.height);
		exitButton.y = exitButton.y + (2 * exitButton.height);
	}

	public override function update(dt:Float)
	{
		super.update(dt);
		
		if (FlxG.mouse.overlaps(worldListButton) && FlxG.mouse.justPressed) {
			worldListButtonClick();
		}
		if (FlxG.mouse.overlaps(optionsMenuButton) && FlxG.mouse.justPressed) {
			optionsMenuButtonClick();
		}
		if (FlxG.mouse.overlaps(exitButton) && FlxG.mouse.justPressed) {
			exitButtonClick();
		}
	}

	private static function worldListButtonClick()
	{
		FlxG.switchState(new WorldList());
	}

	private static function optionsMenuButtonClick()
	{
		FlxG.switchState(new OptionsMenu());
	}

	private static function exitButtonClick()
	{
		Logger.simpleLog("Quitting");
		System.exit(0);
	}

	public function new()
	{
		super();
		Logger.simpleLog(MenuBridge);
	}
}
