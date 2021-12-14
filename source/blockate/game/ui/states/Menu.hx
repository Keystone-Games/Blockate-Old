package blockate.game.ui.states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class Menu extends KFBaseState
{
	public var backgroundImage:FlxSprite;
	public var mainText:FlxText;
	public var htp:FlxButton;
	public var playButton:FlxButton;

	public override function create()
	{
		super.create();

		mainText = new FlxText(0, 0, 0, "Blockate").setFormat(null, 64, FlxColor.WHITE, CENTER);
		mainText.screenCenter(X);
		add(mainText);

		playButton = new FlxButton(0, 0, "Play!", function()
		{
			playButtonClick();
		});
		playButton.screenCenter(XY);
		playButton.scale.set(8, 8);
		playButton.label.scale.set(8, 8);
		add(playButton);
	}

	public override function update(dt:Float)
	{
		super.update(dt);
	}

	public static function playButtonClick():Void
	{
		FlxG.switchState(new MenuBridge());
		return;
	}

	public function new()
	{
		super();
		trace(Menu);
	}
}
