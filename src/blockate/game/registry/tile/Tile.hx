package blockate.game.registry.tile;

import blockate.game.registry.RegistryBase;
import blockate.game.util.TileType;
import flixel.system.FlxAssets;

/**
 * @author SidGames5
 */
interface Tile extends RegistryBase
{
	/*
	 * The texture of the tile.
	 * type: FlxGraphicAsset
	 */
	public var texture:String;

	public var type:TileType;
}