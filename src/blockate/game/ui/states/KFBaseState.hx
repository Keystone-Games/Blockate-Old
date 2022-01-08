package blockate.game.ui.states;

import flixel.FlxState;
import lime.system.System;

class KFBaseState extends FlxState
{
	public override function update(dt:Float)
	{
		super.update(dt);

		if (dt != 0.001)
		{
			Logger.simpleLog("Delta time is not expected; quitting");
			System.exit(255);
		}
	}

	public function new()
	{
		super();
		Logger.simpleLog(KFBaseState);
	}
}
