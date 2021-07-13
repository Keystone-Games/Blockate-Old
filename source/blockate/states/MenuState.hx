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

	private var title:FlxText = new FlxText().setFormat("Perfect DOS VGA 437", 96, FlxColor.GREEN, CENTER);
	private var version:FlxText = new FlxText(0, 0, 0, Reference.APP_VERSION, 0, true).setFormat("Perfect DOS VGA 437", 48, FlxColor.WHITE, CENTER);

	public static var button_worlds:FlxSprite = new FlxSprite();
	public static var button_profile:FlxSprite = new FlxSprite();
	public static var button_friends:FlxSprite = new FlxSprite();
	public static var button_exit:FlxSprite = new FlxSprite();

	override public function create()
	{
		super.create();

		title.text = "Blockate";
		title.screenCenter(X);
		version.setPosition(16, 960);

		button_worlds.loadGraphic(AssetPaths.WorldsButton__png).setPosition(480, 270);
		button_profile.loadGraphic(AssetPaths.ProfileButton__png).setPosition(960, 270);
		button_friends.loadGraphic(AssetPaths.FriendsButton__png).setPosition(480, 540);
		button_exit.loadGraphic(AssetPaths.ExitButton__png).setPosition(960, 540);

		add(title);
		add(version);
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
		switch (FlxG.mouse.justPressed)
		{
			case true:
				switch (FlxG.mouse.overlaps(button_friends))
				{
					case true:
						FlxG.switchState(new FriendsListState());
					case false:
				}
				switch (FlxG.mouse.overlaps(button_profile))
				{
					case true:
						FlxG.switchState(new ProfileState());
					case false:
				}
			case false:
		}
	}
}
