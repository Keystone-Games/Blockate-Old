package kglog;

import kglog.util.Reference;
import lime.system.System;

class Main
{
	static public function main():Void
	{
		trace("Starting KGLog " + Reference.VERSION);
		#if sys
		init();
		#end
	}

	#if sys
	public static function init()
	{
		Logger.config(System.applicationStorageDirectory);
		postInit();
	}
	#end

	#if sys
	public static function postInit()
	{
		Console.log("<red>  _  __    ___     _               __ _  </red>");
		Console.log("<orange> | |/ /   / __|   | |      ___    / _` | </orange>");
		Console.log("<yellow> | ' <   | (_ |   | |__   / _ \\   \\__, | </yellow>");
		Console.log("<green> |_|\\_\\   \\___|   |____|  \\___/   |___/  </green>");
		trace("KGLog version " + Reference.VERSION + " has been loaded");
	}
	#end

	#if sys
	public static function end()
	{
		trace("Stopping KGLog");

		var p = Path.join([Logger.logDir, Logger.logFile]);
		File.saveContent(p, Logger.sessionLog);

		trace("Logs saved");
	}
	#end
}
