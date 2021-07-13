package blockate.states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class ProfileState extends FlxState
{
	private var title:FlxText = new FlxText(0, 0, 0, "Profile", 0, true).setFormat("Perfect DOS VGA 437", 96, FlxColor.GREEN, CENTER);

	override public function create()
	{
		super.create();

		title.screenCenter(X);

		add(title);
	}

	override public function update(dt:Float)
	{
		super.update(dt);

		// code that switches state to menu
		switch (FlxG.keys.justPressed.ESCAPE)
		{
			case true:
				FlxG.switchState(new MenuState());
			case false:
		}
	}
}
