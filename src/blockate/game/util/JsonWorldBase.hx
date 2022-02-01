package blockate.game.util;

typedef World =
{
	/*
		the metadata array is made up of 3 integer values
		the first value is for the world size
		0 - small world (256x256)
		1 - normal world (512x512) default
		2 - large world (1024x1024)

		the second value is for world type
		0 - flat world (no height map) default
		1 - normal world (standard height map)
		2 - mountainous world (intense height map + increased world size)

		the third value is for whether to generate foliage
		this is a boolean value expressed in an integer
	 */
	var metadata:Array<Int>;

	/*
	 * var player:{"player0":{pos:Array<Int>,inv:[]}};
	 */
	var player:{};
	
	var map:{[[[]]]};
}
