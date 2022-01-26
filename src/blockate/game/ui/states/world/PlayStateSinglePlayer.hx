package blockate.game.ui.states.world;

import blockate.game.util.PlayState;

/**
 * ...
 * @author SidGames5
 */
class PlayStateSinglePlayer extends PlayState 
{
	public static var stateType:PlayStateType;

	public function new(worldFile:String) 
	{
		super(worldFile);
		
		stateType = SINGLEPLAYER;
	}
	
}