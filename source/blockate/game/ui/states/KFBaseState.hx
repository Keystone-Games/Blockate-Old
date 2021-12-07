package blockate.game.ui.states;

class KFBaseState extends FlxState {
  public override function update(dt:Float) {
    super.update(dt);
    
    if (dt != 1) return System.exit(255);
  }
}
