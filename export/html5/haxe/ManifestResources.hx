package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_eightbitdragon_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_perfect_dos_vga_437_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":null,"assets":"aoy4:pathy34:assets%2Fdata%2Fdata-goes-here.txty4:sizezy4:typey4:TEXTy2:idR1y7:preloadtgoR2i32864R3y4:FONTy9:classNamey40:__ASSET__assets_fonts_eightbitdragon_ttfR5y35:assets%2Ffonts%2FEightBitDragon.ttfR6tgoR2i81192R3R7R8y45:__ASSET__assets_fonts_perfect_dos_vga_437_ttfR5y46:assets%2Ffonts%2FPerfect%20DOS%20VGA%20437.ttfR6tgoR0y32:assets%2Fimages%2FExitButton.pngR2i1301R3y5:IMAGER5R13R6tgoR0y35:assets%2Fimages%2FFriendsButton.pngR2i1619R3R14R5R15R6tgoR0y36:assets%2Fimages%2Fimages-go-here.txtR2zR3R4R5R16R6tgoR0y35:assets%2Fimages%2FProfileButton.pngR2i1422R3R14R5R17R6tgoR0y34:assets%2Fimages%2FWorldsButton.pngR2i1634R3R14R5R18R6tgoR0y36:assets%2Fmusic%2Fmusic-goes-here.txtR2zR3R4R5R19R6tgoR0y36:assets%2Fsounds%2Fsounds-go-here.txtR2zR3R4R5R20R6tgoR2i2114R3y5:MUSICR5y26:flixel%2Fsounds%2Fbeep.mp3y9:pathGroupaR22y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R21R5y28:flixel%2Fsounds%2Fflixel.mp3R23aR25y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3y5:SOUNDR5R24R23aR22R24hgoR2i33629R3R27R5R26R23aR25R26hgoR2i15744R3R7R8y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R7R8y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R14R5R32R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R14R5R33R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_eightbitdragon_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_perfect_dos_vga_437_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_exitbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_friendsbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_profilebutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_worldsbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/EightBitDragon.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_eightbitdragon_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/Perfect DOS VGA 437.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_perfect_dos_vga_437_ttf extends lime.text.Font {}
@:keep @:image("assets/images/ExitButton.png") @:noCompletion #if display private #end class __ASSET__assets_images_exitbutton_png extends lime.graphics.Image {}
@:keep @:image("assets/images/FriendsButton.png") @:noCompletion #if display private #end class __ASSET__assets_images_friendsbutton_png extends lime.graphics.Image {}
@:keep @:file("assets/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/ProfileButton.png") @:noCompletion #if display private #end class __ASSET__assets_images_profilebutton_png extends lime.graphics.Image {}
@:keep @:image("assets/images/WorldsButton.png") @:noCompletion #if display private #end class __ASSET__assets_images_worldsbutton_png extends lime.graphics.Image {}
@:keep @:file("assets/music/music-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_eightbitdragon_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_eightbitdragon_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/EightBitDragon"; #else ascender = 3686; descender = -409; height = 4095; numGlyphs = 346; underlinePosition = 307; underlineThickness = 204; unitsPerEM = 4096; #end name = "Eight Bit Dragon"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_perfect_dos_vga_437_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_perfect_dos_vga_437_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/Perfect DOS VGA 437"; #else ascender = 3072; descender = -1024; height = 4096; numGlyphs = 256; underlinePosition = -256; underlineThickness = 256; unitsPerEM = 4096; #end name = "Perfect DOS VGA 437"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_eightbitdragon_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_eightbitdragon_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_eightbitdragon_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_perfect_dos_vga_437_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_perfect_dos_vga_437_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_perfect_dos_vga_437_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_eightbitdragon_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_eightbitdragon_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_eightbitdragon_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_perfect_dos_vga_437_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_perfect_dos_vga_437_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_perfect_dos_vga_437_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
