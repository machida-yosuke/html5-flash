package  src.view.container{
  import flash.display.*;
  import flash.net.*;
  import flash.events.*;
  import src.*;
  import src.view.container.*;

  public class Background extends Sprite{
    public function Background() {
      var path = 'img/background.png';
      var urlReq:URLRequest=new URLRequest(path);
      var ld:Loader = new Loader();
      ld.load(urlReq);
      x=-433;
      y=-13;
      addChild(ld);
		}
	}
}
