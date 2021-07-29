package blockate.states;

import blockate.util.Player;
import flixel.FlxSprite;
import flixel.FlxState;

class Play extends FlxState
{
	public var player:FlxSprite;

	public override function create()
	{
		super.create();

		Player.init();
		add(player);
	}

	public override function update(dt:Float)
	{
		super.update(dt);

		Player.update();
		player = Player.getInstance();
	}
}
