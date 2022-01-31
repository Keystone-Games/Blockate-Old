package blockate.game.util.image;

class ImageHandler {
  function readPixels(file:String):{data:Bytes, width:Int, height:Int} {
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
}
