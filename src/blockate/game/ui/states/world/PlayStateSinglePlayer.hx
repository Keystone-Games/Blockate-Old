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

	private static var map = {};
	
	private static var baseTile = new FlxSprite();
	// the coordinates of a tile must be 8x the coordinates on the map data

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
