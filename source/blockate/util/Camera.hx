package blockate.util;

import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxObject;
import lime.system.System;

class Camera
{
	public static var wWidth = FlxG.width;
	public static var wHeight = FlxG.height;
	public static var camera = FlxG.camera;

	public static function getCamera():FlxCamera
	{
		return camera;
	}

	public static function reset()
	{
		camera.x = 0;
		camera.y = 0;
	}

	public static function centerOnObject(object:FlxObject)
	{
		camera.x = (wWidth / 2) + object.x;
		camera.y = (wHeight / 2) + object.y;
	}
}
