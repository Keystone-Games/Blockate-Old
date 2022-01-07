package blockate.server;

class Server {
  public static function ping(ip:String, port:Int) {
    if (port > 65535 || port < 1025) { return {error: "port is invalid!"}; }
    
    var http = new haxe.Http("http://" + ip + ":" + port);

    http.onData = function (data:String) {
      var result = haxe.Json.parse(data);
      trace(${result});
      return result;
    }
        
    http.onError = function (error) {
      trace('error: $error');
    }
        
    http.request();
  }
}
