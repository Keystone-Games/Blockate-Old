package blockate.game.ui.states.world;

import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import kglog.Logger;

class WorldList extends KFBaseState
{
	public var title:FlxText;
	
	public var box:FlxSprite;
	
	public override function create()
	{
		super.create();
		
		// placeholder
		// will be an image later
		title = new FlxText(0, 0, 0, "Worlds").setFormat("res/assets/fonts/EightBitDragon.ttf", 128, FlxColor.GREEN, FlxTextAlign.CENTER);
		title.screenCenter(X);
		add(title);
		
		box = new FlxSprite();
		box.makeGraphic(960, 720 - title.height, FlxColor.WHITE);
		box.screenCenter(X);
		add(box);
	}

	public override function update(dt)
	{
		super.update(dt);
	}

	public function new()
	{
		super();
		Logger.simpleLog(WorldList);
	}
}
