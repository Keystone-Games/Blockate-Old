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
		worldListButton.screenCenter(X);
		worldListButton.scale.set(2, 2);
		add(worldListButton);
	}

	public override function update(dt:Float)
	{
		super.update(dt);
	}

	private static function worldListButtonClick()
	{
		FlxG.switchState(new WorldList());
	}
}
