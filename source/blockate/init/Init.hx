package blockate.init;

class Init {
  public static function preInit(PreInitialisationArgs:Array<Dynamic>) {
    trace("Pre-initialising with args: " + PreInitialisationArgs);
    init(PreInitialisationArgs);
  }
  
  public static function init(InitialisationArgs:Array<Dynamic>) {
    postInit(InitialisationArgs);
  }
  
  public static function postInit(PostInitialisationArgs:Array<Dynamic>) {}
}
