package  src.view.container{
  import flash.display.*;
  import flash.net.*;
  import flash.events.*;
  import src.*;
  import src.view.container.*;

  public class Header extends Sprite{

    public function Header() {
      graphics.drawRect(0, 0, 1000, 47);
      var path = 'img/header.png';
      var urlReq:URLRequest=new URLRequest(path);
      var ld:Loader = new Loader();
      ld.load(urlReq);
      x=27;
      y=17;
      addChild(ld);
		}
	}
}
