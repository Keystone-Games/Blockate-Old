package blockate.game.registry;

class Registry
{
	public static var items = {};

	public static final ITEM:String = "item";
	public static final TILE:String = "tile";

	public static function register(args:{number:Int,meta:Int,id:Identifier,defenition:RegistryBase,type:String})
	{
		switch (args.type)
		{
			case "item":
				items[Std.string(args.number) + ":" + Std.string(args.meta)] =
				{
					id: args.id,
					item: args.defenition
				};
				break;
				
			case "tile":
				tile[Std.string(args.number) + ":" + Std.string(args.meta)] =
				{
					id: args.id,
					tile: args.defenition
				};
				break;
		}
	}
}
