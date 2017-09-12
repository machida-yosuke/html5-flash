package  src.view.container{
  import flash.display.*;
  import flash.net.*;
  import flash.events.*;
  import src.*;
  import src.view.container.*;
  public class Containershadow extends Sprite{
    public function Containershadow() {
      graphics.drawRect(0, 0, 1054, 1054);
      var path = 'img/shadow.png';
      var urlReq:URLRequest=new URLRequest(path);
      var ld:Loader = new Loader();
      ld.load(urlReq);

      addChild(ld);
    }
	}
}
