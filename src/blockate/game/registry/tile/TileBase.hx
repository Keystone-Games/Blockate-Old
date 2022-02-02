package blockate.game.registry.tile;

import blockate.game.util.TileType;
import flixel.system.FlxAssets;

/**
 * @author SidGames5
 */
interface TileBase
{
	/*
	 * The texture of the tile.
	 * type: FlxGraphicAsset
	 */
	public var texture:String;

	public var type:TileType;
}