package blockate.init;

class Init {
  public static function preInit(PreInitialisationArgs:Array<Dynamic>) {
    trace("Pre-initialising with args: " + PreInitialisationArgs);
    init(PreInitialisationArgs);
  }
  
  public static function init(InitialisationArgs:Array<Dynamic>) {
    postInit(InitialisationArgs);
  }
  
  public static function postInit(PostInitialisationArgs:Array<Dynamic>) {
    Lib.current.addChild(new FlxGame(0, 0, Reference.InitialState, 1, Reference.CFR, Refetence.CFR, true, Reference.FULLSCREEN));
  }
}
