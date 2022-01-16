package blockate.game.ui.states.menu;

import blockate.game.keybinds.Keybinds;
import blockate.game.ui.states.KFBaseState;

/**
 * ...
 * @author ...
 */
class MenuBase extends KFBaseState 
{

	public function new() 
	{
		super();
		
	}
	
	public override function update(dt:Float) {
		super.update(dt);
		
		Keybinds.checkMenuSpecific();
	}
	
}