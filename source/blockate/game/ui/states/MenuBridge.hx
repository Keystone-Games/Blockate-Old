package blockate.game.ui.states;

import blockate.game.ui.states.world.WorldList;
import flixel.FlxG;
import flixel.ui.FlxButton;

class MenuBridge extends KFBaseState
{
	public var worldListButton:FlxButton;
	public var optionsMenuButton:FlxButton;
	public var exitButton:FlxButton;

	public override function create()
	{
		super.create();

		worldListButton = new FlxButton(0, 0, "My worlds", function()
		{
			worldListButtonClick();
		});
		worldListButton.screenCenter(XY);
		worldListButton.scale.set(2, 2);
		add(worldListButton);
		
		optionsMenuButton = new FlxButton(0, 0, "Options", function()
		{
			optionsMenuButtonClick();
		});
		optionsMenuButton.screenCenter(XY);
		optionsMenuButton.scale.set(2,2);
		add(optionsMenuButton);
		
		exitButton = new FlxButton(0, 0, "Exit", function()
		{
			exitButtonClick();
		});
		exitButton.screenCenter(XY);
		exitButton.scale.set(2 ,2);
		add(exitButton);
		
		worldListButton.y = worldListButton.y + (2 * worldListButton.height);
		exitButton.y = exitButton.y + (2 * exitButton.height);
	}

	public override function update(dt:Float)
	{
		super.update(dt);
	}

	private static function worldListButtonClick()
	{
		FlxG.switchState(new WorldList());
	}
	private static function optionsMenuButtonClick() {
		FlxG.switchState(new OptionsMenu());
	}
	private static function exitButtonClick() {
		System.exit(0);
	}
}
