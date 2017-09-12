package  src.view.container{
  import flash.display.*;
  import flash.net.*;
  import flash.events.*;
  import src.*;
  import src.view.container.*;
  public class Next extends Sprite{
    public function Next() {
      graphics.drawRect(0, 0, 30, 28);
      var path = 'img/next.png';
      var urlReq:URLRequest=new URLRequest(path);
      var ld:Loader = new Loader();
      ld.load(urlReq);
      x=155;
      y=27;
      addChild(ld);
		}
	}
}
