package blockate.game.ui.states.world;

import blockate.game.util.WorldManager;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
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

		// world slots
		slot1Box = new FlxSprite();
		slot1Box.makeGraphic(Math.round(box.width), Math.round(box.height / 8), FlxColor.fromString("#0F0F0F"));
		slot1Box.screenCenter(X);
		slot1Box.y = box.y;
		slot1Label = new FlxText(0, 0, 0, "Slot 1 (empty)").setFormat("res/assets/fonts/EightBitDragon.ttf", 32);
		slot1Label.setPosition(slot1Box.x, slot1Box.y);
		slot1Size = new FlxText(0, 0, 0, "Size: 0 MB").setFormat("res/assets/fonts/EightBitDragon.ttf", 24);
		slot1Size.setPosition(slot1Box.x, slot1Box.y + (slot1Box.height - slot1Size.height));
		slot1Button = new FlxButton(0, 0, "Load", function() {slot1play(); });
		slot1Button.setPosition(slot1Box.x + (slot1Box.width - slot1Size.width), slot1Box.x);
		add(slot1Box);
		add(slot1Label);
		add(slot1Size);
		add(slot1Button);

		slot2Box = new FlxSprite();
		slot2Box.makeGraphic(Math.round(box.width), Math.round(box.height / 8), FlxColor.fromString("#0F0F0F"));
		slot2Box.screenCenter(X);
		slot2Box.y = box.y + (box.height / 8);
		slot2Label = new FlxText(0, 0, 0, "Slot 2 (empty)").setFormat("res/assets/fonts/EightBitDragon.ttf", 32);
		slot2Label.setPosition(slot2Box.x, slot2Box.y);
		slot2Size = new FlxText(0, 0, 0, "Size: 0 MB").setFormat("res/assets/fonts/EightBitDragon.ttf", 24);
		slot2Size.setPosition(slot2Box.x, slot2Box.y + (slot2Box.height - slot2Size.height));
		slot2Button = new FlxButton(0, 0, "Load", function() {slot1play(); });
		slot2Button.setPosition(slot2Box.x + (slot2Box.width - slot2Size.width), slot2Box.x);
		add(slot2Box);
		add(slot2Label);
		add(slot2Size);
		add(slot2Button);

		slot3Box = new FlxSprite();
		slot3Box.makeGraphic(Math.round(box.width), Math.round(box.height / 8), FlxColor.fromString("#0F0F0F"));
		slot3Box.screenCenter(X);
		slot3Box.y = box.y + (2 * (box.height / 8));
		slot3Label = new FlxText(0, 0, 0, "Slot 3 (empty)").setFormat("res/assets/fonts/EightBitDragon.ttf", 32);
		slot3Label.setPosition(slot3Box.x, slot3Box.y);
		slot3Size = new FlxText(0, 0, 0, "Size: 0 MB").setFormat("res/assets/fonts/EightBitDragon.ttf", 24);
		slot3Size.setPosition(slot3Box.x, slot3Box.y + (slot3Box.height - slot3Size.height));
		slot3Button = new FlxButton(0, 0, "Load", function() {slot1play(); });
		slot3Button.setPosition(slot3Box.x + (slot3Box.width - slot3Size.width), slot3Box.x);
		add(slot3Box);
		add(slot3Label);
		add(slot3Size);
		add(slot3Button);
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

	public static function slot1play()
	{
		WorldManager.loadSlot(0);
	}
	public static function slot2play()
	{
		WorldManager.loadSlot(1);
	}
	public static function slot3play()
	{
		WorldManager.loadSlot(2);
	}
	public static function slot4play()
	{
		WorldManager.loadSlot(3);
	}
	public static function slot5play()
	{
		WorldManager.loadSlot(4);
	}
	public static function slot6play()
	{
		WorldManager.loadSlot(5);
	}
	public static function slot7play()
	{
		WorldManager.loadSlot(6);
	}
	public static function slot8play()
	{
		WorldManager.loadSlot(7);
	}
}
