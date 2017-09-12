package  src.view.container{
  import flash.display.*;
  import flash.net.*;
  import flash.events.*;
  import src.*;
  import src.view.container.*;

  public class Prev extends Sprite{
    public function Prev() {
      graphics.drawRect(0, 0, 30, 28);
      var path = 'img/prev.png';
      var urlReq:URLRequest=new URLRequest(path);
      var ld:Loader = new Loader();
      ld.load(urlReq);
      x=122;
      y=27;
      addChild(ld);
		}
	}
}
