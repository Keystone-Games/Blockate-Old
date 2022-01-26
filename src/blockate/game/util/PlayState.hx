package blockate.game.util;

import flixel.FlxState;
import kglog.Logger;

/**
 * @author SidGames5
 */
class PlayState extends FlxState
{
	public static var stateType:PlayStateType;

	public override function create()
	{
		super.create();
	}

	public override function update(dt:Float)
	{
		super.update(dt);
	}

	public function new(worldFile:String)
	{
		super();

		Logger.simpleLog("Loading base play state");
	}
}

extern enum PlayStateType
{
	SINGLEPLAYER;
	MULTIPLAYER;
}
