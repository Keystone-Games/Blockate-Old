package blockate.game.ui.states.world;

import blockate.game.util.MapParser;
import blockate.game.util.PlayState;
import kglog.Logger;

/**
 * ...
 * @author SidGames5
 */
class PlayStateSinglePlayer extends PlayState
{
	public static var stateType:Int;

	public var map = {};

	public function new(worldFile:String)
	{
		super(worldFile);
		Logger.simpleLog("Loading " + worldFile);

		Logger.simpleLog("Defining state type");
		stateType = 0;

		map = MapParser.getJsonData(worldFile);
	}

	public override function create()
	{
		super.create();
	}
	public override function update(dt:Float)
	{
		super.update(dt);
	}

}