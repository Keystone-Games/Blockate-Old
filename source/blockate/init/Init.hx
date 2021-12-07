package blockate.init;

class Init {
  public static function preInit(PreInitialisationArgs:Array<Dynamic>) {
    init(PreInitialisationArgs);
  }
  
  public static function init(InitialisationArgs:Array<Dynamic>) {
    postInit(InitialisationArgs);
  }
  
  public static function postInit(PostInitialisationArgs:Array<Dynamic>) {}
}
