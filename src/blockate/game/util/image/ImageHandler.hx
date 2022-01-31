package blockate.game.util.image;

class ImageHandler {
  public static function readPixels(file:String):{data:Bytes, width:Int, height:Int} {
    var handle = sys.io.File.read(file, true);
    var d = new format.png.Reader(handle).read();
    var hdr = format.png.Tools.getHeader(d);
    var ret = {
        data:format.png.Tools.extract32(d),
        width:hdr.width,
        height:hdr.height
    };
    handle.close();
    return ret;
  }
  
  public static function getARGB(file:String, posX:Int, posY:Int):{a:Int, r:Int, g:Int, b:Int} {
    var filename = file;
    var pixels = readPixels(filename);
    var p = pixels.data.getInt32(4*(posX+posY*pixels.width));
    // ARGB, each 0-255
    var a:Int = p>>>24;
    var r:Int = (p>>>16)&0xff;
    var g:Int = (p>>>8)&0xff;
    var b:Int = (p)&0xff;
    return {a,r,g,b};
            
    var hex:String = StringTools.hex(p,8);
  }
      
      public static function getHex(file:String, posX:Int, posY:Int):String {
        var pixel = readPixels(file);
        var p = pixels.data.getInt32(4*(posX+posY*pixels.width));
        var hex:String = StringTools.hex(p,8);
        return hex;
      }
}
