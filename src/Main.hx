
import h2d.Tile;
import h2d.Bitmap;
import hxd.App;

class Main extends App {
	var backgroundBMP:Bitmap;

	override function init() {
		var background = Tile.fromColor(0x333333, 1920, 1080);
		backgroundBMP = new Bitmap(background, s2d);
		backgroundBMP.x = 0;
		backgroundBMP.y = 0;
	}

	// on each frame
	override function update(dt:Float) {
	}

	static function main() {
		new Main();
	}
}
