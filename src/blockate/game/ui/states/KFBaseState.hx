package blockate.game.ui.states;

import blockate.game.keybinds.Keybinds;
import flixel.FlxG;
import flixel.FlxState;
import kglog.Logger;
import lime.system.System;

class KFBaseState extends FlxState
{
	public override function create()
	{
		if (Reference.debug)
		{
			FlxG.fullscreen = false;
		}
	}
	public override function update(dt:Float)
	{
		super.update(dt);

		if (dt != 0.001)
		{
			Logger.simpleLog("Delta time is not expected; quitting");
			System.exit(255);
		}
		
		Keybinds.checkBasic();
	}

	public function new()
	{
		super();
		Logger.simpleLog(KFBaseState);
	}
}
