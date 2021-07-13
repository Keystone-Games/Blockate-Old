package blockate.states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.system.System;

class MenuState extends FlxState
{
	private var elapsed:Float = 0;

	private var title:FlxText = new FlxText(0, 0, 0, "Blockate", 0, true).setFormat("Perfect DOS VGA 437", 72, FlxColor.GREEN, CENTER);

	private var button_worlds:FlxSprite = new FlxSprite(0, 0, AssetPaths.WorldsButton__png);
	private var button_profile:FlxSprite = new FlxSprite(0, 0, AssetPaths.ProfileButton__png);
	private var button_friends:FlxSprite = new FlxSprite(0, 0, AssetPaths.FriendsButton__png);
	private var button_exit:FlxSprite = new FlxSprite(0, 0, AssetPaths.ExitButton__png);

	override public function create()
	{
		super.create();

		title.screenCenter(X);

		add(title);
		add(button_exit);
		add(button_friends);
		add(button_profile);
		add(button_worlds);
	}

	override public function update(dt:Float)
	{
		super.update(dt);

		elapsed += dt;

		// exits the game is escape key or exit button is pressed
		switch (FlxG.keys.justPressed.ESCAPE)
		{
			case true:
				System.exit(0);
			case false:
		}
		switch (FlxG.mouse.justPressed && FlxG.mouse.overlaps(button_exit))
		{
			case true:
				System.exit(0);
			case false:
		}

		// code to make the buttons work (excluding exit button)
		/*switch (FlxG.mouse.justPressed)
			{
				case true:
					switch (FlxG.mouse.overlaps(button_friends))
					{
						case true:
							FlxG.switchState(new FriendsListState());
						case false:
					}
				case false:
		}*/
	}
}
