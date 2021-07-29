package blockate.util;

import blockate.util.World.Worlds;
import flixel.FlxSprite;

using blockate.Resources;

class Player
{
	public static var posX:Int = 0;
	public static var posY:Int = 0;
	/*
		1 - Forward
		2 - Backward
		3 - Right
		4 - Left
	 */
	public static var facing:Int = 1;

	public static var world:Worlds;
	public static var playerIn:FlxSprite = new FlxSprite();

	public static function getInstance():FlxSprite
	{
		return playerIn;
	}

	public static function setPos(fPosX:Int, fPosY:Int, fWorldIn:Worlds, fFacing:Int)
	{
		posX = fPosX;
		posY = fPosY;
		world = fWorldIn;
		facing = fFacing;
	}

	public static function init()
	{
		playerIn.loadGraphic(Assets.entity_playerDefault1__png);
	}

	public static function update()
	{
		playerIn.x = posX;
		playerIn.y = posY;

		switch (facing)
		{
			case 1:
				playerIn.loadGraphic(Assets.entity_playerDefault1__png);
			case 2:
				playerIn.loadGraphic(Assets.entity_playerDefault1__png);
			case 3:
				playerIn.loadGraphic(Assets.entity_playerDefault1__png);
			case 4:
				playerIn.loadGraphic(Assets.entity_playerDefault1__png);
		}
	}

	public static function recenterCamera()
	{
		Camera.centerOnObject(playerIn);
	}
}
