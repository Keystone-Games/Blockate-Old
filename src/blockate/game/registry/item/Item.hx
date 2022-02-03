package blockate.game.registry.item;
import blockate.game.registry.RegistryBase;
import blockate.game.util.ItemType;

interface Item extends RegistryBase {
  /*
	 * The texture of the tile.
	 * type: FlxGraphicAsset
	 */
	public var texture:String;

	public var type:ItemType;
}
