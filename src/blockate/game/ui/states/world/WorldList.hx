package blockate.game.ui.states.world;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import kglog.Logger;

class WorldList extends KFBaseState
{
	public var title:FlxText;

	public var box:FlxSprite;

	public static var slot1Box:FlxSprite;
	public static var slot1Label:FlxText;
	public static var slot1Size:FlxText;
	public static var slot1Button:FlxSprite;

	public static var slot2Box:FlxSprite;
	public static var slot2Label:FlxText;
	public static var slot2Size:FlxText;
	public static var slot2Button:FlxSprite;

	public static var slot3Box:FlxSprite;
	public static var slot3Label:FlxText;
	public static var slot3Size:FlxText;
	public static var slot3Button:FlxSprite;

	public static var slot4Box:FlxSprite;
	public static var slot4Label:FlxText;
	public static var slot4Size:FlxText;
	public static var slot4Button:FlxSprite;

	public static var slot5Box:FlxSprite;
	public static var slot5Label:FlxText;
	public static var slot5Size:FlxText;
	public static var slot5Button:FlxSprite;

	public static var slot6Box:FlxSprite;
	public static var slot6Label:FlxText;
	public static var slot6Size:FlxText;
	public static var slot6Button:FlxSprite;

	public static var slot7Box:FlxSprite;
	public static var slot7Label:FlxText;
	public static var slot7Size:FlxText;
	public static var slot7Button:FlxSprite;

	public static var slot8Box:FlxSprite;
	public static var slot8Label:FlxText;
	public static var slot8Size:FlxText;
	public static var slot8Button:FlxSprite;

	public override function create()
	{
		super.create();

		// placeholder
		// will be an image later
		title = new FlxText(0, 0, 0, "Worlds").setFormat("res/assets/fonts/EightBitDragon.ttf", 128, FlxColor.GREEN, FlxTextAlign.CENTER);
		title.screenCenter(X);
		add(title);

		box = new FlxSprite();
		box.makeGraphic(Math.round(FlxG.width * 0.75), FlxG.height - Math.round(title.height), FlxColor.fromString("#111111"));
		box.screenCenter(X);
		box.y = Math.round(title.height);
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
