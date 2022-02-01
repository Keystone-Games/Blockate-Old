package blockate;

import blockate.game.ui.states.menu.Menu;

typedef InitialState = Menu;

class Reference
{
	public static final APP_NAME:String = "Blockate";
	public static final APP_ID:String = "blockate";
	public static final APP_VERSION = {
		major: 0,
		minor: 0,
		patch: 0,
		build: 0,
		state: "alpha",
		state_letter: "a"
	};

	public static final CFR:Int = 1000;

	public static var FULLSCREEN:Bool = true;
	
	public static var debug:Bool = false;
}
