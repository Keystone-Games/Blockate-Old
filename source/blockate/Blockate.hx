package blockate;

import blockate.util.Camera;
import blockate.util.Player;
import blockate.util.World;

class Blockate
{
	public static function getBlockate():Class<Blockate>
	{
		return Blockate;
	}

	public static function getPlayer():Class<Player>
	{
		return Player;
	}

	public static function getWorld():Class<World>
	{
		return World;
	}

	public static function getCamera():Class<Camera>
	{
		return Camera;
	}
}
