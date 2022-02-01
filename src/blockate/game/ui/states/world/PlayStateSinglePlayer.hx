package blockate.game.ui.states.world;

import blockate.game.util.MapParser;
import blockate.game.util.PlayState;
import kglog.Logger;
import flixel.FlxSprite;

/**
 * ...
 * @author SidGames5
 */
class PlayStateSinglePlayer extends PlayState
{
	public static var stateType:Int;

	private static var map = {};

	private static var baseTile = new FlxSprite();
	
	/*
	 * The coordinate multiplier (cm) is a value for the side length of the texture.
	 * Every texture is a square usually with a side length of 8 pixels.
	 * The CM is a constant that must be defined in the code.
	 * Every texture's side length must be the defined CM.
	 */
	private static final cm:Int = 8;

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
