package blockate.game.ui.states;

class Menu extends KFBaseState {
  public var backgroundImage:FlxSprite;
  public var mainText:FlxText;
  public var htp:FlxButton;
  public var playButton:FlxSprite;
  
  public override function create() {
    super.create();
    
    mainText = new FlxText(0, 0, 0, "Blockate").setFormat("monsterrat", 32, FlxColor.WHITE, CENTER);
    mainText.screenCenter(X);
    add(mainText);
  }
  
  public override function update(dt:Float) {
    super.update(dt);
  }
}
