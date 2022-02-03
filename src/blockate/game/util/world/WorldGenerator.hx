package blockate.game.util.world;

import Random;

/**
 * ...
 * @author SidGames5
 */
class WorldGenerator
{

	public static var heightMap = {};
	public static var noiseMap = {};
	public static var foliageMap = {};

	public function new()
	{

	}

	public static function generateHeightMap(maxX:Int, maxY:Int, maxZ:Int, intensity:Int)
	{
		for (x in 0...maxX)
		{
			for (y in 0...maxY)
			{
				var h = Random.int(intensity, maxZ);
				heightMap.map[x][y] = h;
			}
		}
		return heightMap;
	}

	public static function generateNoiseMap()
	{
		return noiseMap;
	}

	public static function generateFoliageMap()
	{
		return noiseMap;
	}

}