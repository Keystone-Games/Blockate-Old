package blockate.init;

import flixel.FlxGame;
import kglog.Logger;
import openfl.Lib;

class Init
{
	#if sys
	public static var args = Sys.args();
	#else
	public static var args = ["CLI arguments not available"];
	#end

	public static function preInit(PreInitialisationArgs:Array<Dynamic>)
	{
		// trace("Pre-initialising with args: " + PreInitialisationArgs);
		Logger.simpleLog("Pre-initialising with args: " + PreInitialisationArgs);
		if (Init.args[0] == "CLI arguments not available")
		{
			Logger.error(Init.args[0], "blockate.init.Init");
		}
		else
		{
			Logger.simpleLog('Program starting with CLI args $args');
		}

		for (i => v in args)
		{
			trace(i, v);

			if (v == "-debug")
			{
				Reference.debug = true;

				break;
			}
		}
		
		#if debug
		Reference.debug = true;
		#end

		init(PreInitialisationArgs);
	}

	public static function init(InitialisationArgs:Array<Dynamic>)
	{
		if (Reference.debug) {
			Reference.FULLSCREEN = false;
		}
		
		Logger.simpleLog("Starting Blockate " + Reference.APP_VERSION.major + "." + Reference.APP_VERSION.minor + "." + Reference.APP_VERSION.patch + Reference.APP_VERSION.state_letter + Reference.APP_VERSION.build);
		
		postInit(InitialisationArgs);
	}

	public static function postInit(PostInitialisationArgs:Array<Dynamic>)
	{
		Logger.simpleLog("Adding child");
		Lib.current.addChild(new FlxGame(0, 0, Reference.InitialState, 1, Reference.CFR, Reference.CFR, true, Reference.FULLSCREEN));
		Logger.simpleLog("Added child with arguments: GameWidth:0, GameHeight:0, InitialState:"
						 + Reference.InitialState
						 + ", Zoom:1, UpdateFramerate:"
						 + Reference.CFR
						 + ", DrawFramerate:"
						 + Reference.CFR
						 + ", SkipSplash:true, StateFullscreen:"
						 + Reference.FULLSCREEN);
	}
}
